---
layout: post
tags: TTM4110
categories: TTM4110
---

# **CH3 Transport Layer**

Residing between the application and networks layers. Critical role of providing communication services directly to the application processes running on different hosts.
- Alternate between discussions of transport-layer principles
- Discussions of how these principles are implemented in existing protocols; TCP / UDP.
- Relationship between the transport and network layers - examining the first critical function of the transport layer - extending the network layer’s delivery service between two end systems to a delivery service between two application-layer processes running on the end systems.
	- Internet connectionless UDP
	- Most fundamental problems in computer networking - how two entities can communicate reliably over a medium that may lose and corrupt data.
		- Array of techniques that transport protocols use to solve this problem ^
		- Internet’s connection-oriented transport protocol TCP
	- Second fundamentally important problem in networking - controlling the transmission rate of transport-layer entities in order to avoid, or recover from congestion within the network. → **Congestion control.**

## **3.1 Introduction and Transport-Layer Services**
Transport-layer protocol provides for **logical communication** between application processes running on different hosts. 
- Logical communication: from an application’s perspective, it is as if the hosts running in the processes were directly connected: in reality, the hosts may be on opposite sides of the planet, connected via numerous routers and a wide range of link types
- Application processes use the logical communication provided by the transport layer to send messages to each other, free from the worry of the details of the physical infrastructure to carry these messages.
- Transport-layer protocols are implemented in the end systems but not in network routers. 
	- Sending: the transport layer converts the application-layer messages it receives from a sending application process into transport-layer packets, known as transport-layer **segments** in the Internet terminology. → breaking the app messages into smaller chunks and adding a transport-layer header to each chunk to create the transport-layer segment.
	- Passes: segment sent to the network layer at the sending end system → encapsulated within a network-layer packet. (a datagram) and sent to the destination.
	- Receiving: the network layer extracts the transport-layer segment from the datagram and passes the segment up to the transport layer. The transport layer then processes the received segment, making the data in the segment available to the receiving application.

**3.1.1 Relationship Between Transport and Network Layers**
A transport-layer protocol provides logical communication between processes running on diff. Hosts.
A network layer provides logical communication between hosts.
**EXAMPLE**: Household sending posts/letters
- **Application messages** => Letters in envelopes
- **Processes** => cousins
- **Hosts (end-systems)** => Houses
- **Transport-layer protocol** => Ann and Bill among the cousins is the one providing the letters/ pickup and delivering to postal service. → Constrained by the postal service on quantity and time taken to deliver to the cousins.
- **Network-layer protocol** => Postal service (including mail carriers) move from house to house

**3.1.2 Overview of the Transport Layer in the Internet**
- User Datagram Protocol (**UDP**) - unreliable connectionless service to the invoking apps.
- Transmission Control Protocol (**TCP**) - reliable connection-oriented service to the invoking apps.
- **Transport-layer packets** = **segment**
- **Network-layer packets** = **datagram**
- Network-layer quick facts:
	- Network-layer protocol : IP - Internet Protocol, provides logical communication between hosts.
	- **Best-effort delivery service**, makes it’s “best effort” to deliver segments between communicating hosts, but no guarantee. **Unreliable service**.
- **UDP & TCP services**:
	- Extend IP’s delivery service between two end systems to a delivery service between two processes running on the end systems. Extending host-to-host delivery to process-to-process delivery: (**transport-layer multiplexing** and **demultiplexing**).
	- Integrity checking, error detection fields in segment header. (process-to-process data delivery and error checking - UDP only has.) UDP is also unreliable.
- **TCP perks**:
	- **Reliable data transfer** - flow control, sequence numbers, acknowledgement, timers.
	- Ensures data is delivered from sending process to receiving process, correctly and in order. Converts IP’s unreliable service between end systems into a reliable data transport service between processes.
	- **Congestion control**, Internet as a whole, prevents any one TCP connection from swamping the links and routers between communicating hosts with an excessive amount of traffic. Gives each connection traversing a congested link and equal share of the link bandwidth → By regulating the rate at which the sending sides of TCP connections can send traffic into the network.
	- UDP is unregulated, can send at any rate and for as long it pleases.
## **3.2 Multiplexing and Demultiplexing**
TL;DR:
- UDP works like ports, ports is assigned to socket. Multiplex reads info about which port. Demultiplexing does the work delivering.
Extending the host-to-host delivery service provided by the network layer to a process-to-process delivery service for applications running on the hosts. → Needed for all computer networks.
- Destination host: Transport layer receives segments form the network layer just below. It has the responsibility of delivering the data in these segments to the appropriate application process running in the host.
	- **Sockets** - door through which data passes from the network to the process and through which data passes from the process to the network.
