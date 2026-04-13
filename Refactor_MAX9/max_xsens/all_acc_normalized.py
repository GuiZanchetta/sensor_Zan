"""
Xsens DOT BLE -> OSC streaming server with normalization and analytics.

Usage examples:
  # 3 sensors (first 3 from default list), tanh normalization, acc + gyro
  python all_acc_normalized.py --num-sensors 3 --norm tanh --channels acc,gyro

  # Auto-discover sensors, stream all channels
  python all_acc_normalized.py --auto-discover --channels acc,gyro,quat,euler

  # Explicit addresses, z-score normalization, battery every 30 s
  python all_acc_normalized.py --addresses d4:22:cd:00:a6:83,d4:22:cd:00:a5:66 \
      --norm zscore --channels acc,gyro --battery-interval 30

OSC output per sensor (sensor_id starts at 1):
  /sensor_N/acc        [x, y, z]  normalised free acceleration
  /sensor_N/x, /y, /z  individual axes (backwards-compatible)
  /sensor_N/gyro       [gx, gy, gz]  raw gyroscope (dps)
  /sensor_N/gyro_norm  [gx, gy, gz]  normalised gyroscope
  /sensor_N/quat       [w, x, y, z]  quaternion
  /sensor_N/euler      [roll, pitch, yaw]  degrees
  /sensor_N/acc_earth  [ax, ay, az]  earth-frame accel (pre-gravity removal)
  /sensor_N/free_earth [ax, ay, az]  earth-frame free accel
  /sensor_N/timestamp_us  raw timestamp (us)
  /sensor_N/rate       current sample rate in Hz  (always sent)
  /sensor_N/battery    [level_pct, is_charging]   (always polled)
"""

import argparse
import asyncio
import math
import time

import numpy as np
from bleak import BleakClient, BleakScanner
from pythonosc import udp_client

# ── Default sensor addresses (edit to match your hardware) ───────────────────
DEFAULT_ADDRESSES = [
    "d4:22:cd:00:a6:83",
    "d4:22:cd:00:a5:66",
    "d4:22:cd:00:9f:ba",
    "d4:22:cd:00:9f:ee",
    "d4:22:cd:00:9b:2b",
]

# ── BLE characteristic UUIDs (Xsens DOT BLE spec) ───────────────────────────
MEASUREMENT_CONTROL_UUID = "15172001-4947-11e9-8646-d663bd873d93"
LONG_PAYLOAD_UUID        = "15172002-4947-11e9-8646-d663bd873d93"
ORIENTATION_RESET_UUID   = "15172006-4947-11e9-8646-d663bd873d93"
BATTERY_UUID             = "15173001-4947-11e9-8646-d663bd873d93"

# Custom Mode 5 (payload code 26): timestamp(4) + quat(16) + accel(12) + gyro(12) = 44 bytes
PAYLOAD_MODE_CUSTOM5 = 26

# ── Physical ranges for linear normalisation ─────────────────────────────────
ACC_MIN, ACC_MAX  = -20.0,  20.0   # m/s²  free acceleration
GYR_MIN, GYR_MAX = -500.0, 500.0  # dps   gyroscope

# tanh soft-saturation scale (tune to typical motion magnitude)
ACC_TANH_SCALE = 10.0
GYR_TANH_SCALE = 250.0

# EMA alpha for running z-score (smaller = slower adaptation)
ZSCORE_ALPHA = 0.01

# How often to print / send rate analytics (seconds)
RATE_INTERVAL = 2.0

# ── Custom-5 payload numpy dtype ─────────────────────────────────────────────
CUSTOM5_DTYPE = np.dtype([
    ("timestamp_us", "<u4"),
    ("qw", "<f4"), ("qx", "<f4"), ("qy", "<f4"), ("qz", "<f4"),
    ("ax",  "<f4"), ("ay",  "<f4"), ("az",  "<f4"),
    ("gx",  "<f4"), ("gy",  "<f4"), ("gz",  "<f4"),
])
CUSTOM5_SIZE = CUSTOM5_DTYPE.itemsize  # 44 bytes


