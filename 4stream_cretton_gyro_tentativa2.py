# Import required modules, libraries, and classes (Random only used for testing) 
import asyncio
import numpy as np
import sys
import argparse
from pythonosc import udp_client
from bleak import BleakClient, BleakScanner

# Replace `address` with your Xsens DOT's address
address = 'd4:22:cd:00:a6:83'
short_payload_characteristic_uuid = '15172004-4947-11e9-8646-d663bd873d93'
measurement_characteristic_uuid = '15172001-4947-11e9-8646-d663bd873d93'

# Payload modes (for reference)
payload_modes = {
    "High Fidelity (with mag)": [1, b'\x01'],
    "Extended (Quaternion)": [2, b'\x02'],
    "Complete (Quaternion)": [3, b'\x03'],
    "Orientation (Euler)": [4, b'\x04'],
    "Orientation (Quaternion)": [5, b'\x05'],
    "Free acceleration": [6, b'\x06'],
    "Extended (Euler)": [7, b'\x07'],
    "Complete (Euler)": [16, b'\x10'],
    "High Fidelity": [17, b'\x11'],
    "Delta quantities (with mag)": [18, b'\x12'],
    "Delta quantities": [19, b'\x13'],
    "Rate quantities (with mag)": [20, b'\x14'],
    "Rate quantities": [21, b'\x15'],
    "Custom mode 1": [22, b'\x16'],
    "Custom mode 2": [23, b'\x17'],
    "Custom mode 3": [24, b'\x18'],
    "Custom mode 4": [25, b'\x19'],
    "Custom mode 5": [26, b'\x1A'],
}

# 🔥 Atualizado para suportar 40 bytes corretamente
def decode_sensor_data(data: bytes):
    """Decodifica o payload de 40 bytes do Xsens DOT."""
    expected_size = 40  # Ajuste para o tamanho correto

    if len(data) != expected_size:
        print(f"Erro de decodificação: Esperado {expected_size} bytes, recebido {len(data)} bytes")
        return None

    try:
        # Estrutura do payload de 40 bytes
        data_segments = np.dtype([
            ('timestamp', np.uint32),      # 4 bytes
            ('acc_x', np.float32),         # 4 bytes
            ('acc_y', np.float32),         # 4 bytes
            ('acc_z', np.float32),         # 4 bytes
            ('gyro_x', np.float32),        # 4 bytes
            ('gyro_y', np.float32),        # 4 bytes
            ('gyro_z', np.float32),        # 4 bytes
            ('extra_x', np.float32),       # 4 bytes (possível magnetômetro ou quaternions)
            ('extra_y', np.float32),       # 4 bytes
            ('extra_z', np.float32),       # 4 bytes
        ])

        decoded_data = np.frombuffer(data, dtype=data_segments)
        return decoded_data

    except Exception as e:
        print(f"Erro ao decodificar payload: {str(e)}")
        return None

# 🔥 Ajustado para enviar todos os novos dados
def handle_short_payload_notification(sender, data):
    """Manipula a notificação de payload curto e envia os dados via OSC."""
    print('Notificação de payload curto recebida.')
    print(f'\tSender: {sender}')
    print(f'\tData Bruta: {data.hex()}')

    decoded_data = decode_sensor_data(data)
    if decoded_data is None:
        return  # Ignorar pacotes malformados

    # Extrair os valores decodificados
    timestamp = decoded_data['timestamp'][0]
    acc_x, acc_y, acc_z = decoded_data['acc_x'][0], decoded_data['acc_y'][0], decoded_data['acc_z'][0]
    gyro_x, gyro_y, gyro_z = decoded_data['gyro_x'][0], decoded_data['gyro_y'][0], decoded_data['gyro_z'][0]
    extra_x, extra_y, extra_z = decoded_data['extra_x'][0], decoded_data['extra_y'][0], decoded_data['extra_z'][0]

    # Enviar via OSC
    client.send_message("/acc/x", acc_x)
    client.send_message("/acc/y", acc_y)
    client.send_message("/acc/z", acc_z)
    client.send_message("/gyro/x", gyro_x)
    client.send_message("/gyro/y", gyro_y)
    client.send_message("/gyro/z", gyro_z)
    client.send_message("/extra/x", extra_x)
    client.send_message("/extra/y", extra_y)
    client.send_message("/extra/z", extra_z)
    client.send_message("/timestamp", timestamp)

    # Exibir os valores no terminal
    print(f"[{timestamp}] Acc: {acc_x:.3f}, {acc_y:.3f}, {acc_z:.3f} | "
          f"Gyro: {gyro_x:.3f}, {gyro_y:.3f}, {gyro_z:.3f} | "
          f"Extra: {extra_x:.3f}, {extra_y:.3f}, {extra_z:.3f}")

async def main(ble_address):
    """Conecta ao dispositivo BLE e inicia a leitura do sensor."""
    print(f'Procurando dispositivo BLE no endereço `{ble_address}`...')
    device = await BleakScanner.find_device_by_address(ble_address, timeout=20.0)
    if device is None:
        print(f'Dispositivo BLE com endereço `{ble_address}` não encontrado.')
        return

    print(f'Conectando ao dispositivo...')
    async with BleakClient(device) as client:
        print(f'Conectado: {client.is_connected}')

        # Habilitar notificações de payload curto
        print(f'Habilitando notificações de payload curto...')
        await client.start_notify(short_payload_characteristic_uuid, handle_short_payload_notification)
        print('Notificações ativadas.')

        # Configurar o modo de medição
        payload_mode = payload_modes["High Fidelity"][1]  # Configuração ajustável
        measurement_default = b'\x01'
        start_measurement = b'\x01'
        full_turnon_payload = measurement_default + start_measurement + payload_mode
        print(f'Setando payload com: {full_turnon_payload}')
        await client.write_gatt_char(measurement_characteristic_uuid, full_turnon_payload, True)
        print(f'Streaming ativado.')

        await asyncio.sleep(100.0)  # Tempo de streaming
        print(f'Streaming desligado.')

    print(f'Desconectado de `{ble_address}`')

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="192.168.15.7", help="Endereço IP do servidor OSC")
    parser.add_argument("--port", type=int, default=5555, help="Porta do servidor OSC")
    args = parser.parse_args()

    client = udp_client.SimpleUDPClient(args.ip, args.port)
    asyncio.run(main(sys.argv[1] if len(sys.argv) == 2 else address))
