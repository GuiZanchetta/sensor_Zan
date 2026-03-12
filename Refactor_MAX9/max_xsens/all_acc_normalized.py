import argparse
import asyncio
import time  # for sample-rate measurement + calibration window
from functools import partial

import numpy as np
from bleak import BleakClient, BleakScanner
from pythonosc import udp_client

# Sensor addresses
addresses = [
    "d4:22:cd:00:a6:83",
    "d4:22:cd:00:a5:66",
    "d4:22:cd:00:9f:ba",
    "d4:22:cd:00:9f:ee",
    "d4:22:cd:00:9b:2b",
]

# Measurement Service characteristics (UUIDs from Movella DOT BLE spec):
# Control: 0x2001  -> "15172001-..."
# Long payload notify: 0x2002 -> "15172002-..." (payload length > 40 bytes)
# Orientation reset control: 0x2006 -> "15172006-..."
measurement_control_uuid = "15172001-4947-11e9-8646-d663bd873d93"
long_payload_uuid = "15172002-4947-11e9-8646-d663bd873d93"
orientation_reset_control_uuid = "15172006-4947-11e9-8646-d663bd873d93"

# Payload mode:
# 26 = Custom mode 5 (Long payload): Timestamp + Quaternions + Acceleration + Angular velocity
PAYLOAD_MODE_CUSTOM5 = 26

# Expected physical range for free acceleration in m/s^2 (after gravity removal)
ACC_MIN = -20.0
ACC_MAX = 20.0

# Optional: normalize gyro too (dps). Adjust for your use.
GYR_MIN = -500.0
GYR_MAX = 500.0

# --- Sample rate measurement state (per sensor) ---
sample_count = {}
sample_start_time = {}
SAMPLE_RATE_PRINT_INTERVAL = 1.0  # seconds

# --- Gravity calibration state (per sensor) ---
gravity_est = {}  # sensor_id -> np.array([gx,gy,gz]) in "earth" frame (estimated)
calib_samples = {}  # sensor_id -> list of accel_earth samples during calibration window
calib_t0 = {}  # sensor_id -> start time of calibration


def normalize_to_minus1_1(value, vmin, vmax):
    """Linearly map [vmin, vmax] -> [-1, 1], with clipping."""
    if vmax == vmin:
        return 0.0
    value_clipped = max(min(value, vmax), vmin)
    scaled = (value_clipped - vmin) / (vmax - vmin)
    return scaled * 2.0 - 1.0


def update_and_print_sample_rate(sensor_id):
    now = time.time()
    if sensor_id not in sample_start_time:
        sample_start_time[sensor_id] = now
        sample_count[sensor_id] = 0

    sample_count[sensor_id] += 1
    elapsed = now - sample_start_time[sensor_id]

    if elapsed >= SAMPLE_RATE_PRINT_INTERVAL:
        hz = sample_count[sensor_id] / elapsed
        print(f"Sensor {sensor_id} ~ {hz:.1f} Hz")
        sample_start_time[sensor_id] = now
        sample_count[sensor_id] = 0


# ---------------- Quaternion utilities ----------------
# Spec: Quaternion is w,x,y,z (float32).


def quat_to_rotmat_wxyz(q):
    """
    Convert quaternion q=[w,x,y,z] to a 3x3 rotation matrix.
    Standard right-handed quaternion -> rotation matrix.
    """
    w, x, y, z = q
    ww, xx, yy, zz = w * w, x * x, y * y, z * z

    R = np.array(
        [
            [1 - 2 * (yy + zz), 2 * (x * y - w * z), 2 * (x * z + w * y)],
            [2 * (x * y + w * z), 1 - 2 * (xx + zz), 2 * (y * z - w * x)],
            [2 * (x * z - w * y), 2 * (y * z + w * x), 1 - 2 * (xx + yy)],
        ],
        dtype=np.float32,
    )
    return R


def rotate_sensor_to_earth(v_sensor, q_wxyz, quat_is_sensor_to_earth=True):
    """
    Rotate a 3D vector from sensor frame to earth frame using the quaternion.
    If your quaternion convention is inverted, flip quat_is_sensor_to_earth=False
    to use the transpose rotation.
    """
    R = quat_to_rotmat_wxyz(q_wxyz)
    if quat_is_sensor_to_earth:
        return R @ v_sensor
    else:
        # If quaternion maps earth->sensor, invert by transposing R
        return R.T @ v_sensor


# ---------------- Payload parsing ----------------
# Long payload Custom mode 5 total size = 44 bytes: Timestamp + Quaternion + Accel + Gyro
# Fields are float32 for quaternion/accel/gyro; timestamp is uint32 microseconds.