# ── Normalisation ─────────────────────────────────────────────────────────────

def norm_linear(value: float, vmin: float, vmax: float) -> float:
    """Clip to [vmin, vmax] then linearly map to [-1, 1]."""
    if vmax == vmin:
        return 0.0
    clipped = max(vmin, min(vmax, value))
    return clipped / ((vmax - vmin) / 2.0) - (vmin + vmax) / (vmax - vmin)


def norm_tanh(value: float, scale: float) -> float:
    """Soft saturation: tanh(value / scale) in [-1, 1], never hard-clips."""
    return float(math.tanh(value / scale))


class ZScoreNorm:
    """
    Running z-score normalisation using exponential moving averages.
    Output is further passed through tanh to keep it bounded in [-1, 1].
    Adapts to the signal distribution over time (alpha controls speed).
    """
    def __init__(self, alpha: float = ZSCORE_ALPHA):
        self.alpha = alpha
        self.mean  = 0.0
        self.var   = 1.0
        self._init = False

    def __call__(self, value: float) -> float:
        if not self._init:
            self.mean = value
            self._init = True
        diff = value - self.mean
        self.mean += self.alpha * diff
        self.var   = (1 - self.alpha) * self.var + self.alpha * diff * diff
        std = math.sqrt(max(self.var, 1e-8))
        return float(math.tanh(diff / (3.0 * std)))


# ── Quaternion math ───────────────────────────────────────────────────────────

def quat_to_rotmat(q: np.ndarray) -> np.ndarray:
    """q = [w, x, y, z] → 3×3 rotation matrix (sensor → earth)."""
    w, x, y, z = q
    return np.array([
        [1 - 2*(y*y + z*z),  2*(x*y - w*z),      2*(x*z + w*y)    ],
        [2*(x*y + w*z),       1 - 2*(x*x + z*z),  2*(y*z - w*x)    ],
        [2*(x*z - w*y),       2*(y*z + w*x),       1 - 2*(x*x + y*y)],
    ], dtype=np.float32)


def quat_to_euler_deg(q: np.ndarray):
    """q = [w, x, y, z] → (roll, pitch, yaw) in degrees."""
    w, x, y, z = q
    roll  = math.degrees(math.atan2(2*(w*x + y*z), 1 - 2*(x*x + y*y)))
    sinp  = max(-1.0, min(1.0, 2*(w*y - z*x)))
    pitch = math.degrees(math.asin(sinp))
    yaw   = math.degrees(math.atan2(2*(w*z + x*y), 1 - 2*(y*y + z*z)))
    return roll, pitch, yaw


# ── Payload parser ────────────────────────────────────────────────────────────

def parse_custom5(data: bytes):
    """Return dict of fields or None on malformed packet."""
    if len(data) < CUSTOM5_SIZE:
        print(f"  [WARN] short packet: {len(data)} < {CUSTOM5_SIZE} bytes, dropped")
        return None
    arr = np.frombuffer(data[:CUSTOM5_SIZE], dtype=CUSTOM5_DTYPE)
    if arr.size == 0:
        return None
    rec = arr[0]
    return {name: rec[name].item() for name in CUSTOM5_DTYPE.names}


# ── Per-sensor state ──────────────────────────────────────────────────────────

