---
layout: post
tags: TTM4110
categories: TTM4110
---

# **Ch2. Application Layer**
- Network applications are the raisons d'etre of a computer network-if we couldn't conceive of any useful applications, there wouldn't be any need for networking infra-structure and protocols to support them. → Applications
- Conceptual and implementation aspects of network applications
- Key application-layer concepts: 
	- network services required by applications, clients and servers, processes and transport layer interfaces.
- Several network applications in detail:
	- Web, e-mail, DNS, P2P file distribution and video streaming.
- Network application development over both TCP and UDP. → Socket interface
	- Client-server applications in python
	- Socket programming assignment

## **2.1 Principles of Network Applications**
- Transform idea into a real-world network application.
- Writing programs that run on different end systems’ and communicate with each other over the network.
	- Example: Web: browser program running in the user’s host and the Web server program running in the Web server host.
	- Example2: P2P file-sharing system, client - host
**2.1.1 Network Application Architectures**
- The application Architecture: designed by the application developer and dictates how the application is structured over the various end systems. There’s 2:
	- The client-server architecture 
		- Always-on host (server) services requests from many other hosts (clients). Example is Web application. Client do not directly communicate with each other, but through the host.
		- Server has a fixed, well-known address (IP address), and it’s always-on. Client can thus always contact the server by sending a packet to the server’s IP. (Web, FTP, Telnet, e-mail)
		- Popular social-networking site → server handling through data center housing a large number of hosts, creates virtual servers. Google has for example 30 to 50 data centers around the world. Containing hundreds of thousands of servers each.
	- peer-to-peer (P2P) architecture
		- Minimal / no reliance on dedicated servers in data centers. Exploits direct communication between pairs of intermittently connected hosts, called peers. Peers are desktop/laptop controlled by users, home/university/office. Communicate without passing through a dedicated server. (BitTorrent) peer-assisted download acceleration.
		- Self-scalability: Each peer generates workload by requesting files, each peer also adds service capacity to the system by distributing files to other peers. Cost-effective but face challenges of security, performance and reliability due to high decentralized structure.
**2.1.2 Processes communicating**
- Processes (a program running within an end system) that communicate.
- Processes running on different host communicate. → by exchanging messages across the computer network.

**Client and Server Processes**
- Pairs of processes that send messages to each other over a network. Client browser exchanges messages with a Web server process. In P2P a process is sent from one peer to another peer.
- Client and Server

**The interface between the process and the computer network**
- Socket: a process sends messages into, receives messages from, the network through a software interface called Socket
- A process is analogous to a house and it’s socket is analogous to it’s door.
- A socket is the interface between the application layer and the transport layer within a host: Application Programming Interface (API)

**Addressing processes**
- The host is identified by its IP address and a destination port number. Since a host can run many network applications.
**2.1.3 Transport Services Available to Applications**
- Transport layer Protocol
- Reliable Data Transfer - loss tolerant applications
- Throughput - bandwidth-sensitive applications - clastic applications
- Timing
- Security
**2.1.4 Transport Services Provided by the Internet**
(reliable data transfer, throughput, timing, and security.)
- **TCP-services**: connection-oriented service and a reliable data transfer service.
	- Connection-oriented service. TCP has the client and server exchange transport-layer control information with each other before the application-level messages begin to flow. This so-called handshaking procedure alerts the client and server, allowing them to prepare for an onslaught of packets. After the handshaking phase, a TCP connection is said to exist between the sockets of the two processes. The connection is a full-duplex connection in that the two processes can send messages to each other over the connection at the same time.
	- Reliable data transfer service. The communicating processes can rely on TCP to deliver all data sent without eITor and in the proper order. When one side of the application passes a stream of bytes into a socket, it can count on TCP to deliver the same stream of bytes to the receiving socket, with no missing or duplicate bytes
- TCP also includes a congestion-control mechanism, a service for the general welfare of the Internet rather than for the direct benefit of the communicating processes. The TCP congestion-control mechanism throttles a sending process (client or server) when the network is congested between sender and receiver. → Secure Sockets Layer (SSL)
- **UDP Services**: UDP is a no-frills, lightweight transport protocol, providing minimal services.
	- Connectionless, unreliable data transfer service, no guarantee the message will reach. Doesn’t include a congestion-control mechanism
**2.1.5 Application-Layer Protocols**
- The types of messages exchanged, for example, request messages and response messages
- The syntax of the various message types, such as the fields in the message and how the fields are delineated
- The semantics of the fields , that is, the meaning of the information in the fields
- Rules for determining when and how a process sends messages and responds to messages
- Some application-layer protocols are specified in RFCs and are therefore in the public domain. For example, the Web's application-layer protocol , HTTP (the HyperText Transfer Protocol [RFC 2616]), is available as an RFC
**2.1.6 Network Applications Covered in This Book**
- P2P apps, Web: HTTP, e-mail, DNS

