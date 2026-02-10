import argparse
import asyncio
import socket
import struct
import sys

import numpy as np
from bleak import BleakClient, BleakScanner
from pythonosc import AsyncIOOSCUDPServer, dispatcher, osc_server, udp_client

# ======================
# CONFIGURATION
# ======================

MAX_DOTS = 5  # Max number of DOTs to connect (adjust as needed)
OSC_PORT = 5555  # Local OSC port for sending/receiving data
MODE_TO_RATE = {
    1: 200,  # High Fidelity (with mag)
    2: 100,  # Extended (Quaternion)
    3: 100,  # Complete (Quaternion)
    4: 100,  # Orientation (Euler) — alias for Complete Euler
    5: 100,  # Orientation (Quaternion) — alias for Complete Quaternion
    6: 100,  # Free acceleration
    7: 100,  # Extended (Euler)
    16: 100,  # Complete (Euler)
    17: 200,  # High Fidelity
    18: 100,  # Delta quantities (with mag)
    19: 100,  # Delta quantities
    20: 100,  # Rate quantities (with mag)
    21: 100,  # Rate quantities
}

# Mapping of payload mode names to byte values (from runthis.py / 3stream_cretton_gyro_tentativa1.py)
PAYLOAD_MODES = {
    "High Fidelity (with mag)": 1,
    "Extended (Quaternion)": 2,
    "Complete (Quaternion)": 3,
    "Orientation (Euler)": 4,  # alias for Complete Euler
    "Orientation (Quaternion)": 5,  # alias for Complete Quaternion
    "Free acceleration": 6,
    "Extended (Euler)": 7,
    "Complete (Euler)": 16,
    "High Fidelity": 17,
    "Delta quantities (with mag)": 18,
    "Delta quantities": 19,
    "Rate quantities (with mag)": 20,
    "Rate quantities": 21,
}

# Reverse mapping: byte → name
BYTE_TO_MODE = {v: k for k, v in PAYLOAD_MODES.items()}

# BLE Characteristic UUIDs (Xsens DOT standard)
CONTROL_UUID = "00002001-0000-1000-8000-00805f9b34fb"  # Control characteristic
SHORT_PAYLOAD_NOTIFY_UUIDS = [
    "00002002-0000-1000-8000-00805f9b34fb",  # Common short payload notify char (Free Accel, Euler, Quaternion)
    "00002003-0000-1000-8000-00805f9b34fb",
    "00002004-0000-1000-8000-00805f9b34fb",
]
LONG_PAYLOAD_NOTIFY_UUIDS = [
    "00002005-0000-1000-8000-00805f9b34fb",  # For >40 byte payloads (e.g., Delta, Rate with mag)
    "00002006-0000-1000-8000-00805f9b34fb",
]

# ======================
# HELPER FUNCTIONS
# ======================


def get_local_ip():
    """Get local IP address of machine"""
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception:
        return "127.0.0.1"


async def find_xsens_dots(max_devices=5, timeout=10):
    """Scan for up to max_devices Xsens DOT devices"""
    print(f"[SCAN] Scanning for Xsens DOT devices (max {max_devices})...")
    devices = await BleakScanner.discover(timeout=timeout)
    dots = []
    for d in devices:
        if "Xsens" in d.name or "DOT" in d.name or "MT" in d.name:
            dots.append(d)
            print(f"[FOUND] {d.name} @ {d.address}")
            if len(dots) >= max_devices:
                break
    if not dots:
        raise RuntimeError(
            "No Xsens DOT devices found. Make sure they are powered on and advertising."
        )
    return dots[:max_devices]


def build_control_command(measurement_type, action, payload_mode):
    """Build control command: [0x20][0x01][type][action][payload_mode]"""
    # Control Command Format: 5 bytes
    # Byte 0: 0x20 (command prefix)
    # Byte 1: 0x01 (command ID for set output mode)
    # Byte 2: measurement_type (e.g., 0=IMU, 1=Orientation)
    # Byte 3: action (0=start, 1=stop) — we use 0 to start streaming
    # Byte 4: payload_mode (from table in docs)
    return bytes([0x20, 0x01, measurement_type, action, payload_mode])