class SensorState:
    """Holds all mutable per-sensor state (calibration, normalisation, rate)."""

    def __init__(self, sensor_id: int, norm_type: str, channels: set,
                 osc: udp_client.SimpleUDPClient, battery_interval: float):
        self.sensor_id       = sensor_id
        self.norm_type       = norm_type
        self.channels        = channels
        self.osc             = osc
        self.battery_interval = battery_interval

        # Gravity calibration
        self.gravity_est: np.ndarray | None = None
        self.calib_samples: list             = []
        self.calib_t0: float | None          = None

        # Sample-rate tracking
        self.sample_count = 0
        self.rate_t0      = time.monotonic()
        self.current_rate = 0.0

        # Z-score normalisers (one per axis)
        self.zscore_acc = [ZScoreNorm() for _ in range(3)]
        self.zscore_gyr = [ZScoreNorm() for _ in range(3)]

    # ── normalisation helpers ────────────────────────────────────────────────

    def _norm_vec(self, vec, vmin, vmax, tanh_scale, zscore_norms):
        if self.norm_type == "tanh":
            return [norm_tanh(float(v), tanh_scale) for v in vec]
        if self.norm_type == "zscore":
            return [zscore_norms[i](float(v)) for i, v in enumerate(vec)]
        # linear (default)
        return [norm_linear(float(v), vmin, vmax) for v in vec]

    # ── analytics ────────────────────────────────────────────────────────────

    def tick_rate(self):
        """Call once per received packet. Sends OSC every RATE_INTERVAL seconds."""
        self.sample_count += 1
        now = time.monotonic()
        elapsed = now - self.rate_t0
        if elapsed >= RATE_INTERVAL:
            self.current_rate = self.sample_count / elapsed
            print(f"  Sensor {self.sensor_id}: {self.current_rate:.1f} Hz")
            self.osc.send_message(f"/sensor_{self.sensor_id}/rate",
                                  float(self.current_rate))
            self.rate_t0      = now
            self.sample_count = 0

    # ── gravity calibration ──────────────────────────────────────────────────

    def update_gravity(self, accel_earth: np.ndarray, calib_seconds: float):
        now = time.monotonic()
        if self.calib_t0 is None:
            self.calib_t0 = now
            print(f"  Sensor {self.sensor_id}: gravity calibration started "
                  f"({calib_seconds}s — keep still)")
        if self.gravity_est is not None:
            return  # already done
        self.calib_samples.append(accel_earth.copy())
        if (now - self.calib_t0) >= calib_seconds and self.calib_samples:
            g = np.mean(np.stack(self.calib_samples), axis=0).astype(np.float32)
            self.gravity_est = g
            mag = float(np.linalg.norm(g))
            print(f"  Sensor {self.sensor_id}: gravity calibrated "
                  f"[{g[0]:.3f}, {g[1]:.3f}, {g[2]:.3f}] |g|={mag:.3f} m/s²")

    # ── main packet handler (called from BLE notify callback) ────────────────

    def handle_packet(self, pkt: dict, calib_seconds: float,
                      quat_is_sensor_to_earth: bool):
        self.tick_rate()

        q       = np.array([pkt["qw"], pkt["qx"], pkt["qy"], pkt["qz"]], dtype=np.float32)
        acc_s   = np.array([pkt["ax"], pkt["ay"], pkt["az"]],            dtype=np.float32)
        gyr_s   = np.array([pkt["gx"], pkt["gy"], pkt["gz"]],            dtype=np.float32)

        # Rotate acceleration from sensor frame to earth frame
        R = quat_to_rotmat(q)
        acc_earth = (R @ acc_s) if quat_is_sensor_to_earth else (R.T @ acc_s)

        # Gravity calibration + removal
        self.update_gravity(acc_earth, calib_seconds)
        if self.gravity_est is not None:
            free_earth = acc_earth - self.gravity_est
        else:
            free_earth = acc_earth  # still in calibration window

        sid = self.sensor_id

        # ── OSC outputs ──────────────────────────────────────────────────────

        if "acc" in self.channels:
            norm = self._norm_vec(free_earth, ACC_MIN, ACC_MAX,
                                  ACC_TANH_SCALE, self.zscore_acc)
            self.osc.send_message(f"/sensor_{sid}/acc",
                                  [float(v) for v in norm])
            # Individual axes kept for backwards-compatibility
            self.osc.send_message(f"/sensor_{sid}/x", float(norm[0]))
            self.osc.send_message(f"/sensor_{sid}/y", float(norm[1]))
            self.osc.send_message(f"/sensor_{sid}/z", float(norm[2]))

        if "gyro" in self.channels:
            norm_g = self._norm_vec(gyr_s, GYR_MIN, GYR_MAX,
                                    GYR_TANH_SCALE, self.zscore_gyr)
            self.osc.send_message(f"/sensor_{sid}/gyro",
                                  [float(gyr_s[0]), float(gyr_s[1]), float(gyr_s[2])])
            self.osc.send_message(f"/sensor_{sid}/gyro_norm",
                                  [float(v) for v in norm_g])

        if "quat" in self.channels:
            self.osc.send_message(f"/sensor_{sid}/quat",
                                  [float(q[0]), float(q[1]),
                                   float(q[2]), float(q[3])])

        if "euler" in self.channels:
            roll, pitch, yaw = quat_to_euler_deg(q)
            self.osc.send_message(f"/sensor_{sid}/euler",
                                  [roll, pitch, yaw])

        if "raw_acc" in self.channels:
            self.osc.send_message(
                f"/sensor_{sid}/acc_earth",
                [float(acc_earth[0]), float(acc_earth[1]), float(acc_earth[2])])
            self.osc.send_message(
                f"/sensor_{sid}/free_earth",
                [float(free_earth[0]), float(free_earth[1]), float(free_earth[2])])

        if "timestamp" in self.channels:
            self.osc.send_message(f"/sensor_{sid}/timestamp_us",
                                  int(pkt["timestamp_us"]))


