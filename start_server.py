from src.server import Server

server = Server()
server._start()
print("Servidor aguardando conexão...")

# Espera conexão
conn, addr = server.sock.accept()
print("Conectado por:", addr)

# Recebe e processa dados
data = conn.recv(1024).decode()
print("Recebido:", data)

resultado = server.calc(data)
conn.send(str(resultado).encode())