CUSTOM5_DTYPE = np.dtype(
    [
        ("timestamp_us", "<u4"),
        ("qw", "<f4"),
        ("qx", "<f4"),
        ("qy", "<f4"),
        ("qz", "<f4"),
        ("ax", "<f4"),
        ("ay", "<f4"),
        ("az", "<f4"),
        ("gx", "<f4"),
        ("gy", "<f4"),
        ("gz", "<f4"),
    ]
)
CUSTOM5_SIZE = CUSTOM5_DTYPE.itemsize  # 44 bytes


def parse_custom5(data_bytes):
    """
    Parse a Custom 5 payload. Returns a dict with native Python numbers or None if invalid.
    """
    if len(data_bytes) < CUSTOM5_SIZE:
        # Safety guard: ignore malformed / short packets
        print(
            f"Warning: expected {CUSTOM5_SIZE} bytes, got {len(data_bytes)} – packet dropped"
        )
        return None

    core = data_bytes[:CUSTOM5_SIZE]
    arr = np.frombuffer(core, dtype=CUSTOM5_DTYPE)
    if arr.size == 0:
        print("Warning: empty structured array from payload – packet dropped")
        return None

    rec = arr[0]
    return {name: rec[name].item() for name in CUSTOM5_DTYPE.names}


def update_gravity_estimate(sensor_id, accel_earth, calib_seconds):
    """
    Estimate gravity vector from the first `calib_seconds` of accel_earth.
    Assumes sensor is relatively still during that window.
    """
    now = time.time()
    if sensor_id not in calib_t0:
        calib_t0[sensor_id] = now
        calib_samples[sensor_id] = []

    if gravity_est.get(sensor_id) is not None:
        return  # already calibrated

    calib_samples[sensor_id].append(accel_earth)

    if (now - calib_t0[sensor_id]) >= calib_seconds:
        g = np.mean(np.stack(calib_samples[sensor_id], axis=0), axis=0)
        gravity_est[sensor_id] = g.astype(np.float32)
        print(f"Sensor {sensor_id} gravity_est set to {gravity_est[sensor_id]}")


def handle_long_payload_notification(
    sender,
    data,
    sensor_id,
    *,
    calib_seconds,
    quat_is_sensor_to_earth,
    osc_client: udp_client.SimpleUDPClient,
):
    update_and_print_sample_rate(sensor_id)

    pkt = parse_custom5(data)
    if pkt is None:
        return  # malformed packet ignored

    q = np.array([pkt["qw"], pkt["qx"], pkt["qy"], pkt["qz"]], dtype=np.float32)
    acc_sensor = np.array(
        [pkt["ax"], pkt["ay"], pkt["az"]], dtype=np.float32
    )  # m/s^2 (sensor frame)
    gyr_sensor = np.array(
        [pkt["gx"], pkt["gy"], pkt["gz"]], dtype=np.float32
    )  # dps (sensor frame)

    # Rotation correction: express accel in earth frame (orientation compensation)
    acc_earth = rotate_sensor_to_earth(
        acc_sensor, q, quat_is_sensor_to_earth=quat_is_sensor_to_earth
    )

    # Estimate gravity during initial window, then subtract to get "free-like" accel in earth frame
    update_gravity_estimate(sensor_id, acc_earth, calib_seconds)

    if gravity_est.get(sensor_id) is not None:
        free_earth = acc_earth - gravity_est[sensor_id]
    else:
        free_earth = acc_earth  # before calibration completes

    # Keep your original OSC outputs (/x,/y,/z) but now they are
    # orientation-compensated + gravity-reduced (after calib)
    x_norm = normalize_to_minus1_1(float(free_earth[0]), ACC_MIN, ACC_MAX)
    y_norm = normalize_to_minus1_1(float(free_earth[1]), ACC_MIN, ACC_MAX)
    z_norm = normalize_to_minus1_1(float(free_earth[2]), ACC_MIN, ACC_MAX)

    osc_client.send_message(f"/sensor_{sensor_id}/x", x_norm)
    osc_client.send_message(f"/sensor_{sensor_id}/y", y_norm)
    osc_client.send_message(f"/sensor_{sensor_id}/z", z_norm)

    # Extra OSC (raws + orientation + gyro)
    osc_client.send_message(
        f"/sensor_{sensor_id}/timestamp_us", int(pkt["timestamp_us"])
    )

    # Quaternion (w,x,y,z)
    osc_client.send_message(
        f"/sensor_{sensor_id}/quat",
        [float(q[0]), float(q[1]), float(q[2]), float(q[3])],
    )

    # Gyro (sensor frame, dps)
    osc_client.send_message(
        f"/sensor_{sensor_id}/gyro",
        [float(gyr_sensor[0]), float(gyr_sensor[1]), float(gyr_sensor[2])],
    )

    # Optionally normalized gyro
    gx_n = normalize_to_minus1_1(float(gyr_sensor[0]), GYR_MIN, GYR_MAX)
    gy_n = normalize_to_minus1_1(float(gyr_sensor[1]), GYR_MIN, GYR_MAX)
    gz_n = normalize_to_minus1_1(float(gyr_sensor[2]), GYR_MIN, GYR_MAX)
    osc_client.send_message(f"/sensor_{sensor_id}/gyro_norm", [gx_n, gy_n, gz_n])

    # Earth-frame accel (before gravity removal) + free accel
    osc_client.send_message(
        f"/sensor_{sensor_id}/acc_earth",
        [float(acc_earth[0]), float(acc_earth[1]), float(acc_earth[2])],
    )
    osc_client.send_message(
        f"/sensor_{sensor_id}/free_earth",
        [float(free_earth[0]), float(free_earth[1]), float(free_earth[2])],
    )