## **2.2 The Web and HTTP**
**2.2.1 Overview of HTTP**
- The HyperText Transfer Protocol (HTTP), the Web ' s application-layer protocol, is at the heart of the Web. It is defined in [RFC 1945] and [RFC 2616].
- A client program and a server program. Talk to each other by exchanging HTTP messages
- Web-browsers, web-servers, URL
- HTTP stateless protocol

**2.2.2 Non-Persistent and Persistent Connection**
- Non-persistent connections
	- Connections of file transmission are stablished serially. Round-trip-time (RTT). - Packet-propagation-delays, packet-queueing delays, packet-processing delays. → Handshake relays. (pipelining).
- persistent connections.
	- A brand-new connection establishes and maintained for each requested object. TCP buffers allocated and TCP variables kept both in the client and server.
	- each object suffers a delivery delay of two RTTs-one RTT to establish the TCP connection and one RTT to request and receive an object.

2.2.3 HTTP Message Format

The HTTP specifications [RFC 1945; RFC 2616; RFC 7540] include the definitions
of the HTTP message formats. There are two types of HTTP messages, request mes-
sages and response messages.
- HTTP Request Message
	- Request line, header line, GET, POST , HEAD, PUT, and DELETE
- HTTP Response Message
	- Status line, six header lines, entity body
	- 200 OK: Request succeeded and the information is returned in the response.
	- 301 Moved Permanently: Requested object has been permanently moved; the new URL is specified in Location: header of the response message. The client software will automatically retrieve the new URL.
	- 400 Bad Request: This is a generic error code indicating that the request could not be understood by the server
	- 404 Not Found: The requested document does not exist on this server.
	- 505 HTTP Version Not Supported: The requested HTTP protocol version is not supported by the server.
**2.2.4 User-Server Interaction: Cookies**
**2.2.5 Web Caching**
1. The browser establishes a TCP connection to the Web cache and sends an HTTP request for the object to the Web cache.
2. The Web cache checks to see if it has a copy of the object stored locally. If it does, the Web cache returns the object within an HTTP response message to the client browser.
3. If the Web cache does not have the object, the Web cache opens a TCP connection to the origin server, that is, to www. some school . e du . The Web cache then sends an HTTP request for the object into the cache-to-server TCP connection. After receiving this request, the origin server sends the object within an HTTP response to the Web cache.
4. When the Web cache receives the object, it stores a copy in its local storage and sends a copy, within an HTTP response message, to the client browser (over the existing TCP connection between the client browser and the Web cache).

Let's now do a very crude calculation to estimate this delay. The traffic intensity on the LAN is **(15 requests/sec)· (1 Mbits/request)/(100 Mbps) = 0.15** whereas the traffic intensity on the access link (from the Internet router to institution router) is **(15 requests/sec)· (1 Mbits/request)/(15 Mbps) = 1**

Through the use of **Content Distribution Networks (CDNs)**, Web caches are
increasingly playing an important role in the Internet. A CDN company installs many
geographically distributed caches throughout the Internet, thereby localizing much of
the traffic. **The Conditional GET**

## **2.3 The Web and HTTP**
**User agents**, **mail servers**, and the **Simple Mail Transfer Protocol (SMTP). Message queue.**

**2.3.1 SMTP**
1. Alice invokes her user agent for e-mail, provides Bob's e-mail address (for example, bob@someschool .e du), composes a message, and instructs the user agent to send the message.
2. Alice's user agent sends the message to her mail server, where it is placed in a message queue.
3. The client side of SMTP, running on Alice's mail server, sees the message in the message queue. It opens a TCP connection to an SMTP server, running on Bob's mail server.
4. After some initial SMTP handshaking, the SMTP client sends Alice's message into the TCP connection 
5. At Bob's mail server, the server side of SMTP receives the message. Bob's mail server then places the message in Bob's mailbox.
6. Bob invokes his user agent to read the message at his convenience.

**2.3.2 Comparison with HTTP**
First, HTTP is mainly a **pull protocol** someone loads information on a Web server and users use HTTP to pull the information from the server at their convenience. In particular,
the TCP connection is initiated by the machine that wants to receive the file. On the
other hand, SMTP is primarily a **push protocol**.

**2.3.3 Mail Message Formats**
**2.3.4 Mail Access Protocols**
**Post Office Protocol-Version 3 (POP3), Internet Mail Access Protocol (IMAP),** and HTTP.
POP3 is a mail service Cool.
IMAP is a mail protocol, allow users to create folders and move messages from one to another.
Web-Based E-Mail using HTTPs

