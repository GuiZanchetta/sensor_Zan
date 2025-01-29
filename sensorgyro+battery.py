import asyncio
import numpy as np
import argparse
from pythonosc import udp_client, osc_server
from pythonosc.dispatcher import Dispatcher
from bleak import BleakClient, BleakScanner

# Configuration
SENSOR_ADDRESS = 'd4:22:cd:00:a6:83'
UUID = {
    'meas': '15172001-4947-11e9-8646-d663bd873d93',
    'short': '15172004-4947-11e9-8646-d663bd873d93',
    'battery': '15173001-4947-11e9-8646-d663bd873d93'
}
PAYLOAD_MODE = b'\x15'

# Global state
osc_client = None
ble_client = None
event_loop = asyncio.get_event_loop()

def decode_sensor_data(data: bytes) -> tuple:
    try:
        decoded = np.frombuffer(data, dtype=[
            ('timestamp', np.uint32),
            ('x', np.float32),
            ('y', np.float32),
            ('z', np.float32),
            ('padding', np.uint32)
        ])[0]
        return (float(decoded['x']), float(decoded['y']), float(decoded['z']))
    except Exception as e:
        print(f"Decoding error: {str(e)}")
        return (0.0, 0.0, 0.0)

def handle_gyro_data(sender, data: bytes):
    try:
        x, y, z = decode_sensor_data(data)
        osc_client.send_message("/gyro/x", x)
        osc_client.send_message("/gyro/y", y)
        osc_client.send_message("/gyro/z", z)
        print(f"X: {x:.3f}, Y: {y:.3f}, Z: {z:.3f}")
    except Exception as e:
        print(f"Data error: {str(e)}")

def handle_battery_status(addr, *args):
    """Sync wrapper for async battery check"""
    if ble_client and ble_client.is_connected:
        asyncio.run_coroutine_threadsafe(check_battery_status(), event_loop)
    else:
        osc_client.send_message("/battery/error", "Not connected")

async def check_battery_status():
    """Async battery status check"""
    try:
        battery_data = await ble_client.read_gatt_char(UUID['battery'])
        battery_level = battery_data[0]
        is_charging = battery_data[1]
        osc_client.send_message("/battery/level", battery_level)
        osc_client.send_message("/battery/charging", is_charging)
        print(f"Battery: {battery_level}% | Charging: {'Yes' if is_charging else 'No'}")
    except Exception as e:
        print(f"Battery read error: {str(e)}")
        osc_client.send_message("/battery/error", str(e))

async def sensor_main():
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
            
            await client.start_notify(UUID['short'], handle_gyro_data)
            await client.write_gatt_char(UUID['meas'], b'\x01\x01' + PAYLOAD_MODE, True)
            print("Streaming started...")
            
            while True:
                await asyncio.sleep(1)

    except Exception as e:
        print(f"Connection error: {str(e)}")
    finally:
        ble_client = None
        print("Disconnected")

async def osc_server_main(ip: str, port: int):
    dispatcher = Dispatcher()
    dispatcher.map("/batterystatus", handle_battery_status)
    
    server = osc_server.AsyncIOOSCUDPServer(
        (ip, port), dispatcher, asyncio.get_event_loop()
    )
    transport, protocol = await server.create_serve_endpoint()
    
    try:
        while True:
            await asyncio.sleep(1)
    except asyncio.CancelledError:
        transport.close()

async def main(osc_ip: str, osc_port: int):
    global osc_client, event_loop
    osc_client = udp_client.SimpleUDPClient(osc_ip, osc_port)
    event_loop = asyncio.get_running_loop()
    
    sensor_task = asyncio.create_task(sensor_main())
    osc_task = asyncio.create_task(osc_server_main("0.0.0.0", 5556))
    
    try:
        await asyncio.gather(sensor_task, osc_task)
    except KeyboardInterrupt:
        sensor_task.cancel()
        osc_task.cancel()
        await asyncio.gather(sensor_task, osc_task, return_exceptions=True)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="192.168.15.7", help="OSC server IP")
    parser.add_argument("--port", type=int, default=5555, help="OSC server port")
    args = parser.parse_args()

    print(f"Starting OSC client at {args.ip}:{args.port}")
    print("Send OSC message '/batterystatus' to port 5556 for battery info")

    try:
        asyncio.run(main(args.ip, args.port))
    except KeyboardInterrupt:
        print("\nApplication terminated")