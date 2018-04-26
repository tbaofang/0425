import socketserver

class MyTCPHandler(socketserver.BaseRequestHandler):
    def handle(self):
        while True:
            # try:
            # self.request.sendall("hello".encode("utf-8"))
            self.data = self.request.recv(4).strip()
            # print("{0} wrote".format(self.client_address[0]))
            print(self.data())
            print()

            # if not self.data:
            #     print(self.client_address, "断开了")
            #     break

            # self.request.sendall(self.data.upper())

            # except ConnectionResetError as e:
            #     print("err", e)
            #     break

if __name__ == "__main__":
    HOST, PORT = "127.0.0.1", 9985
    server = socketserver.TCPServer((HOST, PORT), MyTCPHandler)
    # server = socketserver.ThreadingTCPServer((HOST, PORT), MyTCPHandler)
    # server = socketserver.forkingTCPServer((HOST, PORT), MyTCPHandler)
    server.serve_forever()