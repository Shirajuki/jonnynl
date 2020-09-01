import time
import sys
from socket import *

# Get the server hostname and port as command line arguments
if len(sys.argv) != 3:
    print("Usage: python UDPPingerClient <hostname> <port>")
    sys.exit()
host = sys.argv[1]
port = int(sys.argv[2])
timeout = 1 # in seconds

# Create UDP client socket
clientSocket = socket(AF_INET, SOCK_DGRAM)
# Note the second parameter is NOT SOCK_STREAM
# but the corresponding to UDP

# Set socket timeout as 1 second
clientSocket.settimeout(timeout)
# Sequence number of the ping message
maxPtime = 10
ptime = 0
recvCount = 0
# Ping for 10 times
while ptime < maxPtime:
    ptime += 1
    # Format the message to be sent as in the Lab description
    data = f"Ping {ptime}"
    try:
        # Record the "sent time"
        sent_time = time.time()
        timef = time.strftime("%H:%M:%S",time.gmtime(sent_time))
        # Send the UDP packet with the ping message
        message = f"{data} {timef}"
        clientSocket.sendto(message.encode(), (host, port))
        print(f"{ptime}:\tSending message:", message)
        # Receive the server response
        response, serverAddress = clientSocket.recvfrom(1024)
        # Record the "received time"
        recv_time = time.time()
        # Display the server response as an output
        print("\tReceived echo:",response.decode())
        # Round trip time is the difference between sent and received time
        rtt = recv_time - sent_time
        rtt_ms = round(rtt * 1000,6)
        print(f"\tCalculated round trip time: {rtt_ms}\n")
        recvCount += 1
    except:
        # Server does not respond
        print("\tRequest timed out.\n")
        continue
# Close the client socket
clientSocket.close()
print("\nPacket sent:",maxPtime)
print("Received:",recvCount)
print("Lost:",maxPtime-recvCount)