- Receiving host: Directs and incoming transport-layer segment to the appropriate socket. Each transport-layer segment has a set of fields in the segment for this purpose.
	- Examines these fields ^ to identify the receiving socket and then directs the segment to that socket.
	- **Demultiplexing**: job of delivering the data in a transport-layer segment to the correct socket.
	- **Multiplexing**: Job of gathering data chunks at the source host from different sockets, encapsulating each data chunk with header info to create segments, and passing the segments to the network layer.
	- Transport-layer multiplexing requires (1) that socket have unique identifiers, and (2) that each segment have special fields that indicate the socket to which the segment is to be delivered. (**source port number field**) and (**destination port number field**). Port number ranges from 0 to 65535 and is 16-bit number
	- The ports from 0 to 1023 are **well-known port numbers**, and are restricted/reserved.
	- Demultiplexing works by that each socket in the host is assigned a port number, and when a segment arrives at the host, the transport layer examines the destination port number in the segment and directs the segment to the corresponding socket. The segment’s data then passes through the socket into the attached process. (THIS IS ALL UDP DOES) TCP got more to it :D 

**Connectionless Multiplexing and Demultiplexing**
UDP socket is identified by a two-tuple:destination IP address and a destination port number
Host uses only two to direct (demultiplex) the segment.
Source IP address and source port number is also used but only serves as part of a “return address” 
- Only if two (destination IP address and a destination port number) is verified will it direct to be demultiplexed after it’s known

**Connection-Oriented Multiplexing and Demultiplexing**
TCP socket is identified by a four-tuple: (source IP address, source port number, destination IP address, destination port number). Demultiplex: uses all four values to direct the segment to the appropriate socket. 
- Only if all four is verified will it direct to be demultiplexed after it’s known
_**Use nmap to port scan**_

**Web servers and TCP**
Example: Apache web server: port 80. All segments from browser to the web server have destination port 80. Both the initial connection-establishment segments and the segments carrying HTTP request messages.
- Threading : lightweight subprocess that creates new sockets from:  persistent HTTP vs non-persistent HTTP

## **3.3 Connectionless Transport UDP**
UDP:
- multiplexing/demultiplexing
- Light error checking
- Adds nothing to IP
- Directly talking with IP if used as transport protocol
- Takes messages from the app process, attaches source and destination port number fields for the multiplexing/demultiplexing service.
- adds two other small fields, and passes the resulting segment to the network layer.
- Network layer encapsulates the transport-layer segment into an IP datagram and then makes a best-effort attempt to deliver the segment to the receiving host.
- If the segment arrives at the receiving host, UDP uses the destination port number to deliver the segment’s data to the correct application process, no handshaking between sending/receiving. → CONNECTIONLESS (DNS)
WHY UDP?
- **Finer application-level control over what data is sent, and when**.UDP packages the data given and immediately passes the segment to the network layer. TCP on the other hand has a congestion-control mechanism that throttles the transport-layer TCP sender when one or more links between the source and destination hosts become excessively congested. Continues to resend segment until it’s acknowledged by the destination, regardless of time. → RTA can sometimes use UDP for speed.
- **No connection establishment**. TCP uses a 3-way handshake before it starts to transfer data. UDP just blasts away, no delay (why DNS use UDP).
- **No connection state**. TCP maintains connection state in the end systems (receive and send buffers, congestion-control parameters, and sequence and acknowledgement number parameters.) UDP got none of that shit, thus it supports more active clients
- **Small packet header overhead**: TCP segment has 20 bytes of header overhead in every segment, UDP got 8 bytes.
Example of UDP use:
- Network management SNMP
- Some speed multimedia apps (unsafe tho)
- RTA / Internet phone and video call
- Remote file server, name translation

**3.3.1 UDP Segment Structure**


**3.3.2 UDP Checksum**
- Error detection, determine whether bits within UDp segments have been altered
- As an example. Suppose that we have the following three 16-bit words:
IF no errors are introduced into the packet, then the sum at the receiver will be 11111111111111. If one bits is a 0, then an error has happened.
- Given that neither link-by-link reliability nor in-memory error detection is guaranteed, UDP must provide error detection at the transport layer, on _an end-end basis_. **End-end principle.**









