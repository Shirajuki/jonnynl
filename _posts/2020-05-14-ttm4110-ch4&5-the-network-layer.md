---
layout: post
tags: TTM4110
categories: TTM4110
---

**Chapter 4: The Network Layer: Data Plane**

- Transport layer: provides various forms of process-to-process communication by relying on the network øayer’s host-to-host communication service. (without any knowledge about how the network layer implements it)
- 2 PARTS:
	- Data plane 
		- per-router functions (determines how a datagram arriving on one of a router’s input link is forwarded to one of that router’s output link)
		- Traditional IP forwarding (datagram’s destination address) and generalized forwarding (using values in several different fields in the datagram’s header)
		- IPv4 and IPv6 protocols and addressing in detail
	- Control plane
		- Network-wide layer logic that controls how a datagram is routed among routers along an end-to-end path from the source host to the destination host.
		- Routing algorithms, routing protocols (OSPF and BGP)
		- Software-defined networking (SDN) - controllers

## **4.1 Overview of Network Layers**
**Send**: Network layer → segment from the transport layer → encapsulate each segment into a datagram → sends to it’s nearby router
**Recv**: Network layer → receives the datagram from its nearby router → extracts the transport-layer segments → delivers the segments up to the transport layer
- Primary data-plane role of each router is to forward datagrams from its input link to its output links
- Primary role of the network control plane is to coordinate these local, per-router forwarding actions to that datagrams are ultimately transferred end-to-end, along paths of routers between source and destination hosts.
- _Routers do not run application- and transport-layer protocols. No upper layers above the network layer._

**4.1.1 Forwarding and Routing: The Network Data and Control Planes**
The primary role of the network layer: move packets from a sending host to a receiving host.
- **Forwarding**: (implemented in data-plane)
- **Routing**: **routing algorithms** (implemented in the control plane of the network)
**Forwarding**: router-local action of transferring a packet from an input link interface to the appropriate output link interface. Takes place at very short timescales (nanoseconds) implemented in hardware
**Routing**: network-wide process that determines the end-to-end paths that packets take from source to destination. Longer timescales (seconds). Implemented in software.
**Forwarding table**: Key element in every network router. The value stored in the forwarding table entry for those values indicates the outgoing link interface at that router to which that packet is to be forwarded.

**Control Plane: The Traditional Approach**
The routing algorithm runs in each and every router and both forwarding and routing functions are contained within a router. The routing algorithm function in one router communicates with the routing algorithm function in other routers to compute the values for its forwarding table. The communication is performed by exchanging routing messages containing routing information according to a routing protocol.








**Control Plane: The SDN Approach**

Figure 4.3 shows an alternate approach in which a physically separate (from the routers), remote controller computes and distributes the forwarding tables to be used by each and every router. Control-plane routing functionality is separated from the physical router. The routing device performs forwarding only, while the remote controller computes and distributes forwarding tables. The remote controller might be implemented in a remote data center with high reliability and redundancy,and might be managed by the ISP or some third party. 

The remote controller communicates by exchanging messages containing forwarding tables and other pieces of routing information. The control-plane approach shown in Figure 4.3 is at the heart of **software-defined networking (SDN)**, where the network is "software-defined" because the controller that computes forwarding tables and interacts with routers is implemented in software. Increasingly, these software implementations are also usually open source.

**4.1.2 Network Service Models**
Different types of service that might be offered by the network layer. 
- When the transport layer at a sending host transmits a packet into the network (that is, passes it down to the network layer at the sending host), can the transport layer rely on the network layer to deliver the packet to the destination? 
- When multiple packets are sent, will they be delivered to the transport layer in the receiving host in the order in which they were sent? 
- Will the amount of time between the sending of two sequential packet transmissions be the same as the amount of time between their reception? 
- Will the network provide any feed- back about congestion in the network? 
The answers to these questions and others are determined by the service model provided by the network layer. The **network service model** defines the characteristics of end-to-end delivery of packets between sending and receiving hosts. Let's now consider some possible services that the network layer could provide. 

These services could include:
- **Guaranteed delivery:** This service guarantees that a packet sent by a source host will eventually arrive at the destination host.

- **Guaranteed delivery with bounded delay:** This service not only guarantees delivery of the packet, but delivery within a specified host-to-host delay bound (for example, within 100 msec).

- **In-order packet delivery:** This service guarantees that packets arrive at the destination in the order that they were sent.

- **Guaranteed minimum bandwidth:** This network-layer service emulates the behavior of a transmission link of a specified bit rate (for example, 1 Mbps) between sending and receiving hosts. As long as the sending host transmits bits (as part of packets) at a rate below the specified bit rate, then all packets are eventually delivered to the destination host.

- **Security:** The network layer could encrypt all datagrams at the source and decrypt them at the destination, thereby providing confidentiality to all transport-layer segments.

