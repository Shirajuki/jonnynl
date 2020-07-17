---
layout: post
tags: TTM4110
categories: TTM4110
---

**1.1 What is the internet?**
- Host / end systems
	- Connected together by a network of communication links and packet switches
	- Different link => different rates and transmission rate.
- Today:
	- Routers and link-layer switches
- End systems access the Internet through Internet Service Providers (ISPs).
- The Internet is all about connecting end systems to each other, so the ISPs that provide access to end systems
- PROTOCOLS!
	- Transmission Control Protocol (TCP)
	- Internet Protocol (IP)

**1.2 The Network Edge**
Access Networks
- Home Access: DSL, Cable, FTTH, Dial-Up and Satellite
	- Digital Subscriber Line (DSL)
	- DSL + access multiplexer (DSLAM)
	- Central Office (CO)
	- Fiber To The Home (FTTH)
	- Active Optical Networks (AONs)
	- Passive Optical Networks (PONs)
	- Optical Line Terminator (OLT)
- Wide-Area Wireless Access: 3G and LTE
	- Long Term Evolution (LTE)
	- 3-generation wireless (3G)
Physical Media
- Twisted-Pair Copper Wire
- Unshielded Twisted Pair (UTP)
- Fiber optic
- Coaxial Cable
- Terrestrial Radio Channels
- Satellite Radio Channels
	- Geostationary satellites and low-earth orbiting (LEO) satellites

**1.3 The Network Core**
Packet Switching (MORE EFFICIENT!)
- Packets, packet switches, routers, link-layer switches
- Store-and-Forward transmission
	- Begins transmitting at time 0
	- (L = bit size & R = transmission rate) 
	- At time L/R seconds transmitted the entire packet, received and stored at the router.
	- Can now begin to transmit the packet onto the outbound link towards the destination.
	- At time 2L/R the router has transmitted the entire packet, and the entire packet has been received by the destination.
	- TOTAL DELAY IS **2L/R**
- Store-and-Forward packet switching
	- d_end-to-end = N * L/R
Circuit Switching
- (buffer, link transmission rate) - reserved
- Multiplexing in Circuit-Switched Networks
	- Frequency-division multiplexing (FDM)
	- Time-division multiplexing (TDM)
	- Width of the band (bandwidth)
	Example:
- File of 640.000 bits (L) from Host A to Host B over circuit-switched network
- Assume use of TDM with 24 slots with bit rate (R) of 1.536Mbps.
- Takes 500msec to establish end-to-end
=> (1.536Mbps)/24 = 64kbps
=> (640.000 bits)/(64 kbps) = 10 seconds + circuit establish time
=> 10.5

**1.4 Delay, Loss, and Throughput in Packet-Switched Networks**
Overview:
- Nodal processing delay
- Queuing delay
- Transmission delay
- Propagation delay
- => total delay
Processing Delay
- Time required to examine the packets header and determine where to direct the packet
Queuing Delay
- Waits to be transmitted onto the link. Length of this depends on the number of earlier-arriving packets that are queued and waiting for transmission onto the link.
Transmission Delay
- Packets can only be transmitted only after all the packets that have arrived before it has been transmitted. Length of the packet by (L) bits, transmission rate of the link from Router A to router B by (R) bits/sec.
- Example:
	- 10 Mbps ethernet link, R = 10Mbps
	- This is **L/R**
Propagation Delay
- Once pushed onto the link, it needs to propagate to router B. The time required to propagate from the beginning of the link to router B. The propagation speed depends on the physical medium of the link (fiber optics, UTP and so on)
- Range of propagation speed: 2*10**8 meters/sec to 3*10**8 meters/sec (a little less than the speed of light). 
- **d_prop** This is **d/s** where (d) is the distance between router A and B. (s) is the propagation speed of the link.
Total Nodal delay
- d_nodal = d_proc + d_queue + d_trans + d_prop
Traffic intensity
- L*a/R where a is the average rate at which packets arrive at the queue. R is the transmission rate. L is the size of bit. Should be  L*a/R  <= 1
- The nth-packet transmitted has a queuing delay of (n-1)L/R seconds.
End-to-End Delay
- d_end-end = N (d_proc + d_trans + d_prop)
- D_trans = L/R
- Voice-over-IP (VoIP)
Throughput in computer Networks
- P2P - instantaneous throughput.
Example:
	- File consists of (F) bits
	- Transfer takes T seconds for Host B to receive all (F) bits.
	- Average throughput is **F/T** bits/sec
	- R denotes the rate of the link between the server and the router.
	- Bits as fluid and communication links as pipes.

**1.5 Protocol Layers and Their Service Models**
Layered Architecture
Protocol Layering
- HTTP, SMTP
- Protocol Stack
- Top-down approach

Application Layer
- HTTP, SMTP, FRP, DNS
- Message
Transport Layer
- TCP, UDP
- Segment
	Network Layer
- Datagrams from one host to another, IP-protocol
	Link Layer
- Moving packets from one node to the next node in the route.
- Ethernet, Wi-Fi
- Frames
	Physical Layer
- Move the individual bits within the frame one node to the next.
- UTP, fiber, coaxial cable
The OSI Model
- Organization for Standardization (ISO ) - Open Systems Interconnection (OSI)

Encapsulation
- Application-layer message
- Transport-layer segment
- Network-layer datagram
- Link-layer frame
- Payload field

**1.6 Networks Under Attack**
- Malware, botnet (self-replicating), virus, worms
- Denial-of-service (DoS) attacks
- Distributed DoS (DDoS) (if the server has an access rate of R bps, send approx R bps to cause damage. If R large, harder for a single attack. So we distribute lots!)

	- Vulnerability attack - sending well-crafted messages to a vulnerable application. Right sequence of packets => vulnerability
	- Bandwidth flooding - Sends lots of packets, clogged, preventing legitimate packets from reaching.
	- Connection Flooding - Establishes large numbers of halp-open/fully open TCP connections. Bogged down with bogus connections that stop legitimate connections.
- Packet sniffer - fly by
- Spoofing (IP / MAC and so on) - end-point authentication

**1.7 History of Computer Networking and the Internet**
The Development of Packet Switching (1961-1972)
Proprietary Networks and Internetworking (1972-1980)
A Proliferation of Networks (1980-1990)
The Internet Explosion (The 1990s)
The New Millennium
