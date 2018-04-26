import socket

client = socket.socket()
# client.connect(('localhost', 9988))
client.connect(("127.0.0.1", 9985))

while True:
    msg = 0xfa
    # msg = input(">>:").strip()
    # if len(msg) == 0: continue
    client.send(msg.encode("utf-8"))
    # client.send(msg)
    # data = client.recv(1024)
    # print("recv:", data.decode())