The Internet's network layer provides a single service, known as **best-effort service**. With best-effort service, packets are neither guaranteed to be received in the order in which they were sent, nor is their eventual delivery even guaranteed. There is no guarantee on the end-to-end delay nor is there a minimal bandwidth guarantee. It might appear that best-effort service is a euphemism for **no service at all**. A network that delivered no packets to the destination would satisfy the definition of best-effort delivery service! 
**However**: the Internet' s basic best-effort service model combined with adequate bandwidth provisioning have arguably proven to be more than "good enough" to enable an amazing range of applications, including streaming video services such as Netflix and voice-and-video-over-IP, real-time conferencing applications such as Skype and Facetime.
## **4.2 What’s inside a router?**
**packet switch**: a general packet-switching device that transfers a packet from input link interface to output link interface, according to values in a packet' s header fields. Some packet switches, called **link-layer switches**, base their forwarding decision on values in the fields of the link-layer frame; switches are thus referred to as link-layer (layer 2) devices. Other packet switches, called **routers**, base their forwarding decision on header field values in the network-layer datagram. Routers are thus network-layer (layer 3) devices. Network layer use the term **router** in place of **packet switch**.

**Forwarding function**: the actual transfer of packets from a router's incoming links to the appropriate outgoing links at that **router**. A high-level view of a generic router architecture is shown in Figure 4.4. 

Four router components can be identified:
- **Input ports:** An input port performs several key functions . 
	- It performs the physical layer function of terminating an incoming physical link at a router; this is shown in the leftmost box of an input port and the rightmost box of an output port in Figure 4.4.
	- An input port also performs link-layer functions needed to interoperate with the link layer at the other side of the incoming link; this is represented by the middle boxes in the input and output ports. 
	- A lookup function is also performed at the input port; this will occur in the rightmost box of the input port. It is here that the forwarding table is consulted to determine the router output port to which an arriving packet will be forwarded via the switching fabric. 
Control packets (for example, packets carrying routing protocol information) are forwarded from an input port to the routing processor. "port" here refers to the physical input and output router interfaces. In practice, the number of ports supported by a router can range from a relatively small number in enterprise routers, to hundreds of 10 Gbps ports in a router at an ISP.

- **Switching fabric:** The switching fabric connects the router's input ports to its output ports. This switching fabric is completely contained within the router a network inside of a network router!

- **Output ports:** An **output port**stores packets received from the switching fabric and transmits these packets on the outgoing link by performing the necessary link-layer and physical-layer functions. When a link is bidirectional (that is, carries traffic in both directions), an output port will typically be paired with the input port for that link on the same line card.

- **Routing processor:** The routing processor performs control-plane functions . 
	- In traditional routers, it executes the routing protocols, maintains routing tables and attached link state information, and computes the forwarding table for the router. 
	- In SDN routers, the routing processor is responsible for communicating with the remote controller in order to (among other activities) receive forwarding table entries computed by the remote controller, and install these entries in the router's input ports. The routing processor also performs the network management functions.
A router's input ports, output ports, and switching fabric are almost always implemented in **hardware**, either using a router vendor's own hardware designs, or constructed using purchased merchant-silicon chips (e.g., as sold by companies such as Intel and Broadcom).
While the data plane operates at the nanosecond time scale, a router's control
functions-executing the routing protocols, responding to attached links that go up
or down, communicating with the remote controller (in the SDN case) and perform-
ing management functions-operate at the millisecond or second timescale. These
control plane functions are thus usually implemented in **software** and execute on the
routing processor (typically a traditional CPU).
- Destination-based forwarding
- Generalized forwarding

