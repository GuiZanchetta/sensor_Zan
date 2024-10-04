import asyncio
import numpy as np
import sys
import argparse
from pythonosc import udp_client
from bleak import BleakClient, BleakScanner

# Lista de endereços dos sensores
addresses = ['d4:22:cd:00:a6:83','d4:22:cd:00:a5:66','d4:22:cd:00:9f:ba','d4:22:cd:00:9f:ee','d4:22:cd:00:9b:2b']  # Adicione outros endereços aqui
short_payload_characteristic_uuid = '15172004-4947-11e9-8646-d663bd873d93'
measurement_characteristic_uuid = '15172001-4947-11e9-8646-d663bd873d93'
oscv = ""
#'d4:22:cd:00:9f:ee'
payload_modes = {
    "Free acceleration": [6, b'\x06'],
}

def encode_free_accel_bytes_to_string(bytes_):
    data_segments = np.dtype([
        ('timestamp', np.uint32),
        ('x', np.float32),
        ('y', np.float32),
        ('z', np.float32),
        ('zero_padding', np.uint32)
    ])
    formatted_data = np.frombuffer(bytes_, dtype=data_segments)
    return formatted_data

def handle_short_payload_notification(sender, data, sensor_id):
    print(f'Short payload notification received from sensor {sensor_id}.')
    oscv = encode_free_accel_bytes_to_string(data)
    client.send_message(f"/sensor_{sensor_id}/x", oscv.item(0)[1])
    client.send_message(f"/sensor_{sensor_id}/y", oscv.item(0)[2])
    client.send_message(f"/sensor_{sensor_id}/z", oscv.item(0)[3])
    print(f"Sensor {sensor_id} - X: {oscv.item(0)[1]} Y: {oscv.item(0)[2]} Z: {oscv.item(0)[3]}")

async def run_sensor(ble_address, sensor_id):
    print(f'Looking for Bluetooth LE device at address `{ble_address}`...')
    device = await BleakScanner.find_device_by_address(ble_address, timeout=20.0)
    if device is None:
        print(f'A Bluetooth LE device with the address `{ble_address}` was not found.')
    else:
        print(f'Client found at address: {ble_address}')
        async with BleakClient(device) as client:
            print(f'Connected to sensor {sensor_id}')

            # Start notification for short payload
            await client.start_notify(short_payload_characteristic_uuid, lambda sender, data: handle_short_payload_notification(sender, data, sensor_id))
            print(f'Short Payload notifications enabled for sensor {sensor_id}.')

            # Turn on the measurement service
            payload_mode_values = payload_modes["Free acceleration"]
            payload_mode = payload_mode_values[1]
            full_turnon_payload = b'\x01\x01' + payload_mode
            await client.write_gatt_char(measurement_characteristic_uuid, full_turnon_payload, True)
            print(f'Streaming turned on for sensor {sensor_id}.')

            await asyncio.sleep(10000.0)  # Adjust the time you want to stream data

        print(f'Disconnected from sensor {sensor_id}.')

async def main():
    tasks = []
    for i, address in enumerate(addresses):
        tasks.append(run_sensor(address, i + 1))
    await asyncio.gather(*tasks)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="127.0.0.1",
                        help="The IP of the OSC server")
    parser.add_argument("--port", type=int, default=54321,
                        help="The port the OSC server is listening on")
    args = parser.parse_args()

    client = udp_client.SimpleUDPClient(args.ip, args.port)
    asyncio.run(main())