# ======================
# DATA PARSERS (for each mode)
# ======================


def parse_free_acceleration(data):
    """Parse Free Acceleration (32 bytes): timestamp(4) + free_acc(12)"""
    if len(data) < 16:
        return None
    ts = struct.unpack("<I", data[0:4])[0]
    ax, ay, az = struct.unpack("<fff", data[4:16])
    return {"ts": ts, "ax": ax, "ay": ay, "az": az}


def parse_euler(data):
    """Parse Euler (28 bytes): timestamp(4) + euler(12)"""
    if len(data) < 16:
        return None
    ts = struct.unpack("<I", data[0:4])[0]
    roll, pitch, yaw = struct.unpack("<fff", data[4:16])
    return {"ts": ts, "roll": roll, "pitch": pitch, "yaw": yaw}


def parse_quaternion(data):
    """Parse Quaternion (32 bytes): timestamp(4) + quat(16)"""
    if len(data) < 20:
        return None
    ts = struct.unpack("<I", data[0:4])[0]
    qw, qx, qy, qz = struct.unpack("<ffff", data[4:20])
    return {"ts": ts, "qw": qw, "qx": qx, "qy": qy, "qz": qz}


def parse_high_fidelity(data):
    """Parse High Fidelity (29 bytes) — simplified version for demo"""
    if len(data) < 29:
        return None
    ts = struct.unpack("<I", data[0:4])[0]
    # Skip raw acc, gyro, mag — we just send normalized values as float arrays
    ax, ay, az = struct.unpack("<fff", data[4:16])
    gx, gy, gz = struct.unpack("<fff", data[16:28])
    return {"ts": ts, "ax": ax, "ay": ay, "az": az, "gx": gx, "gy": gy, "gz": gz}


# ======================
# DEVICE HANDLER
# ======================


class DOTDevice:
    def __init__(self, device, index):
        self.device = device
        self.index = index + 1  # 1-indexed for OSC routing: /acc1, /quat2...
        self.client = None
        self.is_connected = False
        self.current_mode = 6  # Default: Free acceleration (mode 6)
        self.notification_handle = None
        self.parser = parse_free_acceleration

    async def connect(self):
        print(f"[CONNECT] Connecting to {self.device.name} ({self.device.address})...")
        try:
            self.client = BleakClient(
                self.device, disconnected_callback=self.on_disconnect
            )
            await self.client.connect()
            print(f"[CONNECTED] Connected to {self.device.address}")
            self.is_connected = True
            return True
        except Exception as e:
            print(f"[ERROR] Failed to connect to {self.device.address}: {e}")
            return False

    def on_disconnect(self, client):
        print(f"[DISCONNECTED] Device {self.index} disconnected.")
        self.is_connected = False

    async def set_mode(self, mode_byte):
        """Set the output mode for this DOT"""
        if mode_byte not in MODE_TO_RATE:
            print(f"[WARN] Invalid mode: {mode_byte}")
            return
        self.current_mode = mode_byte
        command = build_control_command(0, 0, mode_byte)  # IMU type, start streaming

        try:
            await self.client.write_gatt_char(CONTROL_UUID, command)
            print(
                f"[MODE SET] Device {self.index} → {BYTE_TO_MODE.get(mode_byte, 'Unknown')} ({mode_byte})"
            )

            # Set parser based on mode
            if mode_byte == 6:  # Free acceleration
                self.parser = parse_free_acceleration
                self.notification_handle = SHORT_PAYLOAD_NOTIFY_UUIDS[0]
            elif mode_byte in [2, 3, 5]:  # Quaternion modes
                self.parser = parse_quaternion
                self.notification_handle = SHORT_PAYLOAD_NOTIFY_UUIDS[0]
            elif mode_byte in [4, 7, 16]:  # Euler modes
                self.parser = parse_euler
                self.notification_handle = SHORT_PAYLOAD_NOTIFY_UUIDS[0]
            elif mode_byte in [1, 17]:  # High Fidelity
                self.parser = parse_high_fidelity
                self.notification_handle = SHORT_PAYLOAD_NOTIFY_UUIDS[
                    0
                ]  # Use short for now (29 bytes)
            else:
                print(
                    f"[WARN] Mode {mode_byte} not fully implemented — using default notify UUID"
                )
                self.notification_handle = SHORT_PAYLOAD_NOTIFY_UUIDS[0]

        except Exception as e:
            print(f"[ERROR] Failed to set mode on device {self.index}: {e}")

    async def start_notifications(self):
        """Start receiving notifications from the selected characteristic"""
        if not self.is_connected or not self.notification_handle:
            return

        def notification_handler(sender, data):
            parsed = self.parser(data)
            if parsed:
                # Send via OSC
                osc_addr = f"/{BYTE_TO_MODE.get(self.current_mode, 'data')}{self.index}"
                osc_client.send_message(osc_addr, list(parsed.values()))

        try:
            await self.client.start_notify(
                self.notification_handle, notification_handler
            )
            print(
                f"[NOTIFY] Started notifications on device {self.index} ({BYTE_TO_MODE.get(self.current_mode)})"
            )
        except Exception as e:
            print(f"[ERROR] Failed to start notify: {e}")

    async def disconnect(self):
        if self.client and self.is_connected:
            await self.client.disconnect()
            self.is_connected = False
            print(f"[DISCONNECTED] Manually disconnected device {self.index}")