## **2.4 DNS - The Internet’s Directory Service**
Hostname for IP addresses
**2.4.1 Services Provided by DNS**
- **Domain name system (DNS).** The DNS is (1) a distributed database implemented in a hierarchy of** DNS servers,**
- **Host aliasing, canonical hostname**
- **Mail server aliasing**
- **Load distribution**
**2.4.2 Overview of How DNS Work**
- **A single point of failure**
- **Traffic volume**
- **Distant centralized database**
- **Maintenance**

- **A Distributed, Hierarchical Database**
- **Root DNS servers, Top-level domain (TLD) server.**
- **Authoritative DNS servers**
- **Local DNS server**

- **DNS Caching**
**2.4.3 DNS Records and Messages**
- **Resource records (RRs)** provide hostname-to-IP address mappings.
- **TTL** time to live of the resource record.
	- **Type=A**: name - hostname, value - ip address.
	- **Type=NS**: name - domain, value - hostname
	- **Type=CNAME**: value is canonical hostname for the alias hostname name
	- **Type=MX**: value is canonical hostname of a mail server that has an alies hostname name

- **DNS messages:**
![](https://lh4.googleusercontent.com/ZGEu0qJvS_ifk6Z55yya_JP7LBxynOYrC313oCntSLF_xgCrBBHr65IVp9ZH36p867iAc0STGRxYbA5k-GYpCy-0_kTILS6rmXbTm2_sdXRV6xL0osoobWHFxL7jWMHJ6idR9KBfPtNlMCHnqw)
## **2.5 DNS - Peer-to-Peer File Distribution**
**Scalability of P2P Architectures**
Let's first determine the distribution time for the client-server architecture,
which we denote by **D_cs**. In the client-server architecture, none of the peers aids in
distributing the file. We make the following observations:
- The server must transmit one copy of the file to each of the **N** peers. Thus the server must transmit **NF** bits. Since the server's upload rate is us, the time to distribute the file must be at least **NF/u_s**
- Let **d_min** denote the download rate of the peer with the lowest download rate, that is, **d_min = min(d_1, d_p, ... , d_N)**. The peer with the lowest download rate cannot obtain all **F** bits of the file in less than **F/d_min** seconds. Thus the minimum distribution time is at least **F/d_min**. Putting these two observations together, we obtain
**D_cs >= max(NF/u_s,  F/d_min)**
- This provides a lower bound on the minimum distribution time for the client-server architecture. In the homework problems you will be asked to show that the server can schedule its transmissions so that the lower bound is actually achieved. So let’s take this lower bound provided above as the actual distribution time, that is,
**D_cs = max(NF/u_s,  F/d_min)**
So, for example, if the number of peers from one week to the next increases
a thousand-fold from a thousand to a million, the time required to distribute the file
to all peers increases by 1,000
- At the beginning of the distribution, only the server has the file. To get this file into the community of peers, the server must send each bit of the file at least once into its access link. Thus, the minimum distribution time is at least **F/u_s** (Unlike the client-server scheme, a bit sent once by the server may not have to be sent by the server again, as the peers may redistribute the bit among themselves.)
- As with the client-server architecture, the peer with the lowest download rate cannot obtain all **F** bits of the file in less than **F/d_min** seconds. Thus the minimum distribution time is at least **F/d_min**
- Finally, observe that the total upload capacity of the system as a whole is equal to the upload rate of the server plus the upload rates of each of the individual peers, that is, **u_total = u_s + u_1 + · · · + u_N**· The system must deliver (upload) **F** bits to each of the **N** peers, thus delivering a total of **NF** bits. This cannot be done at a rate faster than **u_total**. Thus, the minimum distribution time is also at least **NF/(u_s + u_1 + · · · + u_N).**
Putting these three observations together, we obtain the minimum distribution
time for P2P, denoted by **D_p2p**·
**D_p2p >= max( F/u_s , F/d_min, NF/(u_s + sum(u_i for i in N)) )**
Actual minimum distribution time, that is:
**D_p2p = max( F/u_s , F/d_min, NF/(u_s + sum(u_i for i in N)) )**

**BitTorrent - Torrent, chunks, tracker**
When a peer joins a torrent, it registers itself with the tracker and periodically informs the tracker that it is still in the torrent. In this manner, the tracker keeps track of the peers that are participating in the torrent.
When a new peer, Alice, joins the torrent, the tracker randomly selects a subset of peers (for concreteness, say 50) from the set of participating peers, and sends the IP addresses of these 50 peers to Alice. Possessing this list of peers, Alice attempts to establish concurrent TCP connections with all the peers on this list. Let’s call all the peers with which Alice succeeds in establishing a TCP connection "neighboring peers."(In Figure 2.24, Alice is shown to have only
three neighboring peers. Normally, she would have many more.) As time evolves, some of these peers may leave and other peers ( outside the initial 50) may attempt to establish TCP connections with Alice. So a peer' s neighboring peers will fluctuate over time. At any given time, each peer will have a subset of chunks from the file, with different peers having different subsets. Periodically, Alice will ask each of her neighboring peers (over the TCP connections) for the list of the chunks they have. If Alice has **L** different neighbors, she will obtain **L** lists of chunks. With this knowledge, Alice will issue requests (again over the TCP connections) for chunks she currently does not have.
**Unchoked and/or optimistically unchoked.**
**Distributed Hast Table (DHT).** A distributed hash table is a simple database,
with the database records being distributed over the peers in a P2P system. DHTs have
been widely implemented (e.g., in BitTorrent) and have been the subject of extensive
Research.

## **2.6 Video Streaming and Content Distribution Networks**
**2.6.1 Internet Video**
**2.6.2 HTTP Streaming and DASH**
**Dynamic Adaptive Streaming over HTTP (DASH)**. In DASH, the video is encoded into several different versions, with each version having a different bit rate and, correspondingly, a different quality level. The client dynamically requests chunks of video segments of a few seconds in
length. When the amount of available bandwidth is high, the client naturally selects
chunks from a high-rate version; and when the available bandwidth is low, it naturally
selects from a low-rate version. The client selects different chunks one at a time with
HTTP GET request messages. **Manifest file**
**2.6.3 Content Distribution Networks**
In order to meet the challenge of distributing massive amounts of video data
to users distributed around the world, almost all major video-streaming companies
make use of** Content Distribution Networks (CDNs). (private CON and third-party CDN)**
- **Enter Deep** - philosophy Akamai
- **Bring Home** - philosophy LimeLight, ISP at home. IXPS (Internet Exchange Points)
**CLUSTERS**
**Cluster Selection Strategies**
- **Geographically closest**
- **Real-time measurements**
**2.6.4 Case Studies: Netflix, YouTube, and Kankan**
## **2.7 Socket Programming: Creating Network Applications**
**2.7.1 Socket Programming with UDP**
- UDPClient.py
from socket import*
serverName = 'hostname '
serverPort = 12000
clientSocket = socket(AF_INET, SOCK_ DGRAM) # use IPv4, UDP socket
message= raw_ input( 'Input lowercase sentence:' )
clientSocket.sendto(message.encode(), (serverName , serverPort))
modifiedMessage, serverAddress = clientSocket.recvfrom(2048)
print(modifiedMessage. decode())
clientSocket.close()
- UDPServer.py
	From socket import *
	serverPort = 12000
	serverSocket = socket(AF_INET, SOCK_DGRAM)
	serverSocket.bind((‘’, serverport))
	print(“The server is ready to recieve”)
	While True:
		message, clientAddress = serverSocket.recvfrom(2048)
		modifiedMessage = message.decode.upper()
		serverSocket.sendto(modifiedMessage.encode(), clientAddress)
**2.7.2 Socket Programming with TCP**
- TCPClient.py
from socket import*
serverName = ’servername'
serverPort = 12000
clientSocket = socket(AF_INET, SOCK_ STREAM) # use IPv4, TCP socket
message= raw_ input( 'Input lowercase sentence:' )
clientSocket.send(sentence.encode())
modifiedSentence = clientSocket.recv(1048)
print(‘From server:’, modifiedSentence.decode())
clientSocket.close()
- TCPServer.py
	From socket import *
	serverPort = 12000
	serverSocket = socket(AF_INET, SOCK_STREAM)
	serverSocket.bind((‘’, serverPort))
	serverSocket.listen(1) # 1 queued connection only
	print(“The server is ready to receive”)
	While True:
		connectionSocket, addr = serverSocket.accept()
		sentence = connectionSocket.recv(1048).decode()
		capitalizedSentence = sentence.upper()
		connectionSocket.send(capitalizedSentence.encode())
**			**connectionSocket.close()
















# **Lecture 4 - chapter 2 recap**
## **File distribution: Client-server vs. P2P**
- How much time to distribute file from one server to N peers?
- **Client-server**
	- Server sequentially sends N copies in **NF/u_2** time
	- Client-i takes **F/d_f** time to download
	- Time to distribute F to N clients using client/server approach:
		- **Dcs >= max { NF/u_s , F/d_min }**
		- Tiden det tar for server å sende **N** kopier av filen med størrelse **F** (bits) inn i nettet når kapasiteten den veien er **U_s** (bits / sec).
		- Tiden det tar for klienten med laveste nedlastings hastighet **d_min** å hente filen.

- P2P
	- Server must send at least one copy (**F/u_s** time )
	- Client i takes **F/d_i** time to download 
	- **NF** bits must be downloaded (aggregate)
	- Fastest possible upload rate: **u_s + Sum(u_i)**
	- **DP2P >= max { F/us , F/dmin , NF/(us + Sui )}**



