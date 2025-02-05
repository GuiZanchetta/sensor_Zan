import asyncio
import numpy as np
import argparse
from pythonosc import udp_client
from bleak import BleakClient, BleakScanner

# Configuration
SENSOR_ADDRESS = 'd4:22:cd:00:a6:83'
UUID = {
    'meas': '15172001-4947-11e9-8646-d663bd873d93',
    'medium': '15172003-4947-11e9-8646-d663bd873d93',  # Medium payload
    'battery': '15173001-4947-11e9-8646-d663bd873d93'
}

payload_modes = {
    "Rate quantities": [21, b'\x15']
}

# Global state
osc_client = None
ble_client = None


def decode_sensor_data(data: bytes) -> tuple:
    """Decode IMU sensor data (40 bytes) from medium payload.
    
    Expected Structure:
    - Timestamp (4 bytes, uint32)
    - Accelerometer (3x float32, 12 bytes)
    - Gyroscope (3x float32, 12 bytes)
    - Extra Data (3x float32, 12 bytes) → Possibly magnetometer or quaternion data
    Total: 40 bytes
    """

    expected_size = 40  # 4 (timestamp) + 12 (acc) + 12 (gyro) + 12 (extra)

    if len(data) != expected_size:
        print(f"Decoding error: Expected {expected_size} bytes, got {len(data)} bytes")
        return (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0)  # Returning timestamp as 0

    try:
        # Unpack data (little-endian format)
        timestamp = int.from_bytes(data[:4], byteorder='little', signed=False)
        acc_x, acc_y, acc_z, gyro_x, gyro_y, gyro_z, extra_x, extra_y, extra_z = np.frombuffer(data[4:], dtype=np.float32)

        return acc_x, acc_y, acc_z, gyro_x, gyro_y, gyro_z, extra_x, extra_y, extra_z, timestamp

    except Exception as e:
        print(f"Decoding error: {str(e)}")
        return (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0)  # Returning timestamp as 0


def handle_imu_data(sender, data: bytes):
    """Handle IMU sensor data (acceleration, gyroscope, and extra sensor data)."""
    acc_x, acc_y, acc_z, gyro_x, gyro_y, gyro_z, extra_x, extra_y, extra_z, timestamp = decode_sensor_data(data)

    if timestamp == 0:
        return  # Skip faulty data

    # Send data via OSC
    osc_client.send_message("/acc/x", acc_x)
    osc_client.send_message("/acc/y", acc_y)
    osc_client.send_message("/acc/z", acc_z)
    osc_client.send_message("/gyro/x", gyro_x)
    osc_client.send_message("/gyro/y", gyro_y)
    osc_client.send_message("/gyro/z", gyro_z)
    osc_client.send_message("/extra/x", extra_x)
    osc_client.send_message("/extra/y", extra_y)
    osc_client.send_message("/extra/z", extra_z)
    osc_client.send_message("/timestamp", timestamp)

    print(f"[{timestamp}] Acc: {acc_x:.3f}, {acc_y:.3f}, {acc_z:.3f} | "
          f"Gyro: {gyro_x:.3f}, {gyro_y:.3f}, {gyro_z:.3f} | "
          f"Extra: {extra_x:.3f}, {extra_y:.3f}, {extra_z:.3f}")
    
async def sensor_main(payload_mode: bytes):
    global ble_client
    print("Initializing sensor connection...")
    
    try:
        device = await BleakScanner.find_device_by_address(SENSOR_ADDRESS, timeout=20)
        if not device:
            print("Sensor not found")
            return

        async with BleakClient(device) as client:
            ble_client = client
            print("Connected to sensor")
            
            # Set up medium payload notifications
            await client.start_notify(UUID['medium'], handle_imu_data)
            
            # Activate measurement mode
            await client.write_gatt_char(UUID['meas'], b'\x01\x01' + payload_mode, True)
            print("Streaming started...")
            
            while True:
                await asyncio.sleep(1)

    except Exception as e:
        print(f"Connection error: {str(e)}")
    finally:
        ble_client = None
        print("Disconnected")
        


async def main():
    await sensor_main(payload_modes["Rate quantities"][1])

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="192.168.15.7", help="OSC server IP")
    parser.add_argument("--port", type=int, default=5555, help="OSC server port")
    args = parser.parse_args()

    print(f"Starting OSC client at {args.ip}:{args.port}")
    
    osc_client = udp_client.SimpleUDPClient(args.ip, args.port)

    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        print("\nApplication terminated")
