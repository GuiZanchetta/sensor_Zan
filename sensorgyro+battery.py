import asyncio
import numpy as np
import argparse
from pythonosc import udp_client, osc_server
from pythonosc.dispatcher import Dispatcher
from bleak import BleakClient, BleakScanner

# Configurações
SENSOR_ADDRESSES = [
    'd4:22:cd:00:a6:83',
    'd4:22:cd:00:a5:66',
    'd4:22:cd:00:9f:ba',
    'd4:22:cd:00:9f:ee',
    'd4:22:cd:00:9b:2b'
]

UUID = {
    'meas': '15172001-4947-11e9-8646-d663bd873d93',
    'short': '15172004-4947-11e9-8646-d663bd873d93',
    'battery': '15173001-4947-11e9-8646-d663bd873d93'
}

# Estado global
osc_client = None
connected_sensors = {}
server_transport = None

def select_payload_mode():
    """Seleção interativa do modo de operação"""
    modes = {
        1: "High Fidelity (with mag)",
        6: "Free acceleration",
        17: "High Fidelity",
        20: "Rate quantities (with mag)"
    }
    
    print("\nModos disponíveis:")
    for k, v in modes.items():
        print(f"{k}: {v}")
    
    while True:
        try:
            choice = int(input("\nSelecione o modo numérico: "))
            if choice in modes:
                print(f"Modo selecionado: {modes[choice]}")
                return bytes([choice])
            print("Opção inválida!")
        except ValueError:
            print("Insira um número válido!")

async def decode_sensor_data(data: bytes):
    """Decodificação assíncrona com yield de controle"""
    try:
        await asyncio.sleep(0)  # Yield para o loop de eventos
        return np.frombuffer(data, dtype=[
            ('timestamp', '<u4'),
            ('x', '<f4'),
            ('y', '<f4'), 
            ('z', '<f4'),
            ('padding', '<u4')
        ])[0]
    except Exception as e:
        print(f"Erro na decodificação: {str(e)}")
        return (0.0, 0.0, 0.0)

async def handle_battery_request():
    """Verificação de bateria não-bloqueante"""
    try:
        for sensor_id, client in connected_sensors.items():
            if client.is_connected:
                data = await client.read_gatt_char(UUID['battery'])
                osc_client.send_message(f"/sensor/{sensor_id}/battery", [data[0], data[1]])
                await asyncio.sleep(0)  # Yield entre leituras
    except Exception as e:
        print(f"Erro na bateria: {str(e)}")

def create_sensor_handler(sensor_id: int):
    """Callback com gestão de tempo de execução"""
    async def callback(sender, data: bytes):
        try:
            decoded = await decode_sensor_data(data)
            osc_client.send_message(
                f"/sensor/{sensor_id}/accel",
                [float(decoded['x']), float(decoded['y']), float(decoded['z'])]
            )
            await asyncio.sleep(0)  # Yield após processamento
        except Exception as e:
            print(f"Erro no sensor {sensor_id}: {str(e)}")
    return callback

async def connect_sensors(payload_mode: bytes):
    """Conexão com timeouts controlados"""
    print("\nIniciando conexão com sensores...")
    
    success = 0
    for idx, address in enumerate(SENSOR_ADDRESSES, 1):
        try:
            device = await asyncio.wait_for(
                BleakScanner.find_device_by_address(address),
                timeout=5.0
            )
            
            if not device:
                print(f"Sensor {idx} ({address}) não encontrado")
                continue

            async with BleakClient(device) as client:
                await client.start_notify(UUID['short'], create_sensor_handler(idx))
                await client.write_gatt_char(UUID['meas'], b'\x01\x01' + payload_mode, True)
                connected_sensors[idx] = client
                print(f"Sensor {idx} conectado")
                success += 1

        except asyncio.TimeoutError:
            print(f"Timeout na conexão do sensor {idx}")
        except Exception as e:
            print(f"Erro no sensor {idx}: {str(e)}")
    
    print(f"\nConexões estabelecidas: {success}/{len(SENSOR_ADDRESSES)}")
    return success > 0

async def battery_monitor():
    """Monitoramento com intervalos controlados"""
    while True:
        try:
            await handle_battery_request()
            await asyncio.sleep(300)  # Intervalo de 5 minutos
        except asyncio.CancelledError:
            return
        except Exception as e:
            print(f"Erro no monitor: {str(e)}")

async def osc_server_main(ip: str, port: int, loop: asyncio.AbstractEventLoop):
    """Servidor OSC com gestão de tempo de resposta"""
    dispatcher = Dispatcher()
    dispatcher.map("/battery", lambda *args: asyncio.create_task(handle_battery_request()))
    
    server = osc_server.AsyncIOOSCUDPServer((ip, port), dispatcher, loop)
    transport, _ = await server.create_serve_endpoint()
    return transport

async def main(osc_ip: str, osc_port: int):
    """Fluxo principal com gestão de desempenho"""
    global osc_client, server_transport
    
    # Configuração inicial
    osc_client = udp_client.SimpleUDPClient(osc_ip, osc_port)
    payload_mode = select_payload_mode()
    
    if not await connect_sensors(payload_mode):
        print("Nenhum sensor conectado. Encerrando...")
        return
    
    # Configurar servidor OSC
    main_loop = asyncio.get_running_loop()
    server_transport = await osc_server_main("0.0.0.0", 5556, main_loop)
    
    # Iniciar monitoramento
    battery_task = asyncio.create_task(battery_monitor())
    
    try:
        # Loop principal otimizado
        while True:
            await asyncio.sleep(0.1)  # Intervalo reduzido para melhor responsividade
            
    except KeyboardInterrupt:
        print("\nIniciando shutdown seguro...")
        
        # Parar monitoramento
        battery_task.cancel()
        try:
            await battery_task
        except asyncio.CancelledError:
            pass
        
        # Parar servidor OSC
        if server_transport:
            server_transport.close()
            await asyncio.sleep(0.1)
        
        # Desconectar sensores
        print("Desconectando sensores...")
        tasks = []
        for sensor_id, client in list(connected_sensors.items()):
            if client.is_connected:
                tasks.append(client.disconnect())
            del connected_sensors[sensor_id]
        
        await asyncio.gather(*tasks, return_exceptions=True)
            
    finally:
        print("Sistema encerrado com segurança")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", default="127.0.0.1", help="IP do servidor OSC")
    parser.add_argument("--port", type=int, default=5005, help="Porta do servidor OSC")
    args = parser.parse_args()

    try:
        asyncio.run(main(args.ip, args.port), debug=True)
    except KeyboardInterrupt:
        print("\nAplicação interrompida pelo usuário")
    except Exception as e:
        print(f"Erro crítico: {str(e)}")