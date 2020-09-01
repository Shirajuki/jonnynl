# Communication - Services and Networks

# [ch2] Application Layer - principles of applications
## Application layer protocols and their interface towards the communication protocols in the operating system.
- Conceptual, implementation aspects of distributed application protocols.

## Application layer
- HTTP
- FTP
- SMTP
- DNS
- socket API

## Distributed applications in end systems communicate over the network.
- Applications on end systems allow for rapid application development and propagation.
1. Client/server model
  1. Client host requests, receives service from always-on server
2. Peer-to-peer (p2p) model
  1. Minimal (or no) use pf dedicated servers.
  2. Content distribution networks: BitTorrent, Bitcoin.


## What is the internet?
- Client-server or peer-to-peer

## Process communication: Client initiates, server awaits to be contacted.
- Process: program running within a host
- Inter-process Communication
- Different hosts communicate by exchanging messages
- Applications with P"P architecture have both client & server processes
- **SOCKETS**

## Process communication: Processes send/receive messages to/from their socket.
- Socket analogous to door
  - sending process shoves message out door
  - transport/network infrastructure brings message to socket at receiving process.

## Process communication: Processes are addressed through: IP-address + portnumber field in transport protocol.
- Host device has unique 32-bit IP-address.
- Port numbers associated with process on host.

## What transport service does an application need?
- Throughput - min amount of throughput to be "effective", elastic or min/max kbps transfer rate.
- Data loss - audio can tolerate some loss, file transfer, telnet require 100% reliable data transfer. Loss or loss-tolerant.
- Delay - bandwidth/time sensitivity
- Security - password, encryption

#### TCP - connection-oriented, reliable
#### UDP - not connection-oriented, unreliable.