# ── Battery monitor ───────────────────────────────────────────────────────────

async def battery_monitor(ble_client: BleakClient, sensor_id: int,
                           osc: udp_client.SimpleUDPClient, interval: float):
    """Periodically reads battery level and sends it via OSC."""
    # Initial delay so we don't race BLE characteristic discovery on connect
    await asyncio.sleep(2.0)
    while True:
        try:
            data = await ble_client.read_gatt_char(BATTERY_UUID)
            level    = int(data[0])                        # 0–100 %
            charging = int(data[1]) if len(data) > 1 else 0  # 1 = charging
            status   = "charging" if charging else "not charging"
            print(f"  Sensor {sensor_id} battery: {level}% ({status})")
            osc.send_message(f"/sensor_{sensor_id}/battery", [level, charging])
        except asyncio.CancelledError:
            return
        except Exception as exc:
            print(f"  Sensor {sensor_id} battery read error: {exc}")
        await asyncio.sleep(interval)


# ── Heading reset helper ──────────────────────────────────────────────────────

async def maybe_reset_heading(ble_client: BleakClient, do_reset: bool):
    if not do_reset:
        return
    # 0x0001 = reset heading; 0x0007 = revert (needed before next reset)
    await ble_client.write_gatt_char(
        ORIENTATION_RESET_UUID, b"\x01\x00", response=True)
    print("  Heading reset requested.")


# ── Per-sensor streaming coroutine ────────────────────────────────────────────

