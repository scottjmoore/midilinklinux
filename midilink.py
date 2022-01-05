import sys
import socket

UDP_IP = "192.168.1.5"
UDP_PORT = 1999

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

sock.bind((UDP_IP, UDP_PORT))

while True:
    data, addr = sock.recvfrom(64)
    sys.stdout.buffer.write(data)
    sys.stdout.flush()