async def maybe_reset_heading(ble_client: BleakClient, do_reset: bool):
    """
    Optional heading reset (align multiple sensors).
    Spec: orientation reset control is 2 bytes:
      0x0001 reset heading, 0x0007 revert, 0x0008 default status
    Must be executed during measurement; after reset, revert is required before a new reset.
    """
    if not do_reset:
        return

    # reset heading (little-endian)
    await ble_client.write_gatt_char(
        orientation_reset_control_uuid, b"\x01\x00", response=True
    )
    print("Heading reset requested (0x0001).")


async def run_sensor(
    ble_address,
    sensor_id,
    *,
    calib_seconds,
    quat_is_sensor_to_earth,
    reset_heading,
    osc_client: udp_client.SimpleUDPClient,
):
    print(f"Looking for Bluetooth LE device at address `{ble_address}`...")
    device = await BleakScanner.find_device_by_address(ble_address, timeout=20.0)
    if device is None:
        print(f"A Bluetooth LE device with the address `{ble_address}` was not found.")
        return

    print(f"Client found at address: {ble_address}")
    async with BleakClient(device) as ble_client:
        print(f"Connected to sensor {sensor_id}")

        # Enable notification on the matching payload characteristic BEFORE start.
        callback = partial(
            handle_long_payload_notification,
            sensor_id=sensor_id,
            calib_seconds=calib_seconds,
            quat_is_sensor_to_earth=quat_is_sensor_to_earth,
            osc_client=osc_client,
        )

        await ble_client.start_notify(long_payload_uuid, callback)
        print(f"Long payload notifications enabled for sensor {sensor_id}.")

        # Start measurement with payload mode 26 (custom mode 5)
        # Control characteristic is 3 bytes:
        #   Type=1 (measurement), Action=1 (start), PayloadMode=26
        control_msg = bytes([1, 1, PAYLOAD_MODE_CUSTOM5])
        await ble_client.write_gatt_char(
            measurement_control_uuid, control_msg, response=True
        )
        print(
            f"Streaming turned on for sensor {sensor_id} (payload mode {PAYLOAD_MODE_CUSTOM5})."
        )

        # Optional: reset heading (useful to align all sensors)
        await maybe_reset_heading(ble_client, reset_heading)

        # Keep streaming; adjust as needed or add graceful cancellation
        await asyncio.sleep(10000.0)

    print(f"Disconnected from sensor {sensor_id}.")


async def main(args):
    osc_client = udp_client.SimpleUDPClient(args.ip, args.port)

    tasks = []
    for i, address in enumerate(addresses):
        tasks.append(
            run_sensor(
                address,
                i + 1,
                calib_seconds=args.calib_seconds,
                quat_is_sensor_to_earth=(not args.quat_earth_to_sensor),
                reset_heading=args.reset_heading,
                osc_client=osc_client,
            )
        )
    await asyncio.gather(*tasks)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="127.0.0.1", help="The IP of the OSC server")
    parser.add_argument(
        "--port", type=int, default=5555, help="The port the OSC server is listening on"
    )

    parser.add_argument(
        "--calib-seconds",
        type=float,
        default=2.0,
        help=(
            "Seconds used to estimate gravity from accel_earth at startup "
            "(keep sensors still)."
        ),
    )

    parser.add_argument(
        "--quat-earth-to-sensor",
        action="store_true",
        help=(
            "Flip this ON if your quaternion maps earth->sensor "
            "(then we invert it for sensor->earth rotation)."
        ),
    )

    parser.add_argument(
        "--reset-heading",
        action="store_true",
        help="Request heading reset after starting measurement (align sensors).",
    )

    args = parser.parse_args()
    asyncio.run(main(args))