async def run_sensor(address: str, sensor_id: int, *, state: SensorState,
                     calib_seconds: float, quat_is_sensor_to_earth: bool,
                     reset_heading: bool, stop_event: asyncio.Event):
    print(f"\n[{sensor_id}] Searching for {address} ...")
    try:
        device = await BleakScanner.find_device_by_address(address, timeout=20.0)
    except Exception as exc:
        print(f"[{sensor_id}] BLE scan error: {exc}")
        return

    if device is None:
        print(f"[{sensor_id}] Device not found: {address}")
        return

    try:
        async with BleakClient(device) as client:
            print(f"[{sensor_id}] Connected to {address}")

            # Sync notification callback — keeps asyncio overhead minimal
            def on_notify(sender, data: bytes):
                pkt = parse_custom5(data)
                if pkt is not None:
                    state.handle_packet(pkt, calib_seconds, quat_is_sensor_to_earth)

            await client.start_notify(LONG_PAYLOAD_UUID, on_notify)

            # Start measurement: [type=1, action=1, mode=26]
            await client.write_gatt_char(
                MEASUREMENT_CONTROL_UUID,
                bytes([1, 1, PAYLOAD_MODE_CUSTOM5]),
                response=True,
            )
            print(f"[{sensor_id}] Streaming started (Custom Mode 5 / payload 26).")

            await maybe_reset_heading(client, reset_heading)

            # Battery monitor runs as a background task inside the BLE connection
            batt_task = asyncio.create_task(
                battery_monitor(client, sensor_id, state.osc, state.battery_interval)
            )

            try:
                await stop_event.wait()
            finally:
                batt_task.cancel()
                await asyncio.gather(batt_task, return_exceptions=True)

    except asyncio.CancelledError:
        pass  # graceful shutdown
    except Exception as exc:
        print(f"[{sensor_id}] Connection error: {exc}")

    print(f"[{sensor_id}] Disconnected from {address}.")


# ── Auto-discovery ────────────────────────────────────────────────────────────

async def discover_sensors(num_sensors: int, scan_timeout: float = 15.0) -> list[str]:
    print(f"\nScanning for up to {num_sensors} Xsens DOT sensors "
          f"({scan_timeout}s — make sure they are on and advertising) ...")
    found: list[str] = []
    try:
        devices = await BleakScanner.discover(timeout=scan_timeout)
    except Exception as exc:
        print(f"BLE scan failed: {exc}")
        return found

    for d in devices:
        name = d.name or ""
        if any(kw in name for kw in ("Xsens", "DOT", "MT")):
            found.append(d.address)
            print(f"  Found: {name!r} @ {d.address}")
            if len(found) >= num_sensors:
                break

    if not found:
        print("  No Xsens DOT devices found via scan.")
    return found


# ── Main ──────────────────────────────────────────────────────────────────────

async def main(args):
    # ── resolve addresses ────────────────────────────────────────────────────
    if args.addresses:
        addresses = [a.strip() for a in args.addresses.split(",") if a.strip()]
    elif args.auto_discover:
        addresses = await discover_sensors(args.num_sensors)
        if not addresses:
            print("No sensors found — exiting.")
            return
    else:
        addresses = DEFAULT_ADDRESSES[: args.num_sensors]

    if not addresses:
        print("No addresses specified — exiting.")
        return

    print(f"\nTargeting {len(addresses)} sensor(s):")
    for i, a in enumerate(addresses, 1):
        print(f"  {i}. {a}")

    # ── channel / norm selection ─────────────────────────────────────────────
    channels = {c.strip().lower() for c in args.channels.split(",") if c.strip()}
    valid_channels = {"acc", "gyro", "quat", "euler", "raw_acc", "timestamp"}
    unknown = channels - valid_channels
    if unknown:
        print(f"[WARN] Unknown channels ignored: {unknown}")
        channels -= unknown

    print(f"\nChannels : {sorted(channels)}")
    print(f"Norm type: {args.norm}")
    print(f"Calib    : {args.calib_seconds}s (keep sensors still at start)")
    print(f"Battery  : every {args.battery_interval}s")

    osc = udp_client.SimpleUDPClient(args.ip, args.port)
    print(f"OSC out  : {args.ip}:{args.port}\n")

    stop_event = asyncio.Event()

    tasks = []
    for i, address in enumerate(addresses):
        state = SensorState(
            sensor_id        = i + 1,
            norm_type        = args.norm,
            channels         = channels,
            osc              = osc,
            battery_interval = args.battery_interval,
        )
        tasks.append(asyncio.create_task(
            run_sensor(
                address, i + 1,
                state                  = state,
                calib_seconds          = args.calib_seconds,
                quat_is_sensor_to_earth= not args.quat_earth_to_sensor,
                reset_heading          = args.reset_heading,
                stop_event             = stop_event,
            )
        ))

    print("Streaming — press Ctrl+C to stop.\n")
    try:
        await asyncio.gather(*tasks)
    except (asyncio.CancelledError, KeyboardInterrupt):
        pass
    finally:
        stop_event.set()
        # Give tasks a moment to close BLE connections cleanly
        await asyncio.gather(*tasks, return_exceptions=True)

    print("\nAll sensors disconnected. Goodbye.")