## **3.4 Principles of Reliable Data Transfer**
- Occurs not only at the transport layer, but also the link layer and application layer as well.
- Responsibility of a reliable data transfer protocol to implement service abstraction of checksum/error checking. But made difficult by layer below a reliable data transfer protocol may be unreliable. Example TCP on top of IP end-to-end network layer.
![](https://lh4.googleusercontent.com/sRKXdgtZAYFOWHCXKmw-Ef4McAgWkOx52I3k_sq9QLzkleuuZmuiu4TS27i1A7UqIPhg2e2hbCILDD7Pg6GvqQklDT_6GkrgoqbgA8oMBrcAaH6VKjiL4q0aa5RSAvZl7KM0vOWXH8vKQI_Eag)
- Consider only **Unidirectional data transfer**: from sending to the receiving side.
- **Bidirectional** (full-duplex) **data transfer** is tedious to explain. But almost the same.

**3.4.1 Building a Reliable Data Transfer Protocol**
**Reliable Data Transfer over a Perfectly Reliable Channel: rdt1.0**
Finite-state machine (**FSM**) - defines the operation of the sender/receiver, exists separately.
Sending:
- Accepts data from the upper layer via the rdt_send(data) event, 
- creates a packet containing the data make_pkt(data) and sends the packet into the channel procedurally.
Receiving:
- Receives from the underlying channel via rdt_rcv(packet), 
- Removes the data from the packet extract(packet, data) 
- passes the data to the upper layer via deliver_data(data)
**Reliable Data Transfer over a Channel with Bit Errors: rdt2.0**
- **Positive acknowledgement** (“OK”) and **negative acknowledgement** (“Please repeat that.”)
- **ARQ** (**Automatic Repeat reQuest**) protocols
	- Error detection - detect bit errors something like checksum
	- Receiver feedback - provide explicit feedback to the sender. The positive (ACK) and negative (NAK) acknowledgement replies in the message-dictation scenario are examples of such feedback. → sending ACK and NAK packets from and back, usually one bit long (0 or 1).
	- Retransmission - if received in error at the receiver will be retransmitted by the sender
- But ACK / NAK may be corrupted! Handling examples:
	- “What did you say?” - fail interpretation
	- Error handling using checksum or something, but also recover from bit errors.
	- Simply resend the ACK/NAK again, introduces **duplicate packets** into the sender-to-receiver channel. Doesn’t know if the sent contains new data or is a transmission.
	- **The real fix is**:
		- Add a new field to the data packet and have the sender number its data packets by putting a sequence number into the field. The receiver then need only check the sequence number to determine whether or not the received packet is a retransmission.
**Reliable Data Transfer over a Lossy Channel with Bit Errors: rdt3.0 (Alternating-bit protocol)**
In addition to corrupting bits, packets can be lost as well.
- Adding a new protocol mechanism
- Wait amount of time? **Countdown timer**?
	- Yes
<span style='color:#ff0000;'>**3.4.2 Pipelined Reliable Data Transfer Protocols**</span>
Rdt3.0 is a functionally correct protocol, stop-and-wait protocol.
RTT, 30 milliseconds, R of 1 Gbps (10**9 bits/sec) with L of 1000 bytes (8000 bits/packet). Header and data time to transmit the packet:
**d_trans = L/R = (8000 bits/packet) / (10**9 bits/sec) = 8 microseconds**
For ACK, the **t = RTT + L/R = 30.008 msec.**
Stop-ajd-wait protocol dismal sender utilization, U_sender of 
**U_sender = (L/R) / (RTT + L/R) = .008 / 30.008 = 0.00027**
- Since the many in-transit sender-to-receiver packets can be visualized as filling a pipeline, this technique is known as pipelining: Reliable data transfer protocols:
	- The range of sequence numbers must be increased, since each in-transit packet (not counting retransmissions) must have a unique sequence number and there may be multiple, in-transit, unacknowledged packets.
	- The sender and receiver sides of the protocols may have to buffer more than one packet. Minimally, the sender will have to buffer packets that have been transmitted but not yet acknowledged. Buffering of correctly received packets may also be needed at the receiver, as discussed below.
	- The range of sequence numbers needed and the buffering requirements will depend on the manner in which a data transfer protocol responds to lost, corrupted, and overly delayed packets. Two basic approaches toward pipelined error recovery can be identified:** Go-Back-N** and **selective repeat.**
<span style='color:#ff0000;'>**3.4.3 Go-Back-N (GBN)**</span>
**Go-Back-N (GBN) protocol,** the sender is allowed to transmit multiple packets (when available) without waiting for an acknowledgement, but is constrained to have no more than some maximum allowable number, N, of unacknowledged packets in the pipeline.
- Acknowledged packets can be viewed as a window of size N so: N is the **window size**, GBN protocol itself a **sliding-window protocol**
- Allows the sender to potentially “fill the pipeline”
- However performance problems: A single packet error can cause retransmit a large number of packets, unnecessarily
<span style='color:#ff0000;'>**3.4.4 Selective Repeat (SR)**</span>
- Selective-repeat protocols avoid unnecessary retransmission by having the sender retransmit only those packets that it suspects were received in error (lost/corrupted) at the receiver. Individually acknowledge correctly received packets.
- Window size N, but already received ACKs for some of the packets in the window.

**Mechanism**: Use, Comments
**Checksum**: Used to detect bit errors in a transmitted packet.
**Timer**: Used to timeout/retransmit a packet, possibly because the packet (or it’s ACK) was lost within the channel. Because timeouts can occur when a packet is delayed but not lost (premature timeout), or when a packet has been received by the receiver but the receiver-to-sender ACK has been lost, duplicate copies of a packet may be received by a receiver.
**Sequence number**: Used for sequential numbering of packets of data flowing from sender to receiver. Gaps in the sequence numbers of received packets allow the receiver to detect a
lost packet. Packets with duplicate sequence numbers allow the receiver to detect
duplicate copies of a packet.
Acknowledgment: Used by the receiver to tell the sender that a packet or set of packets has been received correctly. Acknowledgments will typically carry the sequence number of
the packet or packets being acknowledged. Acknowledgments may be individual
or cumulative, depending on the protocol.
**Negative acknowledgment**: Used by the receiver to tell the sender that a packet has not been received correctly. Negative acknowledgments will typically carry the sequence number
of the packet that was not received correctly.

**Window, pipelining**: The sender may be restricted to sending only packets with sequence numbers that fall within a given range. By allowing multiple packets to be transmitted but not yet acknowledged, sender utilization can be increased over a stop-and-wait mode of operation. We'll see shortly that the window size may be set on the basis of the receiver's ability to receive and buffer messages, or the level of congestion in the network, or both.

## **3.5 Connection-Oriented Transport: TCP**
- Error detection, retransmission, cumulative acknowledgments, timers, header fields for sequence and acknowledgment numbers.
**3.5.1 The TCP Connection**
TCP: **connection-oriented**, one app process can begin to send data to another, the two processes must first “handshake” with each other. They must send preliminary segments to each other to establish the parameters of the ensuing data transfer. Both sides will initialize many TCP state variables.
- Not an end-to-end TDM or FDM circuit as in circuit-switched network.
- “Connection” is a logical one, with common state residing only in the TCPs in the two communicating end systems.
- TCP protocol runs only in the end systems and not in the intermediate network elements (routers and link-layer switches). 
- The intermediate network elements do not maintain TCP connection state, oblivious to TCP connections, only datagrams.
- **Full-duplex service**: If there is a TCP connection between Process A on one host and Process B on another host, then application-layer data can flow from Process A to Process B at the same time as application-layer data flows from Process B to Process A.
- **Point-to-point**: between a single sender and a single receiver. So-called "multicasting" (see the online supplementary materials for this text)- the transfer of data from one sender to many receivers in a single send operation- is not possible with TCP. With TCP, two hosts are company and three are a crowd!
- Client process, server process.
1. Client app process first informs the client transport layer that it wants to establish a connection (clientSocket.connect((servername,serverport)))
2. TCP in the client then proceeds to establish a TCP connection with TCP in the server. By the client sending a first special TCP segment, the server responds with a seconds special TCP segment. Finally the client responds again with a third special segment. (first and seconds carry no payload, no application-layer data, the third carries a payload.) **Three-way handshake**
3. Established, now data can be sent to each other: The client process passes a stream of data through the socket to the TCP running in the client. 
4. TCP Directs the data to the connection’s **send buffer**, a buffer set aside during the 3-way handshake. From time to time (at its own convenience), TCP will grab chunks of data from the send buffer and pass the data to the network layer.
5. The max amount of data that can be grabbed and placed in a segment is limited by the **maximum segment size (MSS)**. Set by first determining the length of the largest link-layer frame that can be sent by (**maximum transmission unit (MTU)**) and then setting the MSS to ensure that a TCP segment (when encapsulated in an IP datagram) + TCP/IP header will fit into a single link-layer frame. _MSS is typically 1460 bytes_. 
6. TCP pairs each chunk of client data with a TCP header, forming **TCP segments**. Passed down to the network layer, separately encapsulated within network-layer IP datagram.
7. IP datagram er then sent into the network, and when TCP receives a segment at the other end, it is the placed in the TCP connection’s receive buffer
**3.5.2 TCP Segment Structure**
**BOTH UDP AND TCP:**
- **Source and destination port numbers** (multiplexing / demultiplexing data from/to upper-layer applications)
- **Checksum field**
**TCP ONLY:**
- The 32-bit s**equence number field** and the 32-bit **acknowledgment number field** are used by the TCP sender and receiver in implementing a reliable data transfer service, as discussed below.
- The 16-bit **receive window** field is used for flow control. We will see shortly that it is used to indicate the number of bytes that a receiver is willing to accept.
- The 4-bit **header length field** specifies the length of the TCP header in 32-bit words. The TCP header can be of variable length due to the TCP options field. (Typically, the options field is empty, so that the length of the typical TCP header
- is 20 bytes.)
- The optional and variable-length **options field** is used when a sender and receiver negotiate the maximum segment size (MSS) or as a window scaling factor for use in high-speed networks. A time-stamping option is also defined. See RFC 854 and RFC 1323 for additional details.
- The **flag field** contains 6 bits. The **ACK bit** is used to indicate that the value carried in the acknowledgment field is valid; that is, the segment contains an acknowledgment for a segment that has been successfully received. The **RST**, **SYN**, and **FIN** bits are used for connection setup and teardown, as we will discuss at the end of this section. The **CWR** and **ECE** bits are used in explicit congestion notification, as discussed in Section 3.7.2. Setting the **PSH** bit indicates that the receiver should pass the data to the upper layer immediately. Finally, the **URG** bit is used to indicate that there is data in this segment that the sending-side upper-layer entity has marked as "urgent. " The location of the last byte of this urgent data is indicated by the 16-bit urgent data pointer field. TCP must inform the receiving-side upper-layer entity when urgent data exists and pass it a pointer to the end of the urgent data. (In practice, the PSH, URG, and the urgent data pointer are not used. However, we mention these fields for completeness.)
**Sequence Numbers and Acknowledgement Numbers**
- Critical part of TCP’s reliable data transfer service
- **Sequence number for a segment** → byte-stream number of the first byte in the segment.
	- Suppose that the data stream consists of a file consisting of 500.000 bytes, that the MSS is 1.000 bytes, and that the first byte of the data stream is numbered 0. TCP Constructs 500 segments out of the data stream, 1.000N
- Acknowledgment number that Host A puts in its segment is the sequence number of the next byte Host A is expecting from Host B.
	- Suppose Host a has received 0 through 535 from B and it’s about to send a segment to Host B. Host A is waiting for byte 536 and the subsequent bytes in Host B’s data stream. So Host A pts 536 in the acknowledgement number field of the segment it sends to B.
- TCP only acknowledges bytes up to the first missing byte in the stream, provides **cumulative acknowledgment**.
- The receiver keeps the out-of-order bytes and waits for the missing bytes to fill in the gaps.
**Telnet: A Case study for Sequence and Acknowledgment numbers**
Acknowledgment for client-to-server data carrying server-to-client: **Piggybacked** on the server-to-client data segment.

**3.5.3 Round-Trip Time Estimation and Timeout**
TCP alike rdt protocol uses a timeout/retransmit mechanism to recover from lost segments.
- Length of the timeout interval.
	- Larger than the connection’s round-trip time (RTT) (time from when the segment is sent until it’s acknowledged.)
**Estimating the Round-trip Time**
_Var a = 0.125_
**EstimatedRTT = (1 - a) * EstimatedRTT + a * SampleRTT**
**EstimatedRTT = 0.875 * EstimatedRTT + 0.125 * SampleRTT**
EstimatedRTT  is a weighted average of the SampleRTT values.
The average is called an **exponential weighted moving average (EWMA)**

- Measure of the variability of the RTT, DevRTT as an estimate of how much SampleRTT typically deviates from EstimatedRTT
_Var b = 0.25_
**DevRTT = (1 - b) * DevRTT + b + | SampleRTT - EstimatedRTT |**

**Setting and Managing the Retransmission Timeout Interval**
**TimeoutInterval = EstimatedRTT + 4 * DevRTT**
Initial TimeoutInterval value of 1s is recommended.

**3.5.4 Reliable Data Transfer**
**Reliable data transfer service** on top of IP’s unreliable best-effort service.
- Ensures that the data stream that a process reads out of its TCP receive buffer is uncorrupted, without gaps, without duplication, and in sequence.
- Single retransmission timer
**A Few Interesting Scenarios**
1. Host A sends one segment to Host B. Suppose that this segment has sequence number 92 and contains 8 bytes of data. After sending this segment, Host A waits for a segment from B with acknowledgment number 100. Although the segment from A is received at B, the acknowledgment from B to A gets lost. In this case, the timeout event occurs, and Host A retransmits the same segment. Of course, when Host B receives the retransmission, it observes from the sequence number that the segment contains data that has already been received. Thus, TCP in Host B will discard the bytes in the retransmitted segment.
2. Suppose Host A sends the two segments, exactly as in the second example. The acknowledgment of the first segment is lost in the network, but just before the timeout event, Host A receives an acknowledgment with acknowledgment number 120. Host A therefore knows that Host B has received everything up through byte 119; so Host A does not resend either of the two segments. 
**Doubling the Timeout Interval**
- Few modifications that most TCP implementations emplot, length of the timeout interval after a timer expiration. Rather than deriving it from the last EstimatedRTT and DevRTT the next TimeoutInterval is set to twice the previous value. The interval grows exponentially after each retransmission.
**Fast retransmit**
- Timeout period can be relatively long on timeout-triggered retransmissions. 
- Because a sender often sends a large number of segments back to back, if one segment is lost, there will likely be many back-to-back duplicate ACKs. If the TCP sender receives three duplicate ACKs for the same data, it takes this as an indication that the segment following the segment that has been ACKed three times has been lost. In the case that three duplicate ACKs are received, the TCP sender performs a fast retransmit [RFC5681], retransmitting the missing segment before that segment's timer expires. This is shown in Figure 3.37, where the second segment is lost, then retransmitted before its timer expires.
![](https://lh3.googleusercontent.com/l_jQp25V27ZqMrgGTLB4ZeL5KyE6SYsezWYsIyVw5ilf-3BJgXCORzsgXIBCryG8ImPbtD5CLSMxr9U6kbcqRLVGfW3d4B5ChMER1O5OubguoDZrknvULPOnTNtLzdThqctouD_-vx93wHXMuA)
**Go-Back-N or Selective Repeat?**
- Hybrid of GBN and SR protocols

**3.5.5 Flow Control**
**Flow-control service** to eliminate the possibility of the sender overflowing the receiver’s buffer. Speed-matching service, matching the rate at which the sender is sending against the rate at which the receiving application is reading. → **Congestion control.**
- Works by having the sender maintain a variable called the receive window. Used to give the sender an idea of how much free buffer space is available at the receiver. Since Full-duplex, the sender at each side of the connection maintains a distinct receive window.
- Suppose that Host A is sending a large file to Host B over a TCP connection . Host B allocates a receive buffer to this connection; denote its size by RcvBuffer. From time to time, the application process in Host B reads from the buffer. Define the following variables:
- _LastByteRead_: the number of the last byte in the data stream read from the buffer by the application process in B
- _LastByteRcvd_: the number of the last byte in the data stream that has arrived from the network and has been placed in the receive buffer at B
- Because TCP is not permitted to overflow the allocated buffer, we must have
**LastByteRcvd - LastByteRead <= RcvBuffer**
- The receive window, denoted rwnd is set to the amount of spare room in the buffer:
**Rwnd = RcvBuffer - [LastByteRcvd - LastByteRead]**
**LastByteSent - LastByteAcked <= rwnd**
![](https://lh5.googleusercontent.com/8muWm33PxMGfUIaaJnCFmDw24QlKDTB3kX56-NwJ8CrEAhedDdFLyMXx8qQLEbWD57KiFe9J9Pk0PIeBNmxzTL1MtrxUASBTKAKffwG3OQH7wyC8AYSTxgaEwVjVAW59MLr9_LFj-lSdeBGH4g)
**The online site at** [**http://www.awl.com/kurose-ross** ](http://www.awl.com/kurose-ross)**for this book provides an**
**interactive Java applet that illustrates the operation of the TCP receive window.**

**3.5.4 TCP connection management**
- **Established and torn down.**
1. The client-side TCP first sends a special TCP segment to the server-side TCP. This special segment contains no application-layer data. But one of the flag bits in the segment's header, the SYN bit, is set to l. For this reason, this special segment is referred to as a SYN segment. In addition, the client randomly chooses an initial sequence number (_client_isn_) and puts this number in the sequence number field of the initial TCP SYN segment. This segment is encapsulated within an IP datagram and sent to the server. There has been considerable interest in properly randomizing the choice of the _client_isn_ in order to avoid certain security attacks [CERT 2001-09].
2. Once the IP datagram containing the TCP SYN segment arrives at the server host (assuming it does arrive!), the server extracts the TCP SYN segment from the datagram, allocates the TCP buffers and variables to the connection, and sends a connection-granted segment to the client TCP. (We'll see in Chapter 8 that the allocation of these buffers and variables before completing the third step of the three-way handshake makes TCP vulnerable to a denial-of-service attack known as SYN flooding.) This connection-granted segment also contains no application-layer data. However, it does contain three important pieces of information in the segment header. First, the SYN bit is set to 1. Second, the acknowledgment field of the TCP segment header is set to _client_isn+1_. Finally, the server chooses its own initial sequence number (_server_isn_) and puts this value in the sequence number field of the TCP segment header. This connection-granted segment is saying, in effect, “I received your SYN packet to start a connection with your initial sequence number, _client_isn_. I agree to establish this connection. My own initial sequence number is _server_isn_.” The connection-granted segment is referred to as a **SYNACK segment.**
3. Upon receiving the SYNACK segment, the client also allocates buffers and variables to the connection. The client host then sends the server yet another segment; this last segment acknowledges the server's connection-granted segment (the client does so by putting the value _server_isn+1_ in the acknowledgment field of the TCP segment header). The SYN bit is set to zero, since the connection is established. This third stage of the three-way handshake may carry client-to-server data in the segment payload.

**→ 3-way handshake!**




## **3.6 Principles of Congestion Control**
Approaches that can be taken to avoid, or react to, network congestion. TCP’s congestion-control algorithm.
**3.6.2 Approaches to Congestion Control**
- **End-to-end congestion control**. In an end-to-end approach to congestion control, the network layer provides no explicit support to the transport layer for congestion-control purposes. Even the presence of network congestion must be inferred by the end systems based only on observed network behavior (for example, packet loss and delay). We'll see shortly in Section 3.7.1 that TCP takes this end-to-end approach toward congestion control, since the IP layer is not required to provide feedback to hosts regarding network congestion. TCP segment loss (as indicated by a timeout or the receipt of three duplicate acknowledgments) is taken as an indication of network congestion, and TCP decreases its window size accordingly. We'll also see a more recent proposal for TCP congestion control that uses increasing round-trip segment delay as an indicator of increased network congestion

- **Network-assisted congestion control**. With network-assisted congestion control, routers provide explicit feedback to the sender and/or receiver regarding the congestion state of the network. This feedback may be as simple as a single bit indicating congestion at a link - an approach taken in the early IBM SNA [Schwartz 1982], DEC DECnet [Jain 1989; Ramakrishnan 1990] architectures, and ATM [Black 1995] network architectures. More sophisticated feedback is also possible. For example, in **ATM Available Bite Rate (ABR)** congestion control, a router informs the sender of the maximum host sending rate it (the router) can support on an outgoing link. As noted above, the Internet-default versions of IP and TCP adopt an end-to-end approach towards congestion control. We'll see, more recently, IP and TCP may also optionally implement network-assisted congestion control.

For network-assisted congestion control, congestion information is typically fed back from the network to the sender in one of two ways, as shown in Figure 3.49. Direct feedback may be sent from a network router to the sender. This form of notification typically takes the form of a choke packet (essentially saying, 'I’m congested!"). The second and more common form of notification occurs when a router marks/updates a field in a packet flowing from sender to receiver to indicate congestion. Upon receipt of a marked packet, the receiver then notifies the sender of the congestion indication. This latter form of notification takes a full round-trip time.


## **3.7 TCP Congestion Control**
The TCP congestion-control mechanism operating at the sender keeps track of an additional variable, the congestion window. The congestion window, denoted
_cwnd_, imposes a constraint on the rate at which a TCP sender can send traffic into
the network. Specifically, the amount of unacknowledged data at a sender may not
exceed the minimum of _cwnd_ and _rwnd_, that is:
**LastByteSent - LastByteAcked <= min(cwnd, rwnd)**

_Thus the sender's send rate is roughly cwnd! RTT bytes/sec. By adjusting_
_the value of cwnd, the sender can therefore adjust the rate at which it sends data into_
_its connection._

Let's next consider how a TCP sender perceives that there is congestion on the
path between itself and the destination. Let us define a "loss event" at a TCP sender
as the occurrence of either a timeout or the receipt of three duplicate ACKs from the
receiver. When there is excessive congestion, then one (or more) router buffers
along the path overflows, causing a datagram (containing a TCP segment) to be
dropped. The dropped datagram, in turn, results in a loss event at the sender-either
a timeout or the receipt of three duplicate ACKs-which is taken by the sender to be
an indication of congestion on the sender-to-receiver path.

- TCP is self-clocking
- Given the mechanism of adjusting the value of cwnd to control the sending rate, the critical question remains: How should a TCP sender determine the rate at which it should send? If TCP senders collectively send too fast, they can congest the network, leading to the type of congestion collapse

- How then do the TCP senders determine their sending rates such that they don't congest the network but at the same time make use of all the available bandwidth? 
- Are TCP senders explicitly coordinated, or is there a distributed approach in which the TCP senders can set their sending rates based only on local information? TCP answers these questions using the following guiding principles:

- **A lost segment implies congestion**, and hence, the TCP sender's rate should be decreased when a segment is lost. A timeout event or the receipt of four acknowledgments for a given segment (one original ACK and then three duplicate ACKs) is interpreted as an implicit "loss event" indication of the segment following the quadruply ACKed segment, triggering a retransmission of the lost segment. From a congestion-control standpoint, the question is how the TCP sender should decrease its congestion window size, and hence its sending rate, in response to this inferred loss event.
- **An acknowledged segment indicates that the network is delivering the sender's segments to the receiver, and hence, the sender's rate can be increased when an ACK arrives for a previously unacknowledged segment.** The arrival of acknowl- edgments is taken as an implicit indication that all the well segments are being successfully delivered from sender to receiver, and the network is thus not congested. The congestion window size can thus be increased.
- **Bandwidth probing**. Given ACKs indicating a congestion-free source-to-destination path and loss events indicating a congested path, TCP 's strategy for adjusting its transmission rate is to increase its rate in response to arTiving ACKs until a loss event occurs, at which point, the transmission rate is decreased. The TCP sender thus increases its transmission rate to probe for the rate at which congestion onset begins, backs off from that rate, and then to begins probing again to see if the congestion onset rate has changed. The TCP sender's behavior is perhaps analogous to the child who requests (and gets) more and more goodies until finally he/she is finally told "No!", backs off a bit, but then begins making requests again shortly afterwards. Note that there is no explicit signaling of congestion state by the network-ACKs and loss events serve as implicit signals-and that each TCP sender acts on local information asynchronously from other TCP senders.

<span style='color:#ff0000;'>**TCP congestion-control algorithm**</span><span style='color:#ff0000;'>:</span>
1. **Slow Start**
- When a TCP connection begins, the value of cwnd is typically initialized to a small value of 1 MSS [RFC 3390], resulting in an initial sending rate of roughly MSS/RTT. For example, if MSS = 500 bytes and RTT = 200 msec, the resulting initial sending rate is only about 20 kbps. Since the available bandwidth to the TCP sender may be much larger than MSS/RTT, the TCP sender would like to find the amount of available bandwidth quickly. Thus, in the slow-start state, the value of cwnd begins at 1 MSS and increases by 1 MSS every time a transmitted segment is first acknowledged.

2. **Congestion Avoidance**
- On entry to the congestion-avoidance state, the value of cwnd is approximately half its value when congestion was last encountered-congestion could be just around the corner! Thus, rather than doubling the value of cwnd every RTT, TCP adopts a more conservative approach and increases the value of _cwnd_ by just a single MSS every RTT [RFC 5681]. This can be accomplished in several ways.
- In this case, the network is continuing to deliver segments from sender to receiver (as indicated by the receipt of duplicate ACKs). So TCP' s behavior to this type of loss event should be less drastic than with a timeout-indicated loss: TCP halves the value of cwnd (adding in 3 MSS for good measure to account for the triple duplicate ACKs received) and records the value of ssthresh to be half the value of cwn d when the triple duplicate ACKs were received. The fast-recovery state is then entered.

3. **Fast Recovery (not mandatory but recommended)**
- In fast recovery, the value of cwnd is increased by 1 MSS for every duplicate ACK received for the missing segment that caused TCP to enter the fast-recovery state. Eventually, when an ACK arrives for the missing segment, TCP enters the congestion-avoidance state after deflating cwnd. If a timeout event occurs, fast recovery transitions to the slow-start state after performing the same actions as in slow start and congestion avoidance:
	- The value of _cwnd_ is set to 1 MSS, and the value of _ssthresh_ is set to half the value of _cwnd_ when the loss event occurred.
	- Fast recovery is a recommended, but not required, component of TCP [RFC5681] . It is interesting that an early version of TCP, known as **TCP Tahoe**, unconditionally cut its congestion window to 1 MSS and entered the slow-start phase after either a timeout-indicated or triple-duplicate-ACK-indicated loss event. The newer version of TCP, **TCP Reno**, incorporated fast recovery .
**TCP Congestion Control: Retrospective**










Ignoring the initial slow-start period when a connection begins and assuming that losses are indicated by triple duplicate ACKs rather than timeouts, TCP's congestion control consists of linear (additive) increase in _cwnd_ of 1 MSS per RTT and then a halving (multiplicative decrease) of _cwnd_ on a triple duplicate-ACK event. For this reasonTCP congestion control is often referred to as an **additive-increase, multiplicative-decrease (AIMD)** form of congestion control. AIMD congestion control gives rise to the "saw tooth" behavior shown in Figure 3.53, which also nicely illustrates our earlier intuition of TCP "probing" for bandwidth-TCP linearly increases its congestion window size (and hence its transmission rate) until a triple duplicate-ACK event occurs. It then decreases its congestion window size by a factor of two but then again begins increasing it linearly, probing to see if there is additional available bandwidth.

**Macroscopic Description of TCP Throughput**
Given the saw-toothed behavior of TCP, it's natural to consider what the average throughput (that is, the average rate) of a long-lived TCP connection might be. In this analysis we'll ignore the slow-start phases that occur after timeout events. (These phases are typically very short, since the sender grows out of the phase exponentially fast.) 
- During a particular round-trip interval, the rate at which TCP sends data is a function of the congestion window and the current RTT. When the window size is w bytes and the current round-trip time is RTT seconds, then TCP' s transmission rate is roughly _w_/RTT. TCP then probes for additional bandwidth by increasing _w_ by 1 MSS each RTT until a loss event occurs. Denote by _W_ the value of _w_ when a loss event occurs. Assuming that RTT and W are approximately constant over the duration of the connection, the TCP transmission rate ranges from **W/(2 · RTT)** to **W/RTT.**
- These assumptions lead to a highly simplified macroscopic model for the steady-state behavior of TCP. The network drops a packet from the connection when the rate increases to **W/RTT**; the rate is then cut in half and then increases by **MSS/RTT** every RTT until it again reaches **W/RTT**. This process repeats itself over and over again. Because TCP's throughput (that is, rate) increases linearly between the two extreme values, we have
	- **Average throughput of a connection = (0.75 * W) / RTT**

**TCP Over High-Bandwidth Paths**
What was good for the Internet when the bulk of the TCP connections carried SMTP, FTP, and Telnet traffic is not necessarily good for today's HTTP-dominated Internet or for a future Internet with services that are still undreamed of.

- The need for continued evolution of TCP can be illustrated by considering the high-speed TCP connections that are needed for grid- and cloud-computing appli- cations. For example, consider a TCP connection with 1,500-byte segments and a 100 ms RIT, and suppose we want to send data through this connection at 10 Gbps. Following [RFC 3649], we note that using the TCP throughput formula above, in order to achieve a 10 Gbps throughput, the average congestion window size would need to be 83,333 segments. That's a lot of segments, leading us to be rather concerned that one of these 83,333 in-flight segments might be lost. What would happen in the case of a loss? Or, put another way, what fraction of the transmitted segments could be lost that would allow the TCP congestion-control algorithm specified in Figure 3.51 still to achieve the desired 10 Gbps rate? In the homework questions for this chapter, you are led through the derivation of a formula relating the throughput of a TCP connection as a function of the loss rate (L), the round-trip time (RIT), and the maximum segment size (MSS):
	- **Average throughput of a connection = (1.22 * MSS) / (RTT * sqrt(L))**

Using this formula, we can see that in order to achieve a throughput of 10 Gbps, today's TCP congestion-control algorithm can only tolerate a segment loss probability of 2 · 10- 10 (or equivalently, one loss event for every 5,000,000,000 segments)- a very low rate. This observation has led a number of researchers to investigate new versions of TCP that are specifically designed for such high-speed environments...

**3.7.1 Fairness**
When running over UDP, applications can pump their audio and video into the network at a constant rate and occasionally lose packets, rather than reduce their rates to "fair" levels at times of congestion and not lose any packets. From the perspective of TCP, the multimedia applications running over UDP are not being fair-they do not cooperate with the other connections nor adjust their transmission rates appropriately. Because TCP congestion control will decrease its transmission rate in the face of increasing congestion (loss), while UDP sources need not, it is possible for UDP sources to crowd out TCP traffic. An area of research today is thus the development of congestion-control mechanisms for the Internet that prevent UDP traffic from bringing the Internet's throughput to a grinding halt.

**Fairness and Parallel TCP Connections**
But even if we could force UDP traffic to behave fairly, the fairness problem would still not be completely solved. This is because there is nothing to stop a TCP-based application from using multiple parallel connections. For example, Web browsers often use multiple parallel TCP connections to transfer the multiple objects within a Web page. (The exact number of multiple connections is configurable in most browsers.) When an application uses multiple parallel connections, it gets a larger fraction of the bandwidth in a congested link. As an example, consider a link of rate R supporting nine ongoing client-server applications, with each of the applications using one TCP connection. If a new application comes along and also uses one TCP connection, then each application gets approximately the same transmission rate of R/10. But if this new application instead uses 11 parallel TCP connections, then the new application gets an unfair allocation of more than R/2. Because Web traffic is so pervasive in the Internet, multiple parallel connections are not uncommon.