**4.2.1 Input Port Processing and Destination-Based forwarding**
Detailed view of input processing is shown in Figure 4.5. 
- As just discussed, the input port's line-termination function and link-layer processing implement the physical and link layers for that individual input link. 
- The lookup performed in the input port is central to the router's operation-it is here that the router uses the forwarding table to look up the output port to which an arriving packet will be forwarded via the switching fabric.
- The forwarding table is either computed and updated by the routing processor (using a routing protocol to interact with the routing processors in other network routers) or is received from a remote SDN controller. 
- The forwarding table is copied from the routing processor to the line cards over a separate bus (e.g.,a PCI bus) indicated by the dashed line from the routing processor to the input line cards in Figure 4.4. 
![](https://lh5.googleusercontent.com/1y0XD-O7CspKjdBfE1OOsiiZVQUeQrmrctEwoRx57N-jhXhj2bZlF4eE48xayC17K7wgwAeoYDZzTTQlcHx5Co1vRzM8vGw1CqUW12L7KFvjKWV4VSdml5oNjDwwWA8OT4aWOSEf-4Tdzdf1vQ)
As an example of how this issue of scale can be handled, Let's suppose that our router has four Links, numbered 0 through 3, and that packets are to be forwarded to the link interfaces as follows:
![](https://lh6.googleusercontent.com/VJ97gPazZI0c9hnJuVASPIUtIcnNY7l6Ar-_-wtkR8trzF9kQnuzVFZ-6XF2BkYjv_WBEY-19OBR1T8OWHqGkNYURWgx0IChff3gBa10eHjou2iVy_P4p4gATybBtL02bA0rapryCMNS6hzqog)
Clearly, for this example, it is not necessary to have 4 billion entries in the router's forwarding table. We could, for example, have the following forwarding table with just four entries:
![](https://lh4.googleusercontent.com/qoib5EQ8VN6wLWgWz4zwM35N0VOi3Kca-hCiIQOth3lFlqrEyGzmzyZ5KIjvzESHkRSlmqksw_eTahb93X2nv8oNiPMDBtU2hP9AqUxmfJnbDSl3RS18SbBVKm6l-k_drnH8KRNSZYnuQ8Cv8w)
With this style of forwarding table, the router matches a prefix of the packet's destination address with the entries in the table; if there's a match, the router forwards the packet to a link associated with the match. 

Lookup must be performed in hardware, techniques beyond a simple linear search through a large table are needed; fast lookup algorithms. Special attention must also be paid to memory access times, resulting in designs with embedded on-chip **DRAM** and faster **SRAM** (used as a DRAM cache) memories. In practice, **Ternary Content Addressable Memories (TCAMs)** are also often used for lookup.
- Once a packet's output port has been determined via the lookup, the packet can be sent into the switching fabric. In some designs, a packet may be temporarily blocked from entering the switching fabric if packets from other input ports are currently using the fabric . A blocked packet will be queued at the input port and then scheduled to cross the fabric at a later point in time. We'll take a closer look at the blocking, queuing, and scheduling of packets (at both input ports and output ports) shortly. 
1. physical- and link-layer processing must occur, as discussed previously; 
2. the packet's version number, checksum and time-to-live field-al] of which we' ll study in Section 4.3-must be checked and the latter two fields rewritten; and 
3. counters used for network management (such as the number of IP datagrams received) must be updated.
Input port steps of looking up a destination IP address ("match") and then sending the packet
into the switching fabric to the specified output port ("action") is a specific case of a more general "match plus action" abstraction that is performed in many networked devices, not just routers.

**4.2.2 Switching**
The switching fabric: very heart of a router, as it is through this fabric that
the packets are actually switched (that is, forwarded) from an input port to an output
port. Switching can be accomplished in a number of ways, as shown in Figure 4.6:
- **Switching via memory**. 
	- The simplest, earliest routers were traditional computers, with switching between input and output ports being done under direct control of the CPU (routing processor). 
	- Input and output ports functioned as traditional 1/0 devices in a traditional operating system. An input port with an arriving packet first signaled the routing processor via an interrupt. The packet was then copied from the input port into processor memory. 
	- The routing processor then extracted the destination address from the header, looked up the appropriate output port in the forwarding table, and copied the packet to the output port's buffers. 
	- In this scenario, if the memory bandwidth is such that a maximum of B packets per second can be written into, or read from, memory, then the overall **forwarding throughput** (the total rate at which packets are transferred from input ports to output ports) must be less than **B/2**. Note also that two packets cannot be forwarded at the same time, even if they have different destination ports, since only one memory read/write can be done at a time over the shared system bus.

![](https://lh5.googleusercontent.com/r1NyhMvxrlGl5uPp1H0V5wRey4sFAhcWVt3GUtB08D7SX4cs-P0XKO1XXsa5IEZaybkRz0ovcjfEFes_C_5BUjw31u2LsgAdeqh5RwD6NQ65lLDo77syaQPvmOt8I36aWPpyc1tBlgbCBFX80Q)
- **Switching via a bus**. 
	- In this approach, an input port transfers a packet directly to the output port over a shared bus, without intervention by the routing processor. This is typically done by having the input port prepend a switch-internal label (header) to the packet indicating the local output port to which this packet is being transferred and transmitting the packet onto the bus. 
	- All output ports receive the packet, but only the port that matches the label will keep the packet. The label is then removed at the output port, as this label is only used within the switch to cross the bus. If multiple packets arrive at the router at the same time, each at a different input port, all but one must wait since only one packet can cross the bus at a time. 
	- Because every packet must cross the single bus, the switching speed of the router is limited to the bus speed; in our roundabout analogy, this is as if the roundabout could only contain one car at a time. Nonetheless, switching via a bus is often sufficient for routers that operate in small local areas and enterprise networks.
- **Switching via an interconnection network**. 
	- Overcome the bandwidth limitation of a single shared bus. Use a more sophisticated interconnection network, such as those that have been used in the past to interconnect processors in a multiprocessor computer architecture. 
	- A crossbar switch is an interconnection network consisting of 2N buses that connect N input ports to N output ports, as shown in Figure 4.6. Each vertical bus intersects each horizontal bus at a crosspoint, which can be opened or closed at any time by the switch fabric controller (logic part of the switching fabric itself). 
	- When packet arrives port A and needs to be forwarded to port Y, the switch controller closes the crosspoint at the intersection of busses A and Y, and port A then sends the packet onto its bus, which is picked up (only) by bus Y. Note that a packet from port B can be forwarded to port X at the same time, since the A-to-Y and B-to-X packets use different input and output busses. Thus, unlike the previous two switching approaches, cross- bar switches are capable of forwarding multiple packets in parallel. 
	- A crossbar switch is non-blocking-a packet being forwarded to an output port will not be blocked from reaching that output port as long as no other packet is currently being forwarded to that output port. However, if two packets from two different input ports are destined to that same output port, then one will have to wait at the input, since only one packet can be sent over any given bus at a time.
	- More sophisticated interconnection networks use multiple stages of switching elements to allow packets from different input ports to proceed towards the same output port at the same time through the multi-stage switching fabric.

**4.2.3 Output Port Processing**
More sophisticated interconnection networks use multiple stages of switching elements to allow packets from different input ports to proceed towards the same output port at the same time through the multi-stage switching fabric

**4.2.4 Where does Queueing Occur**
If we consider input and output port functionality and the configurations shown in Figure 4.6, it's clear that packet queues may form at both the input ports and the output ports, just as we identified cases where cars may wait at the inputs and outputs of the traffic intersection in our roundabout analogy. 

The location and extent of queueing (either at the input port queues or the output port queues) will depend on the traffic load, the relative speed of the switching fabric, and the line speed. 
- Let's now consider these queues in a bit more detail, since as these queues grow large, the router's memory can eventually be exhausted and packet loss will occur when no memory is available to store arriving packets. Recall that in our earlier discussions, we said that packets were "lost within the network" or "dropped at a router." It is here, at these queues within a router, where such packets are actually dropped and lost.
![](https://lh5.googleusercontent.com/5b2D6KHOT_A1Cdcc5wrddrm8RNEhDXsOOXL18jReSpnyUkhsK0l5pcD137SwljlWWViIcyq3Rk4W7bKY9QLp1eCQgDdZyRNljz4mnxN1QLvyTXW_WUzjXI0Emb2g1tbkxjgtBDoquf84gBup6Q)
Suppose that the input and output line speeds (transmission rates) all have an identical transmission rate of **R_line** packets per second, and that there are N input ports and N output ports. To further simplify the discussion, let's assume that all packets have the same fixed length, and that packets arrive at input ports in a synchronous manner. That is, the time to send a packet on any link is equal to the time to receive a packet on any link, and during such an interval of time, either zero or one packet can arrive on an input link. Define the switching fabric transfer rate **R_switch** as the rate at which packets can be moved from input port to output port. If **R_switch** is N times faster than **R_line** then only negligible queuing will occur at the input ports. This is because even in the worst case, where all N input lines are receiving packets, and all packets are to be forwarded to the same output port, each batch of N packets ( one packet per input port) can be cleared through the switch fabric before the next batch arrives.

**Input Queueing**
If the switch fabric is not fast enough (relative to the input line speeds) to transfer all arriving packets through the fabric without delay. In this case, packet queuing can also occur at the input ports, as packets must join input port queues to wait their turn to be transferred through the switching fabric to the output port. To illustrate an important consequence of this queuing, consider a crossbar switching fabric and suppose that 
1. all link speeds are identical
2. that one packet can be transferred from any one input port to a given output port in the same amount of time it takes for a packet to be received on an input link, and
3. packets are moved from a given input queue to their desired output queue in an FCFS manner. Multiple packets can be transferred in parallel, as long as their output ports are different. However, if two packets at the front of two input queues are destined for the same output queue, then one of the packets will be blocked and must wait at the input queue- the switching fabric can transfer only one packet to a given output port at a time.
Figure 4.8 shows an example in which two packets (darkly shaded) at the front of their input queues are destined for the same upper-right output port. 

Suppose that the switch fabric chooses to transfer the packet from the front of the upper-left queue. In this case, the darkly shaded packet in the lower-left queue must wait. But not only must this darkly shaded packet wait, so too must the lightly shaded packet that is queued behind that packet in the lower-left queue, even though there is no connection for the middle-right output port (the destination for the lightly shaded packet). This phenomenon is known as **head-of-the-line (HOL)** blocking in an input-queued switch a queued packet in an input queue must wait for transfer through the fabric (even though its output port is free) because it is blocked by another packet at the head of the line. Due to **HOL** blocking, the input queue will grow to unbounded length (informally, this is equivalent to saying that significant packet loss will occur) under certain assumptions as soon as the packet arrival rate on the input links reaches only 58 percent of their capacity. 

**Output Queueing**
Suppose that **R_switch** is again N times faster than R_line and that packets arriving at each of the N input ports are destined to the same output port. In this case, in the time it takes to send a
single packet onto the outgoing link, N new packets will arrive at this output port (one from each of the N input ports). Since the output port can transmit only a single packet in a unit of time (the packet transmission time), the N arriving packets will have to queue (wait) for transmission over the outgoing link. Then N more packets can possibly arrive in the time it takes to transmit just one of the N packets that had just previously been queued. And so on. Thus, packet queues can form at the output ports even when the switching fabric is N times faster than the port line speeds. Eventually, the number of queued packets can grow large enough to exhaust avail-
able memory at the output port.

**When not enough memory to buffer** an incoming packet, a decision must be made to either drop the arriving packet (a policy known as **drop-tail**) or remove one or more already-queued packets to make room for the newly arrived packet. In some cases, it may be advantageous to drop (or mark the header of) a packet before the buffer is full in order to provide a congestion signal to the sender. A number of proactive packet-dropping and -marking policies (which collectively have become known as **active queue management (AQM)** algorithms) have been proposed and analyzed. One of the most widely studied and implemented AQM algorithms is the **Random Early Detection (RED)** algorithm.

Output port queuing is illustrated in Figure 4.9. 
- At time t, a packet has arrived at each of the incoming input ports, each destined for the uppermost outgoing port. Assuming identical line speeds and a switch operating at three times the line speed, one time unit later (that is, in the time needed to receive or send a packet), all three original packets have been transferred to the outgoing port and are queued awaiting transmission. 
- In the next time unit, one of these three packets will have been transmitted over the outgoing link. In our example, two new packets have arrived at the incoming side of the switch; one of these packets is destined for this uppermost output port. A consequence of such queuing is that a **packet scheduler** at the output port must choose one packet, among those queued, for transmission. 

Given that router buffers are needed to absorb the fluctuations in traffic load, a natural question to ask is how much buffering is required. For many years, the rule of thumb [RFC 3439] for buffer sizing was that the amount of buffering (BJ should be equal to an average round-trip time (RTT, say 250 msec) times the link capacity (C). This result is based on an analysis of the queueing dynamics of a relatively small number of TCP flows [Villamizar 1994]. Thus, a 10 Gbps link with an RTT of 250 msec would need an amount of buffering equal to **B = RTT · C = 2.5 Gbits of buffers.** More recent theoretical and experimental efforts [Appenzeller 2004], however, suggest that when there are a large number of TCP flows (N) passing through a link, the amount of buffering needed is **B = RTI*C / sqrt(N).** With a large number of flows typically passing through large backbone router links, the value of N can be large, with the decrease in needed buffer size becoming quite significant.

**4.2.5 Packet Scheduling**
Determining the order in which queued packets are transmitted over an outgoing link. 
Queueing disciplines commonly used in routers. There is first-come-first-served (FCFS, also known as first-in-first-out, FIFO). The British are famous for patient and orderly FCFS queueing at bus stops and in the marketplace ("Oh, are you queueing?"). Other countries operate on a priority basis, with one class of waiting customers given priority service over other waiting customers. There is also round-robin queueing, where customers are again divided into classes
(as in priority queueing) but each class of customer is given service in turn.

**First-in-First-Out (FIFO)**
Figure 4.10 shows the queuing model abstraction for the FIFO link-scheduling discipline. Packets arriving at the link output queue wait for transmission if the link is currently busy transmitting another packet. If there is not sufficient buffering space to hold the arriving packet, the queue's packet-discarding policy then determines whether the packet will be dropped (lost) or whether other packets will be removed from the queue to make space for the arriving packet, as discussed above. In our discussion below, we'll ignore packet discard. When a packet is completely transmitted over the outgoing link (that is, receives service) it is removed from the queue.
- The **FIFO** (also known as first-come-first-served, or **FCFS**) scheduling discipline selects packets for link transmission in the same order in which they arrived at the output link queue. Arriving customers join the back of the single waiting line, remain in order, and are then served when they reach the front of the line. Figure 4.11 shows the FIFO queue in operation. Packet arrivals are indicated by numbered arrows above the upper timeline, with the number indicating the order in which the packet arrived. Individual packet departures are shown below the lower timeline. The time that a packet spends in service (being transmitted) is indicated by the shaded rectangle between the two timelines. In our examples here, let's assume that each packet takes three units of time to be transmitted. Under the FIFO discipline, packets leave in the same order in which they arrived. Note that after the departure of packet 4, the link remains idle (since packets 1 through 4 have been transmitted and removed from the queue) until the arrival of packet 5.

**Priority Queuing**
Under priority queuing, packets arriving at the output link are classified into priority classes upon arrival at the queue, as shown in Figure 4.12. In practice, a network operator may configure a queue so that packets carrying network management information (e.g., as indicated by the source or destination TCP/UDP port number) receive priority over user traffic; additionally, real-time voice-over-IP packets might receive priority over non-real traffic such as SMTP or IMAP e-mail packets. **Each priority class typically has its own queue**. When choosing a packet to transmit, the priority queuing discipline will transmit a packet from the highest priority class that has a nonempty queue (that is, has packets waiting for transmission). **The choice among packets in the same priority class is typically done in a FIFO manner.** 
- Figure 4.13 illustrates the operation of a priority queue with two priority classes. Packets 1, 3, and 4 belong to the high-priority class, and packets 2 and 5 belong to the low-priority class. Packet 1 arrives and, finding the link idle, begins transmission. During the transmission of packet I, packets 2 and 3 arrive and are queued in the low- and high-priority queues, respectively. After the transmission of packet 1, packet 3 (a high-priority packet) is selected for transmission over packet 2 (which, even though it arrived earlier, is a low-priority packet). At the end of the transmission of packet 3, packet 2 then begins transmission. Packet 4 (a high-priority packet) arrives during the transmission of packet 2 (a low-priority packet). Under a **non-preemptive priority queuing** discipline, the transmission of a packet is not interrupted once it has begun.
![](https://lh3.googleusercontent.com/KQusn4hf-UJAqP9ri6FsH38Jg4MaH5cGOL38GqDWxjro7u_Keu7_xjtSZXzW5kWMZz110WFp6gfDMGaQXkQMkZwS63odPt2Mgc2FO9VySODNLNAr97Y3esy9xy7T02g30MQB6BOEwlqtTj5b3Q)
In this case, packet 4 queues for transmission and begins being transmitted after the transmission of packet 2 is completed.
## **4.3 The Internet Protocol (IP): IPv4, Addressing, IPv6, and More…**
The notion of the data and control plane component of the network layer, our distinction between forwarding and routing, the identification of various network service models, and our look inside a router-have often been without reference to any specific computer network architecture or protocol. 
- Key aspects of the network layer on today's Internet and the celebrated Internet Protocol (IP). TWO versions of IP in use today:
	- IP protocol version 4, IPv4 [RFC791], and 
	- IP version 6 [RFC 2460; RFC 4291] , proposed to replace IPv4. 
- Internet addressing - crucial to understanding how the Internet's network layer works.


**4.3.1 IPv4 Datagram Format**
Internet's network-layer packet is referred to as a datagram. Overview of the syntax and semantics of the IPv4 datagram.
The datagram plays a central role in the Internet. The IPv4 datagram format is shown in Figure 4.16. 
The key fields in the IPv4 datagram are the following:
- **Version number**. These **4 bits** specify the IP protocol version of the datagram. By looking at the version number, the router can determine how to interpret the remainder of the IP datagram. Different versions of IP use different datagram formats. 
- **Header length**. Because an IPv4 datagram can contain a variable number of options (which are included in the 1Pv4 datagram header) , these **4 bits** are needed to determine where in the IP datagram the payload (e.g., the transport-layer segment being encapsulated in this datagram) actually begins. 
(Most IP datagrams do not contain options, so the typical IP datagram has a 20-byte header.)
- **Type of service**. The type of service (**TOS**) **bits** were included in the IPv4 header to allow different types of IP datagrams to be distinguished from each other. For example, it might be useful to distinguish real-time datagrams (such as those used by an IP telephony application) from non-real-time traffic (for example, FTP). The specific level of service to be provided is a policy issue determined and configured by the network administrator for that router. Two of the TOS bits are used for Explicit Congestion Notification.
- **Datagram length**. This is the total length of the IP datagram (header plus data), measured in bytes. Since this field is **16 bits long**, the theoretical maximum size of the IP datagram is 65,535 bytes. However, datagrams are rarely larger than 1,500 bytes, which allows an IP datagram to fit in the payload field of a maximally sized Ethernet frame .
- **Identifier, flags,fragmentation offset**. These three fields have. to do with so-called IP fragmentation, a topic we will consider shortly. Interestingly, the new version of IP, IPv6, does not allow for fragmentation.
- **Time-to-live**. The time-to-live (**TTL**) field is included to ensure that datagrams do not circulate forever (due to, for example, a long-lived routing loop) in the network. This field is decremented by one each time the datagram is processed by a router. If the TTL field reaches 0, a router must drop that datagram .
- **Protocol**. This field is typically used only when an IP datagram reaches its final destination. The value of this field indicates the specific transport-layer protocol to which the data portion of this IP datagram should be passed. For example, a value of 6 indicates that the data portion is passed to TCP, while a value of 17 indicates that the data is passed to UDP. List of all possible values, see [IANA Protocol Numbers 2016]. Note that the protocol number in the IP datagram has a role that is analogous to the role of the port number field in the transport-layer segment. The protocol number is the glue that binds the network and transport layers together, whereas the port number is the glue that binds the transport and application layers together.
- **Header checksum**. The header checksum aids a router in detecting bit efforts in a received IP datagram. The header checksum is computed by treating each 2 bytes in the header as a number and summing these numbers using is complement arithmetic. As discussed in Section 3.3, the ls complement of this sum, known as the Internet checksum, is stored in the checksum field. 
	- A router computes the header checksum for each received IP datagram and detects an error condition if the checksum carried in the datagram header does not equal the computed checksum. 
	- Routers typically discard datagrams for which an error has been detected. Note that the checksum must be recomputed and stored again at each router, since the TTL field, and possibly the options field as well, will change. 
	- Why does TCP/IP perform error checking at both the transport and network layers? Reasons for this repetition: 
		- First, note that only the IP header is checksummed at the IP layer, while the TCP/ UDP checksum is computed over the entire TCP/UDP segment.
		- Second, TCP/ UDP and IP do not necessarily both have to belong to the same protocol stack. TCP can, in principle, run over a different network-layer protocol (for example, ATM) and IP can carry data that will not be passed to TCP/UDP.
- **Source and destination IP addresses**. When a source creates a datagram, it inserts its IP address into the source IP address field and inserts the address of the ultimate destination into the destination IP address field. Often the source host determines the destination address via a DNS lookup.
- **Options**. The options fields allow an IP header to be extended. Header options were meant to be used rarely-hence the decision to save overhead by not including the information in options fields in every datagram header. However, the mere existence of options does complicate matters-since datagram headers can be of variable length, one cannot determine a priori where the data field will start. Also, since some datagrams may require options processing and others may not, the amount of time needed to process an IP datagram at a router can vary greatly. These considerations become particularly important for IP processing in high-performance routers and hosts. For these reasons and others, IP options were not included in the IPv6 header
- **Data (payload).** Finally, we come to the last and most important field - the raison d'etre for the datagram in the first place! In most circumstances, the data field of the IP datagram contains the transport-layer segment (TCP or UDP) to be delivered to the destination. However, the data field can carry other types of data too.

Note that an IP datagram has a total of 20 bytes of header (assuming no options). If the datagram carries a TCP segment, then each (non-fragmented) datagram carries a total of 40 bytes of header (20 bytes of IP header plus 20 bytes of TCP header) along with the application-layer message.



**4.3.2 IPv4 Datagram Fragmentation**
Not all link-layer protocols can carry network-layer packets of the same size. Some protocols can carry big datagrams, whereas other protocols can carry only little datagrams. 

The maximum amount of data that a link-layer frame can carry is called the **maximum transmission unit (MTU).** Because each IP datagram is encapsulated within the link-layer frame for transport from one router to the next router, the MTU of the link-layer protocol places a hard limit on the length of an IP datagram. Having a hard limit on the size of an IP datagram is not much of a problem. What the problem is, is that each of the links along the route between sender and destination can use different link-layer protocols, and each of these protocols can have different MTUs.

Forwarding issue: imagine that you are a router that interconnects several links, each running different link-layer protocols with different MTUs.
- Suppose you receive an IP datagram from one link. 
- You check your forwarding table to determine the outgoing link, and this outgoing link has an MTU that is smaller than the length of the IP datagram. 
- Time to panic-how are you going to squeeze this oversized IP datagram into the payload field of the link-layer frame?
**The solution is to fragment the payload** in the IP datagram into two or more smaller IP datagrams, encapsulate each of these smaller IP datagrams in a separate link-layer frame; and send these frames over the outgoing link. Each of these smaller datagrams is referred to as a **fragment**.

Fragments need to be reassembled before they reach the transport layer at the destination. Both TCP and UDP are expecting to receive complete, unfragmented segments from the network layer. 
- Reassembling datagrams in the routers would introduce significant complication into the protocol and put a damper on router performance. Principle of keeping the network core simple, the designers of IPv4 put the job of datagram reassembly in the end systems rather than in network routers. 
- When a destination host receives a series of datagrams from the same source, it needs to determine whether any of these datagrams are fragments of some original, larger datagram. 
- If some datagrams are fragments, it must further determine when it has received the last fragment and how the fragments it has received should be pieced back together to form the original datagram. To allow the destination host to perform these reassembly tasks, the designers of IP (version 4) put **identification, flag, and fragmentation offset fields in the IP datagram header.** When a datagram is created, the sending host stamps the datagram with an identification number as well as source and destination addresses. Typically, the sending host increments the identification number for each datagram it sends. 
- When a router needs to fragment a datagram, each resulting datagram (that is, fragment) is stamped with the source address, destination address, and identification number of the original datagram. 
- When the destination receives a series of datagrams from the same sending host, it can examine the identification numbers of the datagrams to determine which of the datagrams are actually fragments of the same larger datagram. 
(Because IP is an unreliable service, one or more of the fragments may never arrive at the destination.) 
- For this reason, in order for the destination host to be absolutely sure it has received the last fragment of the original datagram, the last fragment has a flag bit set to 0, whereas all the other fragments. have this flag bit set to 1. Also, in order for the destination host to determine whether a fragment is missing (and also to be able to reassemble the fragments in their proper order), the offset field is used to specify where the fragment fits within the original IP datagram.

Figure 4.17 illustrates an example. A datagram of 4,000 bytes (20 bytes of IP
header plus 3,980 bytes of IP payload) arrives at a router and must be forwarded
to a link with an MTU of 1,500 bytes. This implies that the 3,980 data bytes in the
original datagram must be allocated to three separate fragments (each of which is
also an IP datagram).
[http://www.pearsonglobaleditions.com/kurose](http://www.pearsonglobaleditions.com/kurose)


**4.3.3 IPv4 Addressing**
How hosts and routers are connected into the Internet. A host typically has only a single link into the network; when IP in the host wants to send a. datagram, it does so over this link. The boundary between the host and the physical link is called an **interface**. Now consider a router and its interfaces. 

Because a router's job is to receive a.datagram on one link and forward the datagram on some other link, a router necessarily has two or more links to which it is connected. The boundary between the router and any one of its links is also called an **interface**. A router thus has multiple
interfaces, one for each of its links. Because every host and router is capable of sending and receiving IP datagrams, IP requires each host and router interface to have its own IP address. 

_Thus, an IP address is technically associated with an interface,_
_rather than with the host or router containing that interface._

Each IP address is **32 bits long** (equivalently, **4 bytes**), and there are thus a total
of 2^32 (or approximately 4 billion) possible IP addresses. These addresses are typically written in so-called **dotted-decimal notation**, in which each byte of the address is written in its decimal form and is separated by a period (dot} from other bytes in the address. For example, consider the IP address **193.32.216.9**. The 193 is the decimal equivalent of the first 8 bits of the address; the 32 is the decimal equivalent of the second 8 bits of the address, and so on. **Thus, the address** **193.32.216.9in binary notation is** **11000001 00100000 11011000 00001001**

Each interface on every host and router in the global Internet must have an IP address that is globally unique (except for interfaces behind NATs). These addresses cannot be chosen in a willy-nilly manner, however. A portion of an interface's IP address will be determined by the subnet to which it is connected.

Figure 4.18 provides an example of IP addressing and interfaces. In this figure, one router (with three interfaces) is used to interconnect seven hosts. Take a close look at the IP addresses assigned to the host and router interfaces, as there are several things to notice. The three hosts in the upper-left portion of Figure 4.18, and the router interface to which they are connected, all have an IP address of the form 223.1.1.xxx. That is, they all have the same leftmost 24 bits in their IP address.

These four interfaces are also interconnected to each other by a network that contains no routers. This network could be interconnected by an Ethernet LAN, in which case the interfaces would be interconnected by an Ethernet switch or by a wireless access point. We'll represent this routerless network connecting these hosts as a cloud for now. 

In IP terms, this network interconnecting three host interfaces and one router interface forms a **subnet**. (A subnet is also called an IP network or simply a network in the Internet literature.) 
IP addressing assigns an address to this **subnet**: 223.1.1.0/24, where the **/24 ("slash-24")** notation, sometimes known as a **subnet mask**, indicates that the leftmost 24 bits of the 32-bit quantity define the subnet address. The 223.1.1.0/24 subnet thus consists of the three host interfaces (223.1.1.1, 223.1.1.2, and 223.1.1.3) and one router interface (223.1.1.4). Any additional hosts attached to the 223.1.1.0/24 subnet would be required to have an address of the form 223.1.1.xxx. 
- There are two additional subnets shown in Figure 4.18: the 223.1.2.0/24 network and the 223.1.3.0/24 subnet. Figure 4.19 illustrates the three IP subnets present in Figure 4.18. The IP definition of a subnet is not restricted to Ethernet segments that connect multiple hosts to a router interface. To get some insight here, consider Figure 4.20, which shows three routers that are interconnected with each other by point-to-point links. Each router has three interfaces, one for each point-to-point link and one for the broadcast link that directly connects the router to a pair of hosts. What subnets are present here? Three subnets, 223.1.1.0/24, 223.1.2.0/24, and 223.1.3.0/24, are similar to the subnets we encountered in Figure 4.18. 




But note that there are three additional subnets in this example as well: one subnet, 223.1.9.0/24, for the interfaces that connect routers R1 and R2; another subnet, 223.1.8.0/24, for the interfaces that connect routers R2 and R3; and a third subnet, 223.1.7.0/24, for the interfaces that connect routers R3 and R1. For a general interconnected system of routers and hosts, we can use the following recipe to define the subnets in the system: 
- To determine the subnets, detach each interface from its host or router, creating islands of isolated networks, with interfaces terminating the end points of the isolated networks. Each of these isolated networks is called a **subnet**. 
If we apply this procedure to the interconnected system in Figure 4.20, we get six islands or subnets. From the discussion above, it's clear that an organization (such as a company or academic institution) with multiple Ethernet segments and point-to-point links will have multiple subnets, with all of the devices on a given subnet having the same subnet address. 
In principle, the different subnets could have quite different subnet addresses. In practice, however, their subnet addresses often have much in common. 
- How addressing is handled in the global Internet: The Internet's address assignment strategy is known as **Classless Interdomain Routing (CIDR**-pronounced cider**)**. CIDR generalizes the notion of subnet addressing. As with subnet addressing, the 32-bit IP address is divided into two parts and again has the dotted-decimal form **a.b.c.d/x,** where x indicates the number of bits in the first part of the address. 
- The x most significant bits of an address of the form a.b.c.d/x constitute the network portion of the IP address , and are often referred to as the prefix (or network prefix) of the address. An organization is typically assigned a block of contiguous addresses, that is, a range of addresses with a common prefix. 
- In this case, the IP addresses of devices within the organization will share the common prefix . When we cover the Internet's BGP routing protocol we' ll see that only these x leading prefix bits are considered by routers outside the organization' s network. That is, when a router outside the organization forwards a datagram whose destination address is inside the organization, only the leading x bits of the address need be considered. This considerably reduces the size of the forwarding table in these routers, since a single entry 0fthe form a.b.c.d/x will be sufficient to forward packets to any destination within the organization. 
The remaining 32-x bits of an address can be thought of as distinguishing among the devices within the organization, all of which have the same network prefix. These are the bits that will be considered when forwarding packets at routers within the organization. These lower-order bits may (or may not) have an additional subnetting structure, such as that discussed above. For example, suppose the first 21 bits of the CIDR-ized address **a.b.c.d/21** specify the organization's network prefix and are common to the IP addresses of all devices in that organization. The remaining 11 bits then identify the specific hosts in the organization. The organization's internal structure might be such that these 11 rightmost bits are used for subnetting within the organization, as discussed above. For example, a.b.c.d/24 might refer to a specific subnet within the organization.

Before CIDR was adopted, the network portions of an IP address were constrained to be 8, 16, or 24 bits in length, an addressing scheme known as classful addressing, since subnets with 8-, 16-, and 24-bit subnet addresses were known as class A, B, and C networks, respectively. The requirement that the subnet portion of an IP address be exactly 1, 2, or 3 bytes long turned out to be problematic for supporting the rapidly growing number of organizations with small and medium-sized subnets. **A class C (/24) subnet could accommodate only up to 2^8 - 2 = 254 hosts** (two of the 2^8 = 256 addresses are reserved for special use) - too small for many organizations. **However, a class B (/16) subnet, which supports up to 65,634 hosts, was too large.** Under classful addressing, an organization with, say, 2,000 hosts was typically allocated a class B (/16) subnet address. This led to a rapid depletion of the class B address space and poor utilization of the assigned address space. For example, the organization that used a class B address for its 2,000 hosts was allocated enough ofthe address space for up to 65,534 interfaces - leaving more than 63,000 addresses that could not be used by other organizations.

**4.3.4 Network Address Translation (NAT)**
l
**4.3.5 IPv6**
l

4.5 Summary