# ── Entry point ───────────────────────────────────────────────────────────────

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Xsens DOT BLE → OSC with flexible normalization and analytics",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Channels (--channels, comma-separated):
  acc        Normalised free-acceleration x/y/z  [default]
  gyro       Raw + normalised gyroscope
  quat       Quaternion w/x/y/z
  euler      Roll, pitch, yaw (degrees, derived from quat)
  raw_acc    Earth-frame accel before/after gravity removal
  timestamp  Raw sensor timestamp in microseconds

  Rate (/sensor_N/rate) and battery (/sensor_N/battery) are ALWAYS sent.

Normalisation types (--norm):
  linear     Clip [ACC_MIN..ACC_MAX] → [-1, 1]          [default]
  tanh       tanh(value / scale)  — soft saturation, never hard-clips
  zscore     Running z-score via EMA, passed through tanh

Examples:
  python all_acc_normalized.py --num-sensors 2 --norm tanh --channels acc,gyro
  python all_acc_normalized.py --auto-discover --channels acc,gyro,quat,euler
  python all_acc_normalized.py --addresses d4:22:cd:00:a6:83,d4:22:cd:00:a5:66 --norm zscore
        """,
    )

    # ── Connection ────────────────────────────────────────────────────────────
    g_conn = parser.add_argument_group("connection")
    g_conn.add_argument("--ip",   default="127.0.0.1",
                        help="OSC destination IP  (default: 127.0.0.1)")
    g_conn.add_argument("--port", type=int, default=5555,
                        help="OSC destination port (default: 5555)")

    g_sens = parser.add_argument_group("sensor selection (mutually exclusive options)")
    g_excl = g_sens.add_mutually_exclusive_group()
    g_excl.add_argument("--num-sensors", type=int, default=5, metavar="N",
                        help="Use first N addresses from the hardcoded list (default: 5)")
    g_excl.add_argument("--addresses", default="", metavar="ADDR1,ADDR2,...",
                        help="Explicit BLE addresses, comma-separated")
    g_excl.add_argument("--auto-discover", action="store_true",
                        help="Scan for Xsens DOT devices automatically")

    # ── Data ──────────────────────────────────────────────────────────────────
    g_data = parser.add_argument_group("data")
    g_data.add_argument("--channels", default="acc",
                        metavar="acc,gyro,...",
                        help="Comma-separated channels to stream (default: acc). "
                             "Rate and battery are always included.")
    g_data.add_argument("--norm", default="linear",
                        choices=["linear", "tanh", "zscore"],
                        help="Normalisation type (default: linear)")

    # ── Calibration ───────────────────────────────────────────────────────────
    g_calib = parser.add_argument_group("calibration")
    g_calib.add_argument("--calib-seconds", type=float, default=2.0,
                         help="Gravity calibration window in seconds — keep sensors still "
                              "at startup (default: 2.0)")
    g_calib.add_argument("--quat-earth-to-sensor", action="store_true",
                         help="Flip quaternion convention: use if quat maps earth→sensor "
                              "instead of sensor→earth")
    g_calib.add_argument("--reset-heading", action="store_true",
                         help="Request heading reset after connecting (aligns multiple sensors)")

    # ── Analytics ─────────────────────────────────────────────────────────────
    g_anal = parser.add_argument_group("analytics")
    g_anal.add_argument("--battery-interval", type=float, default=60.0,
                        help="Seconds between battery reads (default: 60)")

    args = parser.parse_args()

    try:
        asyncio.run(main(args))
    except KeyboardInterrupt:
        print("\nStopped by user.")