# ======================
# MAIN SCRIPT
# ======================

import asyncio
import socket

from pythonosc.udp_client import SimpleUDPClient


def get_local_ip():
    """Get local IP address (works on most networks)"""
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        ip = s.getsockname()[0]
        s.close()
        return ip
    except Exception as e:
        print(f"[WARN] Could not get local IP: {e}")
        return "127.0.0.1"


# --- OSC Client ---
local_ip = get_local_ip()
osc_port = 8000
osc_client = SimpleUDPClient(local_ip, osc_port)
print(f"✅ OSC server running on UDP://{local_ip}:{osc_port}")


async def main():
    print("🔍 Scanning for Movella DOT devices...")

    # Scan for BLE devices (only Movella DOTs)
    from bleak import BleakScanner

    dot_devices = []
    try:
        devices = await BleakScanner.discover(timeout=5.0)
        for d in devices:
            if (
                "DOT" in d.name
                or "Movella" in d.name
                or any(
                    s in str(d.metadata.get("manufacturer_data", {}))
                    for s in ["1463", "0001"]
                )
            ):
                dot_devices.append(d)
                print(f"✅ Found DOT: {d.name} | {d.address}")
    except Exception as e:
        print(f"[ERROR] BLE scan failed: {e}")

    if not dot_devices:
        print("❌ No Movella DOT devices found. Please turn them on and try again.")
        return

    # Create device handlers
    devices = [DOTDevice(d, i) for i, d in enumerate(dot_devices)]

    # Connect to all found devices
    connected_count = 0
    tasks = []
    for dev in devices:
        tasks.append(dev.connect())

    results = await asyncio.gather(*tasks)
    for i, success in enumerate(results):
        if success:
            connected_count += 1

    if not connected_count:
        print("❌ No devices connected. Exiting.")
        return

    # Set all devices to Free Acceleration by default (mode 6)
    set_mode_tasks = [dev.set_mode(6) for dev in devices]
    await asyncio.gather(*set_mode_tasks)

    # Start notifications on all
    notify_tasks = [dev.start_notifications() for dev in devices]
    await asyncio.gather(*notify_tasks)

    print(f"\n✅ All {connected_count} devices connected and streaming.")
    print("📡 OSC data sent to:", local_ip, ":", osc_port)
    print(
        "💡 Use a tool like TouchDesigner, Max/MSP or Pure Data to receive /acc1, /quat2, etc."
    )

    # Keep alive
    try:
        while True:
            await asyncio.sleep(1)
    except KeyboardInterrupt:
        print("\n🛑 Stopping...")
        disconnect_tasks = [dev.disconnect() for dev in devices]
        await asyncio.gather(*disconnect_tasks)


if __name__ == "__main__":
    asyncio.run(main())
