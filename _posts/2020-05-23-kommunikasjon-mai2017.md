---
layout: post
tags: TTM4110
categories: TTM4110
---

# Internet (packet, delay) (CH1)
- Nodal processing delay
- Queuing delay
- Transmission delay
- Propagation delay
- => total delay
<span style='color:#ff7e7e;'>Propagasjon-forsinkelse bestemmes av de fysiske egenskapene til det mediet som benyttes, mens transmisjons-forsinkelse er gitt av det utstyret (f.eks. elektronikk eller optikk) som brukes for å sende bit ut på mediet</span>

**#Processing Delay**
- Time required to examine the packets header and determine where to direct the packet

**#Queuing Delay**
- Waits to be transmitted onto the link. Length of this depends on the number of earlier-arriving packets that are queued and waiting for transmission onto the link.

**#Transmission Delay**
- Packets can only be transmitted only after all the packets that have arrived before it has been transmitted. Length of the packet by (L) bits, transmission rate of the link from Router A to router B by (R) bits/sec.
- Example:
	- 10 Mbps ethernet link, R = 10Mbps
	- This is **L/R**

**#Propagation Delay**
- Once pushed onto the link, it needs to propagate to router B. The time required to propagate from the beginning of the link to router B. The propagation speed depends on the physical medium of the link (fiber optics, UTP and so on)
- Range of propagation speed: 2*10**8 meters/sec to 3*10**8 meters/sec (a little less than the speed of light). 
<span style='color:#ff7e7e;'>Propagasjonshastigheten av en optic fiber er litt mindre enn lyshastigheten gjennom luft, hastigheten rangerer mellom  2*10**8 meters/sec to 3*10**8 meters/sec</span>
- **d_prop** This is **d/s** where (d) is the distance between router A and B. (s) is the propagation speed of the link.

**#Total Nodal delay**
- d_nodal = d_proc + d_queue + d_trans + d_prop

**#End-to-end delay**
<span style='color:#ff7e7e;'>Lasten i nettverket reflekteres i applikasjonens ende-til-ende forsinkelse</span>

**#Protocol layering**
<span style='color:#ff7e7e;'>The protocol layering as defined and applied for the Internet is a structured layered design of protocols. Since communication between nodes in the network is so complex, the services of each layer are thus divided by the respective protocols found in their layers, where each protocol layer provides its own service and which is available to the layer above to be used. This makes it possible for the concept known as encapsulation, where an added information packet can be sent around the different underlying layers allowing the layers to read the respected segments from the upper layer. Thus making a network architecture where the layers can communicate between each other. We usually follow the model of a five-layered protocol layering known as the Internet protocol stack:</span>
1. <span style='color:#ff7e7e;'>Physical layer</span>
2. <span style='color:#ff7e7e;'>Transport layer</span>
3. <span style='color:#ff7e7e;'>Network layer</span>
4. <span style='color:#ff7e7e;'>Link layer</span>
5. <span style='color:#ff7e7e;'>Physical layer</span>
<span style='color:#ff7e7e;'>The precise functions in each layer vary. In each case, however, there is a distinction between the functions of the lower (network) layers, which are primarily designed to provide a connection or path between users to hide details of underlying communications facilities, and the upper (or higher) layers, which ensure data exchanged are in correct and understandable form.</span>

<span style='color:#ff7e7e;'>Done to provide structure to the design of network protocols. Each protocol is said to belong to a given layer and is based on using services from the layer(s) below it in the protocol stack. From top to bottom the layers are (data unit name in parenthesis): Application (message), Transport (segment), Network (datagram), Link (frame), and Physical (“transported bits”). Encapsulation: A new header is added to a data unit when it moves downwards in the protocol stack, or removed when it moves upwards. (See also below).  </span>

**Concept of #Encapsulation**
- Application-layer message (packed) - down
- Transport-layer segment (packed) - down
- Network-layer datagram (packed) - down
- Link-layer frame - (packed) - down
- Payload field (packed) sent to receiver
Receiver side can then read the given segments on the layers they have
<span style='color:#ff7e7e;'>As an example of encapsulation: </span>
<span style='color:#ff7e7e;'>A link layer frame will consist of a link layer header and a datagram (from the network layer) as «payload». A datagram consists of a network layer header and a segment (from the transport layer) as payload, etc. See e.g. Figure 1.24 in Kurose and Ross (either 6th and 7th edition of the book). The figure also shows that inside the network (not end-systems) we have to go up to either the link layer (to switch a frame) or the network layer (to route a segment), but the Transport or Application layers are present only in end-systems. </span>

<span style='color:#ff7e7e;'>Når protokoll-innpakning (“protocol encapsulation”) brukes vil nyttedatadelen (“payload field”) på et gitt protokoll-lag inneholde hele protokoll-enheten (“protocol unit”) fra laget over, inkludert høyere lags adresseinformasjon</span>

**Quality of Service (#QoS)**
1. Propagation delay is the physical delay of sending bits end-to-end over a transmission link.
2. Transmission delay is the time needed to put all bits of a packet out on a transmission link, e.g. from a buffer.
3. End-to-end delay is the total time of sending an information unit from a source to a destination in a network.
4. Processing delay is the time needed for analyzing an information unit (e.g. to find outgoing address) in a router.

**Different ways that data packets can disappear on their way through a packet switched network:**
1. <span style='color:#ff7e7e;'>A packet may be removed in a network element if non-correctable bit errors are detected (to save network resources data packets in error are usually not forwarded). (</span><span style='color:#ff7e7e;'>**error detected**</span><span style='color:#ff7e7e;'>)</span>
2. <span style='color:#ff7e7e;'>If the load situation in (parts of) the network is very high, buffers may overflow so arriving packets are lost. (</span><span style='color:#ff7e7e;'>**buffer overflow**</span><span style='color:#ff7e7e;'>)</span>
3. <span style='color:#ff7e7e;'>Different types of failures in the network, e.g. link cuts or failing network elements (switches, routers, repeaters, amplifiers …) can also lead to loss of packets under transport. (</span><span style='color:#ff7e7e;'>**network failure**</span><span style='color:#ff7e7e;'>)</span>
4. <span style='color:#ff7e7e;'>If using a wireless/radio network or another shared media system (e.g. classical Ethernet): packets may collide and be lost. (</span><span style='color:#ff7e7e;'>**collision**</span><span style='color:#ff7e7e;'>)</span>

**#Generic-router-architecture**
Search on book
# Application Layer (CH2)
**#Non-Persistent and #Persistent Connections**
When a client-server interaction is taking place over TCP, the application developer needs to make an an important decision:
- should each request/response pair be sent over a separate TCP connection or (non-persistent)
	- Each TCP connection is closed after the server sends the object (file or image etc, the connection doesn’t persist for other objects. Exactly one request and one response message) Thus for a website with index.html and 10 jpgs, 11 TCP connections are generated
	- Amount of time that elapses when a client requests the base HTML file until the entire file is received by the client: (RTT): packet-propagation delays, queuing delays, packet-processing delays:
	- Back -of-the-envelope calculation (three-way-handshake):for each object:
1. Initiate TCP connection - RTT - Request file - RTT - (time to) Transmits file 
2. Roughly total response time is two RTTs plus the transmission time at the server of the HTML file
- should all of the requests and their responding responses be sent over the same TCP connection? (persistent)
<span style='color:#ff7e7e;'>Når HTTP med ikke-persistente forbindelser brukes, opprettes og vedlikeholdes en ny forbindelse for hvert objekt som etterspørres</span>

<span style='color:#ff7e7e;'>Når HTTP med persistente forbindelser brukes, blir TCP forbindelsen latt åpen etter å ha sent en respons for at de neste kommunikasjonene av “request” og “respons” mellom tjener og klienten kan bli sent på samme forbindelse. Objektene som etterspørres kan bli gjort “back-to-back” med “pipelining”. Vanligvis lukkes HTTP forbindelsen etter et gitt tid hvor den ikke blir brukt.</span>

**#DNS and #IP addresses**
There are two ways to identify a host - by a hostname and by an IP address ([www.facebook.com](http://www.facebook.com) eller 192.168.0.1) (NB IP protocol er best-effort og gir dermed mange problemer. Derfor vi har TCP og UDP, andre transport protokoller som sjekker for error og sånt.)
<span style='color:#ff7e7e;'>Domain Name System (DNS) sitt hoved oppgave er å oversette tjenernavn til numeriske IP adresser.</span>
DNS is a distributed database implemented in a hierarchy of DNS server and an application-layer protocol that allows hosts to query the distributed database. (DNS servers are often UNIX machines). DNS protocol runs over UDP and uses port 53.
<span style='color:#ff7e7e;'>The main task of DNS is to be a directory service that translates hostnames to IP addresses.</span>
<span style='color:#ff7e7e;'>The two main parts:</span>
1. <span style='color:#ff7e7e;'>a distributed database implemented in a hierarchy of DNS servers, and</span>
2. <span style='color:#ff7e7e;'>an application-layer protocol that allows hosts to query the distributed database.</span>
<span style='color:#ff7e7e;'>+</span>
<span style='color:#ff7e7e;'>Assist in server load distribution, translate hostnames to IP addresses and allocate and address to a host machine</span>
Other DNS services:
- Host aliasing: hostnames can have multiple alias names. The main is called canonical hostname
- Mail server aliasing: ^ same as above, since most canonical hostname of mail hostname might be jonny.lillehammer.yahoo.com, thus through DNS it can also get to have a simpler alias name
- Load distribution: replicate servers, s.t. Busy sites are replicated over multiple servers, with each server running on a different end-system and each having a different IP address: a set of IP addresses
<span style='color:#ff7e7e;'>High-level overview of how DNS works: </span>
<span style='color:#ff7e7e;'>Some application running in a user’s host needs to translate a hostname to an IP address. The application will invoke the client side of DNS, specifying the hostname that needs to be translated. DNS in the user’s host then takes over, sending a query message into the network. All DNS query and reply messages are sent within UDP datagrams to port 53. After a delay (ms), DNS in the user’s host receives a DNS reply message that provides the desired mapping. This mapping (usually cached for speed) is then passed to the invoking application. Thus, DNS provides a simple, straightforward translation service.</span>

<span style='color:#ff7e7e;'>Simple design for DNS would have one DNS server that contains all the mappings. In this centralized design, clients simply direct all queries to the single DNS server, and the DNS server responds directly to the querying clients.</span>

<span style='color:#ff7e7e;'>Real design: A distributed, hierarchical database that deals with the issue of scale.</span>
<span style='color:#ff7e7e;'>DNS uses a large number of servers organized in a hierarchical fashion:</span>
1. <span style='color:#ff7e7e;'>Root DNS servers (provides the IP addresses of the TLD servers)</span>
2. <span style='color:#ff7e7e;'>Top-level domain (TLD) servers (.com/.org/.edu) (provides the IP addresses for authoritative DNS servers)</span>
3. <span style='color:#ff7e7e;'>Authoritative DNS servers (facebook.com/umass.edu) (DNS records that map the name of the host to IP addresses, this server houses these DNS records)</span>

<span style='color:#ff7e7e;'>“DNS caching” brukes for å redusere forsinkelses og antall DNS meldinger som må sendes over Internet. Dette gjøres i en “query chain” der når en DNS server mottar en DNS reply (mapping av en hostname til en ip-adresse) kan den “cache”/large informasjonen. Om den samme queryen kommer for den samme hostname - ip, blir cachen brukt for å gi IP addressen.</span>
<span style='color:#ff7e7e;'>Siden “host” og mapping av hostname og IP adresse ikke er permanent, slettes informasjonen(cachen) etter en gitt periode (vanligvis 2 dager)</span>

**#HTTP server**
<span style='color:#ff7e7e;'>Webtjenere kan lytte etter klienforespørsler på nesten hvilken port som helst, de vanlige er 80 (http) eller 443 (https)</span>
HTTP is implemented in two programs: a client program and a server program. They talk to each other by exchanging HTTP messages. HTTP defines how Web clients request Web pages from Web servers and how servers transfer Web pages to client
1. HTTP client first initiates a TCP connection with the server
2. Once connection is established, browser and the server processes access TCP through their socket interfaces. 
3. In the client side of the socket interface is the door between the client process and the TCP connection
4. On the server side it is the door between the serve process and the TCP connection.
5. The client sends HTTP request messages into its socket interface and receives HTTP response messages from its socket interface. Similarly for the server.
<span style='color:#ff7e7e;'>Tjeneren sender de requestede filene til klienten uten å lagre noe state informasjon om klienten. Siden en HTTP tjener ikke lagrer noe informasjon om klienten, kalles derfor en HTTP tjener å være en tilstandsløs (“stateless”) protokoll.</span>

<span style='color:#ff7e7e;'>When an application in a host uses TCP to communicate with a server, the difference between a ServerSocket and a ConnectionSocket is that:</span>
- <span style='color:#ff7e7e;'>ServerSocket is the (open for all) port you send a request to establish a TCP connection to. </span>
- <span style='color:#ff7e7e;'>ConnectionSocket is then established by the server for a specific TCP connection to be used in the connection</span>

**#Socket interface**
End systems attached to the Internet provide a socket interface that specifies how a program running on one end system asks the Internet infrastructure to deliver data to a specific destination program running on another end system. This Internet socket interface is a set of rules that the sending program must follow, so that the Internet can deliver the data to the destination program.

<span style='color:#ff7e7e;'>A process sends messages into, and receives messages from, the network through a software interface called a socket.</span>
<span style='color:#ff7e7e;'>This sending process assumes that there is a transportation infrastructure on the other side of the socket interface that will transport the message to the destination process. (meaning socket do work on other transportation infrastructures (TCP, UDP etc...))</span>
<span style='color:#ff7e7e;'>Socket is the interface between the application layer and the transport layer within a host (API).</span>

# Multimedia

**#FEC**
The ability of the receiver to both detect and correct errors is known as forward error correction (FEC). These are the techniques commonly used in audio storage and playback devices such as CDs. In a network setting, FEC techniques can be used by themselves, or in conjunction with link-layer ARQ techniques.
- Decreases the number of sender retransmissions required
- Immediate correction of errors at the receiver - avoids round-trip propagation delay to receive a NAK packet and retransmitted packet.
<span style='color:#ff7e7e;'>“Forward Error Correction (FEC)” legger til redundant informasjon til en pakkestrøm som kan brukes til å gjenopprette (potensielt) mistet informasjon i nettet ved destinasjonen. Ulempen er et marginelt økende overføringshastighet.</span>

<span style='color:#ff7e7e;'>FEC adds overhead; Interleaving adds delay</span>

<span style='color:#ff7e7e;'>Extra information is added to the data (e.g. parity bits) at source. This is used to recreate lost or corrupted information at the destination (or alternatively it may be done locally for each link). </span>
- FEC with redundant encoded chunks. n value is 4.

if the first packet is lost in every group of two packets:
1. <span style='color:#ff7e7e;'>FEC with redundant encoded chunks (every 4 original chunks):</span> If just the first packet in a group of 4 packets gets lost, it can fully reconstruct the lost packets with the redundant encoded chunk added to the original packet stream, thus the audio quality would be the exact same as if there were no packets lost. 
The new transmission rate is 96+96*1/4 = 120 bytes/chunk which means increase of 25%.
2. <span style='color:#ff7e7e;'>FEC with redundant lower-resolution audio stream (GSM):</span> Here we refer the nominal stream as the G.722-encoded stream and the low-bit rate GSM as the redundant stream. If the first packet from the nominal stream was to be lost, the lost packet would be constructed by taking it from the redundant stream. Thus in this manner, it is concealed by playing out the low-bit rate encoded chunk that arrives with the subsequent packet. The quality would then be lower than the nominal chunk. But a stream of packets of mostly high-quality chunks and occasional low-quality chunks gives a good quality overall.
(48000+13000bit/s * 0.016s)/8 = 122 bytes/chunk which means increase of 27%.
<span style='color:#ff7e7e;'>FEC (“Forward Error Correction”) teknikker vil hjelpe til med å minke antall nødvendige retransmisjoner fra avsender, ved å rekonstruere pakker om det blir pakketap.</span>

<span style='color:#ff7e7e;'>Some schemes exist to recover from packet loss when realizing real-time conversational voice over the internet (Voice-over-IP). Two variants of FEC are amongst these. </span>
1. <span style='color:#ff7e7e;'>Send an additional packet of data after each n packets, constructed by XOR-ing the n original packets. If one of the n+1 packets are lost, it may then be fully reconstructed at the receiver. </span>
2. <span style='color:#ff7e7e;'>Send a lower resolution (low bitrate) audio stream as the redundant information. This may e.g. be done by appending the (n-1) lower quality packet at the end of the full quality n packet in a stream. If a packet is lost the lower quality part of the next packet can then be used instead. This does not recreate the lost information, but normally conceals it well.  </span>

**When using the public Internet for interactive voice communication, what are the main challenges to achieve good quality?**
<span style='color:#ff7e7e;'>In this case it is limited how long you can buffer information to cancel out variation in delay through the network. Too large a value becomes noticeable as a delay in response from the other end of the interactive communication. On the other hand, some loss of information is usually acceptable and may not even be noticeable for speech. If enough processing power is available on both sides, forward error correction (FEC) could also be used to handle information loss. (But since this is real-time, processing demands may be prohibitive for legacy equipment). There is also a trade-off between the extra bandwidth needed for FEC and increased loss or delay that may be introduced in the network because of it.</span>

**Interleaving**
<span style='color:#ff7e7e;'>“Interleaving” kan brukes av “Voice-over-IP” applikasjoner for å motvirke effekten av pakketap. Resultatet er at kvaliteten på det mottatte talesignalet reduseres for en lengre tidsperiode, i stedet for at hele talesignalet blir borte i en kortere tidsperiode.</span>

Interleaving can mitigate the effect of packet losses.
Can significantly improve the perceived quality of an audio stream. Low overhead, increases latency but doesn’t increase bandwidth requirements.
1. Interleaving: Since the packets are interleaved and a single packet is lost. It would reconstruct the loss packet but there would be multiple small gaps in the reconstructed chunk, lowering the audio quality. It is however better than a single large gap on the first packet.
Interleaving only increases the latency from resequencing and reconstructing but doesn’t increase the bandwidth. Thus 96 bytes with the increase of 0%.

**#Playback delay for the schemes ^**
First scheme, have to wait for all the packets in the group. In our case n = 5, which means that we have to wait for n + 1 = 6 packets. Added playback delay is 6. Second scheme, only has to receive two packets before playback. Interleaving has an obvious disadvantage in its increased latency. Need to wait for all packets in a group before they can be interleaved, then the stream needs to be reconstructed when received.

**Multimedia: #Voice communication**
Main challenges to achieve good quality for interactive voice communication:
<span style='color:#ff7e7e;'>In this case it is limited how long you can buffer information to cancel out variation in delay through the network. Too large a value becomes noticeable as a delay in response from the other end of the interactive communication. On the other hand, some loss of information is usually acceptable and may not even be noticeable for speech. If enough processing power is available on both sides, forward error correction (FEC) could also be used to handle information loss. (But since this is real time, processing demands may be prohibitive for legacy equipment). There is also a trade-off between the extra bandwidth needed for FEC and increased loss or delay that may be introduced in the network because of it.</span>

**Real-Time Protocol (#RTP)**
Since RTP runs on top of UDP, the sending side has to encapsulate the media chunk within an RTP packet then into an UDP segment.
<span style='color:#ff7e7e;'>RTP protokollen bruker vanligvis UDP protokollen for transport</span>

**Multimedia: HTTP #Streaming**
<span style='color:#ff7e7e;'>Når vi streamer lagret video gjennom Internet, kan vi bruke UDP som transportlagsprotokoll, men det anbefales ikke, pga. stor sjanse for pakketap, minimalt med services og “unreliable data transfer”, og dermed dårlig kvalitet. Derfor brukes TCP som oftest.</span>
- Client buffering - Bytes collected in a client application buffer. Once the number of bytes in this buffer exceeds a predetermined threshold, the client application begins playback - specifically, the streaming video application periodically grabs video frames from the client application buffer, decompresses the frames, and displays them on the user’s screen. Video streaming applications is displaying the video as it is receiving the buggering frames corresponding to latter parts of the video
<span style='color:#ff7e7e;'>Når lagret video streames, kan buffer brukes hos klienten for å utjevne variasjoner i tjener-til-klient forsinkelsen.</span>
- End-to-end delay - accumulation of transmission, processing and queuing delays in routers; propagation delays in links; and end-system processing delays. 
- Packet #jitter (delay variation) - varying queuing delays, time from when a packet is generated at the source until it is received at the receiver can fluctuate from packet to packet. Solves by using sequence numbers, timestamps and a playout delay
<span style='color:#ff7e7e;'>Packet jitter er et resultat av varierende queuing delay fra når en pakke blir sent til den ankommer destinasjonen. Pakketap i et nett skjer gjennom packet loss, der f.eks. at bufferen er full, eller at pakken ikke kommer til destinasjonen i det hele tatt pga valgt transport protokoll.</span>
<span style='color:#ff7e7e;'>Packet loss rates mellom 1 og 20% kan er grei siden mennesker ikke vil merke så mye.</span>

To provide optimal streaming media delivery to customers, service providers (e.g. Netflix) needs to maximize its control over the three basic components in the delivery chain: video player, video server, and network in-between. Describe which network parameters affect the users' experience of streaming quality, and briefly what service providers (e.g. Netflix) does to ensure the best possible user experience.
<span style='color:#ff7e7e;'>Video streaming is particularly sensitive to packet delay and loss, misordered arrival of packets, and unpredictable (jittery) round-trip times inherent to TCP/IP. Minimizing the network distance reduces the potential exposure to these anomalies: Caching through Content Distribution Networks (CDNs).</span>
<span style='color:#ff7e7e;'>For Netflix: Licenses for content is paid for by geographical region. IP address is used to approximate location.</span>

<span style='color:#ff7e7e;'>Client-side buffering is used to handle jitter. </span>

<span style='color:#ff7e7e;'>Jitter must be removed at the receiver when audio is sent over the public Internet to give smooth / time-corrected playback.</span>

**Maintaining good quality on #stored video streaming:**
<span style='color:#ff7e7e;'>The main challenge in streaming stored video over the Internet and maintaining a good quality is to handle variation in delay (jitter). Since streaming is one-way, long distance/delay or even some packet loss is acceptable since the fixed delay (by buffering) at the receiver can be increased without noticeable quality loss for the user, assuming enough buffer space is available. </span>

Prefetching
Adapting media quality to available bandwidth
Adaptive playout
Loss mitigation techniques
DASH

# Security
<span style='color:#ff7e7e;'>Confidentiality / Konfidensialitetet</span><span style='color:#ff7e7e;'>: Protect against unauthorized disclosure of information. </span>
<span style='color:#ff7e7e;'>Integrity / Integritet</span><span style='color:#ff7e7e;'>: Avoid intentional or unintentional modification of information. </span>
<span style='color:#ff7e7e;'>Authentication / Autentisering (autentitet)</span><span style='color:#ff7e7e;'>: Genuineness of data or users. </span>
1. Caesar cipher is an example of symmetric key cryptography, and RSA is an example of public key encryption
2. Use of a cryptographic hash function and a shared authentication key together is sufficient to achieve message integrity. 
3. SSL is used for securing TCP connections.
4. A message authentication code (MAC) is used to achieve message integrity.
5. Public key encryption is based on using public keys for encrypting and private keys for decrypting. 
6. Digital signatures can be realized by using a combination of public key encryption and public key certification. 
7. The IEEE 802.11 WEP protocol (from 1999) for securing wireless LANs is regarded as a weak level of security, since it’s a known algorithm and thus have many problems, loopholes.
<span style='color:#ff7e7e;'>Assuming we want to need a confidential and digitally signed contract via a public network, a combination of information security services and mechanism needed to do this securely are Digital signature, Certification Authority (CA) and Encryption.</span>

Digital Signature

Digital Certification Authority (CA)
<span style='color:#ff7e7e;'>A digital certificate verifies the validity of public keys. The Certification Authority (CA) signs the digital certificate with its own secret key to confirm the validity.</span>

**#Symmetric key cryptography** 
<span style='color:#222222;'>a type of encryption scheme in which the same key is used both to encrypt and decrypt messages.</span>
<span style='color:#ff7e7e;'>I “Symmetric key cryptography” deler sender og mottakker en hemmelig nøkkel brukt for å enkryptere og dekryptere meldinger</span>
Assume a group of N people (N > 2). To allow each member of the group to communicate confidentially with each of the other members of the group separately, how many secret keys are necessary in total when using symmetric key cryptography?  N(N-1)/2

Monoalphabetic ciphers, Polyalphabetic ciphers, steam and block cipher: AES/DES
<span style='color:#ff7e7e;'>“Caesar Cipher” er et eksempel på en symmetrisk nøkkel algoritme for å kryptere data</span>
- **#Ciphertext-only attack**. In some cases, the intruder may have access only to the intercepted ciphertext, with no certain information about the contents of the plaintext message. We have seen how statistical analysis can help in a ciphertext-only attack on an encryption scheme.
- **#Known-plaintext attack**. We saw above that if Trudy somehow knew for sure that "bob" and "alice" appeared in the ciphertext message, then she could have determined the (plaintext, ciphertext) pairings for the letters a, l, i, c, e, b, and o. Trudy might also have been fortunate enough to have recorded all of the cipher-text transmissions and then found Bob' s own decrypted version of one of the transmissions scribbled on a piece of paper. When an intruder knows some of the (plaintext, ciphertext) pairings, we refer to this as a known-plaintext attack on the encryption scheme.
<span style='color:#ff7e7e;'>I et “Known-plaintext” angrep har en inntrenger adgang til et ord eller setning i meldingen, og kan få adgang til den “ciphertext” korresponderende til enhver “plaintext” de allerede kan om. De for da dermed adgang til krypteringsfunksjonen.</span>
- **#Chosen-plaintext attack**. In a chosen-plaintext attack, the intruder is able to choose the plaintext message and obtain its corresponding ciphertext form. For the simple encryption algorithms we' ve seen so far, if Trudy could get Alice to send the message, "The quick brown fox jumps over the lazy dog," she could completely break the encryption scheme. We'll see shortly that for more sophisticated encryption techniques, 

**Differences of Symmetric Key Cryptography and Public Key Encryption**
<span style='color:#ff7e7e;'>In modern cryptography the algorithms are always assumed to be known, so the security rests with breaking the key(s). (Historically this is not true for symmetric key crypto; and for some military uses it may still not be true…). Symmetric key cryptography uses the same key to encrypt and decrypt, thus it is shared by both parts in a communication. For public key encryption there are two keys, one private and secret and one public and known to all. Both systems may e.g. be used to achieve confidentiality of information. Public key cryptography may also be used to achieve message integrity and to establish digital signatures. </span>

<span style='color:#ff7e7e;'>The simplest possible way to establish a “digital signature” as a minimum is to use a private key (of a public key crypto system) to encrypt a message or statement. By using the public key corresponding to this private key anyone may then confirm validity. However, you have to know for certain that the public key actually belong to the person you are validating, thus a trusted third party, issuing a certificate, is also necessary. </span>


**#Cipher-Block Chaining**
If plain cipher block is used, multiple plaintext blocks is then encrypted with the same shared key. Thus easy to crack when given many plaintexts.
Thus** Cipher Block Chaining (#CBC)**: send one random value along the very first message, and then have the sender and receiver use the computed coded blocks in place of the subsequent random number.
<span style='color:#ff7e7e;'>“CBC” brukes til å sikre at identiske blokker med “plaintext” resulterer i ulike blokker med “ciphertext”</span>

**#**<span style='color:#222222;'>**Public key cryptography**</span>
<span style='color:#ff7e7e;'>I “Public key cryptography” finnes det to nøkler - offentlig og privat nøkkel som brukes for kryptering og dekryptering av meldinger, algoritmen kan vi finne ut av fra den offentlige nøkkelen vanligvis.</span>
Assume a group of N people (N > 2). To allow each member of the group to communicate confidentially with each of the other members of the group separately, how many secret keys are necessary in total when using public key cryptography?  N
<span style='color:#ff7e7e;'>En digital signatur kan lages av å bruke den private nøkkelet fra et “public key cryptographic algorithm” brukt for å signere en melding(or the hash of a message).</span>
<span style='color:#222222;'>RSA (used in IPsec and SSL)</span>

**#**<span style='color:#222222;'>**Message integrity and** </span>**#**<span style='color:#222222;'>**digital signatures**</span>
<span style='color:#ff7e7e;'>“Message integrity” er konseptet for å detektere om (eller sikre mot) at innholdet i meldingen (ikke) har blitt endret</span>

**#Cryptographic Hash Functions**
It is computationally infeasible to find any two different messages x and y such that H(x) = H(y).
Computationally infeasible for an intruder to substitute one message for another message that is protected by the hash.
MD5 hash algorithm - 128-bit hash in a four-step process consisting of a padding step (null bytes so the length satisfies a condition), an append step (64-bit representation of the message length), and initialization of an accumulator, and a final looping step (16-word blocks are processed 4 rounds).
- **Secure Hash Algorithm (SHA-1)**
<span style='color:#ff7e7e;'>En “Cryptographic Hash Function” brukes for å oppnå konfidensialitet for en melding</span>

**#Firewall**
A combination of hardware and software that isolates and internal network from the Internet at large, allowing some packets to pass and blocking others. Allows the network administrator to control access between the outside world and within the administered network by managing the traffic flow to and from these resources:
- All traffic from outside to inside, and vice versa passes through the firewall
- Only authorized traffic, as defined by the local security policy, will be allowed to pass
- The firewall itself is immune to penetration
<span style='color:#ff7e7e;'>En brannmur “firewall” brukes til å beskytte et internt nett eller en enkelt tjener eller PC mot angrep via det offentlige nettet</span>
1. Traditional packet filters:
uses different rules for datagrams leaving and entering the network.
2. Stateful filters:
tracks outgoing TCP connections to decide whether to let received TCP packets into the network or not.
3. Application gateways:
?
**Three categories of firewalls, with explanation of the functionality of each:**
- <span style='color:#ff7e7e;'>**Traditional packet filters**</span><span style='color:#ff7e7e;'>: A filter put at all router input(s) to an organizations internal network based on a security (filtering) policy. Normally this is based on a combination of addresses and port numbers, and may be different for incoming and outgoing packets. Other information could also be used, e.g. TCP ACK bit set or not in a TCP segment. Decisions are based on information in each packet in isolation. An access control list is implemented based on the rules. </span>
- <span style='color:#ff7e7e;'>**Stateful packet filters**</span><span style='color:#ff7e7e;'>: Unlike traditional packet filters this also tracks connections to make the filtering more efficient and secure. It uses a connection table in addition to an extended version of the access control list. </span>
- <span style='color:#ff7e7e;'>**Application gateways**</span><span style='color:#ff7e7e;'>: An application specific server through which all incoming and outgoing application data must pass. These base decisions on application data in addition to the filters above. Such a server may e.g. prompt a user trying to connect to provide a username and password before access is given. Application gateways are specific for each application, so many of them may be needed in an organization. They may be run on the same host(s) though. </span>

# Trådløs og VPN
**#IPsec and Virtual Private Networks (#VPNs)**
IP security protocol, provides security at the network layer. Secures IP datagrams between any two network-layer entities including hosts and routers - creates VPNs
<span style='color:#ff7e7e;'>“IPsec” realiserer sikkerhet på nettverkslaget</span>

<span style='color:#ff7e7e;'>Ved bruk av en VPN-klient (Virtuelt Privat Nett) på en enhet knyttet til et ukryptert trådløst lokalnett (WLAN), kan de ulike IP-adressene du kommuniserer med ikke sees av andre tilknyttet det samme WLAN-subnettet. Men din lokale IP-adresse tildelt av nettet kan sees av andre tilknyttet på samme subnett.</span>

With a VPN, the institution's interoffice traffic is sent over the public Internet rather than over a physically independent network. Confidentiality: traffic is encrypted before it enters the public Internet.
<span style='color:#ff7e7e;'>High level overview of IPsec to create VPN:</span>
<span style='color:#ff7e7e;'>When a host in headquarters sends an IP datagram to a salesperson in a hotel, the gateway router in headquarters converts the vanilla IPv4 datagram into an IPsec datagram and then forwards this IPsec datagram into the Internet. This IPsec datagram has a IPv4 header, so it’s seen as an ordinary IPv4 on the public routers. The payload of the IPsec datagram is encrypted until it arrives to the salesperson’s pc where it gets decrypted, then sent to the upper-layer protocol (TCP/UDP)</span>

An "unblock Netflix" service works explained (illustrated with a protocol stack drawing.) 
<span style='color:#ff7e7e;'>To get a valid IP address in the area with the wanted content, a VPN service can be used. Illustration showing that communication must go via a third party (the VPN service) towards the destination. The VPN service will access the content with a valid IP address and then forward it to you.</span>

**WiFi: #802.11 Wireless LANs (#APs)**
Random access network used in 802.11:
<span style='color:#ff7e7e;'>802.11 standard er at et 802.11 trådløst LAN bruker CSMA/CA som medium aksess protokoll (MAC), ulike varianter av WiFi 802.11xx enhetere operer da i two forskjellige frekvenser: 2.4GHz og 5GHz, brukt en hver eller begge for kommunikasjon</span>
The fundamental building block of the 802.11 architecture is the basic service set (BSS)
A BSS contains one or more wireless stations and a central base station known as access point (AP). When a network administrator installs an AP, it assigns a one- or two-word Service Set Identifier (SSID) to the access point
<span style='color:#ff7e7e;'>Et 802.11 trådløst LAN som benytter et aksesspunkt (AP) er et eksempel på et infrastructure-based nettverk. Et eksempel på en ad hoc nettverk er et IEEE 802.11 stasjon som er gruppert sammen for å forme et nettverk uten noe sentral base kontroll eller noe kobling ute i Internet. (LAN)</span>

<span style='color:#ff7e7e;'>Elements included:</span>
1. <span style='color:#ff7e7e;'>RTS/CTS</span>
2. <span style='color:#ff7e7e;'>ACK</span>
3. <span style='color:#ff7e7e;'>CSMA/CA</span>
4. <span style='color:#ff7e7e;'>Distributed Inter-frame Space (DIFS)</span>

Random Access method used in the 802.11 #MAC protocol
<span style='color:#ff7e7e;'>“Carrier Sense Multiple Access with Collison Avoidance” (CSMA/CA) is used. When not transmitting, a station is listening for activity on the medium. Following certain rules made to (try to) avoid collisions and to let certain short frames have priority (e.g. acknowledgements) a station may attempt to transmit. This is controlled via counting down a random back-off delay, to decrease the probability of collision with other stations. Also, some minimum space is in place after a successful transmission to allow priority access for ACK control frames (and other short control frames). Collision Avoidance is not really achieved in full, since frames sent from two or more stations may still collide. Collisions cannot be observed by a sending station so explicit acknowledgements are necessary. Lack of such means that collision is assumed and the frame is resent. </span>

<span style='color:#ff7e7e;'>Et AP (“Access point”) sender periodiske “beacon frames” for å informere potensielle trådløse enheter om at det eksisterer.</span>

**Differences between an infrastructure and an adhoc wireless LAN as defined by the 802.11 specifications:**
<span style='color:#ff7e7e;'>While in infrastructure mode hosts are associated with (/connected to) a base station, the wireless hosts in ad hoc mode have no infrastructure with which to connect, but may communicate (mostly directly) with each other. In the absence of an infrastructure, the hosts themselves must provide for services such as routing, address assignment, DNS-like name translation, and more. Figure 7.7 and 7.8 in the textbook (7th edition; Fig. 6.7 and 6.8 in 6th edition) shows these two principles. </span>

**W-LAN**
An optional scheme based on the use of “#RTS” and “#CTS” control frames, how it works when it is used:
<span style='color:#ff7e7e;'>Two wireless stations which both may communicate with the Access Point (AP) may still be hidden from each other, i.e. one station may think the channel is free when it is actually used by the other station. This will lead to potential collisions in the area around the AP. </span>
<span style='color:#ff7e7e;'>The RTS and CTS frames are used to reserve the channel ahead of time. The confirmation of this reservation (a short CTS frame) will be detected by all stations since it is broadcast by the AP. </span>
<span style='color:#ff7e7e;'>Although the RTS/CTS exchange can help reduce collisions, it also introduces delay and consumes channel resources. For this reason, the RTS/CTS exchange is only used (if at all) to reserve the channel for the transmission of a long DATA frame. In practice, each wireless station can set an RTS threshold such that the RTS/CTS sequence is used only when the frame is longer than the threshold. </span>

**Wireless network #infrastructure**
Host operating with no infrastructure: In #adhoc networks, wireless hosts have no infrastructure with which to connect. The host themselves must provide for services such as routing, address assignment, DNS-like name translation, and more - handoff
<span style='color:#ff7e7e;'>I et trådløst ad hoc nett kommuniserer ikke de mobile enhetene via et felles aksesspunkt, nettverket er formet “on the fly” for at nodes/devices kan kommunisere mellom hverandre</span>
- Single-hop, infrastructure-based (most common): the network have a base station connected to a larger wired network. Communication over a single wireless hop. 802.11 networks and 4G LTE.
- Single-hop, infrastructure-less: no base station that is connected to a wireless network. Nodes that coordinates the transmission of other nodes. Bluetooth
- Multi-hop, infrastructure based: a base station is present that is wired to the large network, however some wireless nodes may have to relay their communication through other wireless nodes in order to communicate via the base station. Wireless mesh networks.
- Multi-hop, infrastructure-less: no base station, nodes relays messages among several other nodes in order to reach a destination. Mobile, connectivity changing among nodes - mobile ad hoc networks (MANETs) -- (VANET)<span style='color:#ff7e7e;'>
Det finnes da et AP i et “infrastructure wireless LAN”</span>

**Multipath**
a

**#Hidden terminals og #fading**
<span style='color:#ff7e7e;'>“Hidden terminal” problemet i trådløs kommunikasjon fra en fysisk obstacle (fjell eller bygning som forhindrer transmisjonen) eller fading (av signalstyrken mens den går gjennom trådløs mediet), er utfordringen med å få to trådløs stasjoner å transmittere til hverandre eller andre noder. synkronisere transmisjoner til de samme frekvensene</span>

<span style='color:#ff7e7e;'>Hidden terminal problemet og fading gjør trådløse nettverk mer compleks, dermed er faste linker (kobberkabler, fiberlinker) mer pålitelige enn trådløse linker pga. færre bitfeil under transmisjon</span>

<span style='color:#ff7e7e;'>Pga hidden terminals problemet er også kommunikasjon over en radiokanal mer utsatt for støy enn kommunikasjon over en optisk - eller kopper kanal</span>

The 802.11 MAC protocol also includes an optional reservation scheme that helps avoid collision in the presence of hidden terminals:When H1 is hidden from H2 and vice versa but shown to the AP, the IEEE 802.11 protocol allows a station to use a short Request to Send (RTS) control frame and a short Clear to Send (CTS) control frame to reserve access to the channel. When a sender wants to send a DATA frame, it can first send an RTS frame to the AP, indicating the total time required to transmit the DATA frame and the ACK frame. When the AP receives the RTS frame, it responds by broadcasting a CTS frame. This CTS frame serves two purposes: It gives the sender explicit permission to send and also instructs the other stations not to send for the reserved duration.(Collision avoidance, when a node send RTS, the AP sends CTS to stop other nodes to send)

<span style='color:#ff7e7e;'>I et WiFi (802.11) lokalnett blir RTS og CTS rammer brukt for å reservere aksess på kommunikasjonskanalen. Den opsjonelle “Request-To-Send” (RTS) / “Clear-To-Send” (CTS) mekanismen definert av 802.11 standarden kan dermed hjelpe til med å løse “hidden terminal” problemet.</span>


**Cellular network (2G, 3G, 4G)**
The original 2G systems (#GSM) were designed for voice, but later extended (2.5G) to support data as well as voice services. 3G (#UMTS) systems also support voice and data, but with an emphasis on data capabilities and higher-speed radio access links.
The 4G systems being deployed today are based on #LTE technology, feature an all-IP core network, and provide integrated voice and data at multi-Megabit speeds.
An “all-IP” network
The differences between Access Networks and The Network Core
<span style='color:#ff7e7e;'>Access networks are the closest to users. Transport networks exist to connect different (and different types of) access networks together, i.e. allowing communication over larger distances and between different types of technologies. Transport networks will implement the three lowest layers, i.e. Physical, Link and Network layers. If end-systems are regarded as part of the Access networks they will have to implement the full protocol stack; but not everywhere – also communication inside an access network may use switches (and sometimes even routers). Examples of technologies: Digital Subscriber Line (DSL), Cable, Fiber to the Home (FTTH) or Wireless (Satellite, WiFi, etc.) for access from home; Ethernet or WiFi for access from Enterprises. For the network core: large packet switches (routers or link layer switches) connected with optical fibers, or Circuit switches (e.g. large Optical Cross connects (OXC)) and fiber links. </span>

<span style='color:#ff7e7e;'>Mobilarkitekturen 4G (LTE) har et IP-over-alt (“all-IP”) kjernenett.</span>

<span style='color:#ff7e7e;'>Mobilarkitekturen 3G (UMTS) har et radioaksessnett (Radio Access Network (RAN)) basert på bruk av CDMA for trådløs transmisjon.</span>
<span style='color:#ff7e7e;'>Radiotransmisjonen i et 3G mobilsystem er basert på varianter av CDMA (“Code Division Multiple Access”) prinsippet</span>

<span style='color:#ff7e7e;'>Mobilarketekturen 2G (GSM) er et rent linjesvitsjet nett, laget primært for talekommunikasjon</span>

<span style='color:#ff7e7e;'>Protokollen “Wired Equivalent Privacy” (WEP) standardisert i 802.11 spesifikasjonen er ment og laget for å gi autentisering og konfidensialitet mellom en 802.11 trådløs enhet og AP. Det finnes da mange svakheter, så man bør vurdere om den bør brukes eller ikke.</span>

**Differences between 3G and 4G:**
<span style='color:#ff7e7e;'>The two most important changes from 3G to 4G is an all IP core network, and an enhanced radio access network based on use of orthogonal frequency division multiplexing (OFDM). </span>

# **Transport layer (CH3)**
Transportslagsprotokollen er til stede i endsystemer

<span style='color:#ff7e7e;'>TCP er den mest brukte transportprotokollen i Internet, den er også en forbindelsesorientert protokoll (connection-oriented protocol), velegnet for pålitelig dataoverføring. “Three-way handshake” brukes for å etablere en forbindelse før en starter å overføre data.</span>
Transport-layer protocols can provide reliable data transfer over reliable networks, but also unreliably like UDP for example.
Applications can have reliable data transfer through the transport-layer protocol if the protocol used provide it. It can also have reliable data transfer through some other protocols. <span style='color:#ff7e7e;'>Transportlaget er over nettverkslaget i protokollstakken</span>

**#TCP**
<span style='color:#ff7e7e;'>TCP har implementert både ende-til-ende flytkontroll og overbelastningskontroll (flow- and congestion control)</span>
- Connection-oriented service: client and the server exchange transport-layer control information before the application-level messages begin to flow. Handshaking procedure that lets clients and servers prepare. The connection is a full-duplex connection in that the two processes can send messages to each other over the connection at the same time.
- Reliable data transfer service: Deliver all data sent without error and in the proper order
- Congestion-control mechanism
<span style='color:#ff7e7e;'>TCP realiserer en mer pålitelig transportjeneste enn TCP</span>
<span style='color:#ff7e7e;'>(host IP, source IP, source port num, host port num) in TCP</span>
<span style='color:#ff7e7e;'>Contains the address information: source and destination ports in its header. The payload of a TCP segment is from the Application layer. IP addresses are added in the Network layer, where the TCP segment is the payload.</span>
In TCP, properties of ACKs received are used in congestion control.
<span style='color:#ff7e7e;'>Protokollhodet til et TCP segment inneholder IP adresser for både sender og mottakker, mens kilde- og destinasjonsporter ligger i IP protokollen</span>
A TCP sender window can contain acknowledged data as well as unacknowledged data.
<span style='color:#ff7e7e;'>1-bit sekvensnummer i TCP flytkontroll (flow control) er basert på nummeret til pakken som sendes for å sortere pakkene mottatt i riktig rekkefølge eller også muligens duplikat fra retransmisjoner. TCPs flytkontroll implementeres ved å bruke en vindusvariabel (window variable) på sendersiden, som indikerer tilgjengelig bufferplass på mottakersiden</span>

<span style='color:#ff7e7e;'>Flow control is that the receiver controls the data flow sending rate from the sender. The reason of having flow control is that, due to limited processing capacity, limited storage space and/or other reasons, the receiver may not be able to handle the incoming data as they arrive and will lose them, if the sender sends the data too fast. The version of flow control implemented in TCP is based on counting bytes sent to a destination and keeping track of acknowledgements from destination for successfully received bytes. A window of sent, not acknowledged bytes is maintained. Acknowledgements are cumulative.  </span>

<span style='color:#ff7e7e;'>**High-level overview of the flow control in TCP:**</span>
<span style='color:#ff7e7e;'>The sender maintain a variable called the receive window, reflecting how much free space is available at the receiver side. Successfully transmitted segments are acknowledged from the receiver to the sender (or rather the number of bytes they contain), so the sender can adjust the receive window. The sender has to stop transmitting if the receive window become too small to accept any further segments from the sender, until more acknowledgements are received. (In addition to this timeouts are used at the sender side to decide when to retransmit segments that are not acknowledged within an acceptable timeframe. This is however more related to congestion control below, since losing segments is often an indication of network congestion). </span>

<span style='color:#ff7e7e;'>“Slow start”, “Congestion avoidance”, “Fast recovery” er alle ulike deler av TCP metningskontroll mekanismen.</span>

<span style='color:#ff7e7e;'>Congestion control is needed to prevent the network itself from being overloaded, i.e. buffers overflowing due to links not being able to handle the amount of offered traffic.</span>

<span style='color:#ff7e7e;'>**High-level overview of the congestion control in TCP:**</span>
<span style='color:#ff7e7e;'>The three main components of TCP congestion control is “slow start”, “congestion avoidance”, and “fast recovery” (the two first are mandatory for any TCP implementation). Figure 3.51 in the textbook (7th edition) illustrates the TCP congestion control states. Some implementation variations exist for different versions of TCP. Together these mechanisms adds up to an “additive-increase, multiplicative-decrease” (AIMD) form of congestion control, with a typical saw tooth behavior. </span>


<span style='color:#ff7e7e;'>**High-level overview of TCP connection establishment:**</span>
<span style='color:#ff7e7e;'>TCP uses a three-way handshake procedure for connection establishment. This</span>
<span style='color:#ff7e7e;'>works as follows (assuming a host connecting to a server):</span>
1. <span style='color:#ff7e7e;'>SYN: The host sends Packet 1, which is a SYN (i.e. the SYN bit is set to 1), to the server, which performs the active open. The client sets the segment's sequence number to a random value A.</span>
2. <span style='color:#ff7e7e;'>SYN-ACK: In response, the server replies in Packet 2 with a SYN-ACK (i.e. the SYN bit is set to 1). The acknowledgment number is set to one more than the received sequence number (A + 1), and the sequence number that the server chooses for the packet is another random number B.</span>
3. <span style='color:#ff7e7e;'>ACK: Finally, the host sends an ACK back to the server in Packet 3 (SYN bit is set to 0). The sequence number is set to the received acknowledgement value i.e. A+1, and the acknowledgment number is set to one more than the received sequence number i.e. B+1.</span>

**#SSL**
- Encryption to secure TCP
- Everything TCP does + process-to-process security services
- Encryption, data integrity, end-point auth.
- Enhancement of TCP
<span style='color:#ff7e7e;'>“Secure Sockets Layer” (SSL) er et tillegg eller en utvidelse av TCP på applikasjonslaget for å realisere sikker kommunikasjon/sikre IP kommunikasjon</span>
<span style='color:#ff7e7e;'>SSL is made to add security to the transport layer / TCP connections.  </span>
Has its own socket API similar to TCP socket API

**#UDP**
- No-frills, lightweight transport protocol
- Minimal services, connectionless (no handshaking before the two processes start to communicate)
- Unreliable-data-transfer service
- No Congestion-control mechanism
<span style='color:#ff7e7e;'>(host IP, host port number) in UDP</span>
<span style='color:#ff7e7e;'>Applications like E-mail, RTA, Web, File transfer, Streaming multimedia and Internet telephony all can use the underlying transport protocol UDP or TCP. But the services provided by TCP is much more liked, and not default blocked by the firewall. Dette betyr at det er fullt mulig å bruke UDP som transportlag protokoll for å streame et lagret video gjennom video (men med sikkert masse delay, stutter og increased bandwidth throughout)</span>
UDP does not establish a connection between endpoints.
Even though UDP doesn’t provide a congestion control, but it is still possible for it to have Congestion Control.
<span style='color:#ff7e7e;'>UDP doesn’t have end-to-end flow control as a service and also no defined congestion control. But the UDP segment includes a checksum for error detection.</span>

<span style='color:#ff7e7e;'>The same type of checksum is implemented for both UDP and TCP segments. </span>

**Advantages of UDP over TCP:**
<span style='color:#ff7e7e;'>For real-time applications where you can both accept some (small) errors in transmission (e.g. loss tolerant conversational voice or video) and do not have time to do a retransmission (strict real-time demands), UDP may be a good choice. Some (small) errors may also be corrected or concealed by using forward error correction (FEC) instead of retransmissions. </span>
<span style='color:#ff7e7e;'>Advantages of UDP are e.g. no connection set-up delay and less overhead than TCP. Another example is therefore also cases where you just need to send a single (non-critical) message and do not want to set up a connection first, e.g. DNS. </span>

**#Pipelining**


**#Go-Back-N (#GBN)**
Go-Back-N (GBN) protocol**,** the sender is allowed to transmit multiple packets (when available) without waiting for an acknowledgement, but is constrained to have no more than some maximum allowable number, N, of unacknowledged packets in the pipeline.
- Acknowledged packets can be viewed as a window of size N so: N is the window size, GBN protocol itself a sliding-window protocol
- Allows the sender to potentially “fill the pipeline”
- However performance problems: A single packet error can cause retransmit a large number of packets, unnecessarily
<span style='color:#ff7e7e;'>GBN protokollen bruker kumulative kvitteringer (“cumulative acknowledgements”) for å indikere at alle pakker med sekvensnummer opp til og med n har blitt mottatt riktig.</span>
**#Selective Repeat (#SR)**
- Selective-repeat protocols avoid unnecessary retransmission by having the sender retransmit only those packets that it suspects were received in error (lost/corrupted) at the receiver. Individually acknowledge correctly received packets.
- Window size N, but already received ACKs for some of the packets in the window.

Consider the connection in task 3. And suppose the hosts decided not to use selective repeat, but they are using go-back-n. Now, Host B has received and acknowledged all the bytes up to 150. The last acknowledgment it sent had the acknowledgment number 151.
1. Host B receives a new segment with length 30 bytes, and sequence number 181. What acknowledgment number should Host B put in its ACK for that segment? 151
2. After sending the ACK for task a), Host B receives a segment with sequence number 151, this one is also 30 bytes long. What acknowledgment number should Host B put in its ACK for that segment? 181
3. After sending the ACK for task b) Host B receives a segment with length 30 bytes, and sequence number 151. What acknowledgment number should Host B put in its ACK for that segment? 181
4. If they had used selective repeat instead of go-back-n, what would the answer to task 4 a) be? 211
5. How about b) with selective repeat? 181
# **Network Layer (CH4)**
<span style='color:#ff7e7e;'>A brief overview of the network: The most important function of the network layer is to get datagrams routed to their intended destinations. The Internet Protocol (IP) is the main protocol used. The network layer is present in all network routers, and in all end-systems. </span>

<span style='color:#ff7e7e;'>IP protocol is an unreliable service, thus guarantees nothing as it is also a best-effort protocol</span>

**#HOL** - performance-limiting phenomenon that occurs when a line of packets is held up by the first packet that's queued f.ex.
<span style='color:#ff7e7e;'>Head-of-line (HOL) denotes that an information unit in a FIFO(first-in-first-out) queue (buffer) may be hindered in reaching its free output port, if another information unit in front of it have to wait for another (not free) output port. This is typically a problem when implementing (shared) input queueing in switches or routers, instead of having dedicated output queues for each output port. </span>

<span style='color:#ff7e7e;'>Med Dynamic Host Configuration Protocol (DHCP), kan en vert (“host”) bli tildelt en IP adresse som er forskjellig hver gang verten blir tilkoblet nettet</span>

<span style='color:#ff7e7e;'>Hovedinnsikten med “Nat (Network Address Translation)” er å tillate gjenbruk av IPv4 subnett addresser</span>

**#IPv4 (#CIDR)**
<span style='color:#ff7e7e;'>IPv4 bruker 32 bits addresser (lite, begynner å gå tom)</span>
CIDR IPv4 address 223.1.2.0/xx for 400 IP addresses available for host and router interfaces in our network. Maximum value we can use for xx:
<span style='color:#ff7e7e;'>xx = 23 som gir 512 adresser (xx=24 ville gi kun 256 adresser, som er for lite) </span>
Class A(/8), B(/16), C(/24) and so on:

<span style='color:#ff7e7e;'>IP versjon 4 addressen 223.1.1.0/24 angir et subnet med maksimum 2^(32-24) - 2 = 2^8 - 2 = 254 adresser tilgjengelige for lokale verter</span>
IPv4 does allow routers inside the network to do any fragmentation of packets.
IPv4 has a header checksum.
<span style='color:#ff7e7e;'>Assume the IPv4 address 223.1.8.0/xx for 1500 addresses, the maximum value for xx is 21</span>
<span style='color:#ff7e7e;'>(2**(32-xx) - 2) >= 1500</span>

**#Routing table** 
<span style='color:#ff7e7e;'>problem, solved using python!</span>
<span style='color:#ff7e7e;'>Look at utregninger!</span>

**IPv4 Datagram #Fragmentation**
Not all link-layer protocols can carry network-layer packets of the same size. Some protocols can carry big datagrams, whereas other protocols can carry only little datagrams. 

The maximum amount of data that a link-layer frame can carry is called the **maximum transmission unit (MTU).** Because each IP datagram is encapsulated within the link-layer frame for transport from one router to the next router, the MTU of the link-layer protocol places a hard limit on the length of an IP datagram. Having a hard limit on the size of an IP datagram is not much of a problem. What the problem is, is that each of the links along the route between sender and destination can use different link-layer protocols, and each of these protocols can have different MTUs.

Forwarding issue: imagine that you are a router that interconnects several links, each running different link-layer protocols with different MTUs.
- Suppose you receive an IP datagram from one link. 
- You check your forwarding table to determine the outgoing link, and this outgoing link has an MTU that is smaller than the length of the IP datagram. 
- Time to panic-how are you going to squeeze this oversized IP datagram into the payload field of the link-layer frame?
**The solution is to fragment the payload** in the IP datagram into two or more smaller IP datagrams, encapsulate each of these smaller IP datagrams in a separate link-layer frame; and send these frames over the outgoing link. Each of these smaller datagrams is referred to as a **fragment**.

Fragments need to be reassembled before they reach the transport layer at the destination. Both TCP and UDP are expecting to receive complete, unfragmented segments from the network layer.
<span style='color:#ff7e7e;'>Datagram fragmentering skjer fordi ulike linklag protokoller har ulike egenskaper med hensyn til hvilke pakkestørrelser de kan transportere, dvs. forskjellige MTU (“maximum transmission unit”) For store datagrammer blir fragmentert så enkapsulert for å få dem sent i de forskjellige linkene.</span>

<span style='color:#ff7e7e;'>Fragmentation is to divide an IP datagram into two or more smaller IP datagrams, encapsulate each of these smaller IP datagrams in a separate link-layer frame; and send these frames over the outgoing link. This is necessary because different link layer protocols allow different maximum sizes of the frames they can carry, e.g. given by different physical constraints on different physical media. </span>

<span style='color:#ff7e7e;'>The fragments when using IPv4 are reassembled in the end systems, not in the routers. When all fragments have been received so the reassembly can be done is signaled via one of the three “Flag” bits. It contains a 1 for all fragments except the last one which is 0.</span>

<span style='color:#ff7e7e;'>When using the IPv6 protocol, fragmentation is not allowed in routers, only in end-systems. If an IPv6 router receives an IPv6 segment which is too large to be forwarded on an outgoing link (utgående link), the router simply drops the datagram and sends a “Packet Too Big” ICMP error message back to the sender. The sender can then resend the data, using a smaller IP datagram size</span>

**#IPv6**
<span style='color:#ff7e7e;'>IPv6 bruker 128 bits addresser (større enn IPv4)</span>
IPv6 does NOT allow routers inside the network to assemble fragments back into packets.
IPv6 has no header checksum
IPv6 and IPv4 doesn’t provides a reliable, connection-oriented transport service, but offers a best-effort service
<span style='color:#ff7e7e;'>Operativsystemer benytter både MAC-baserte (Medium Access Control) IPv6 adresser og IPv4 adresser</span>

**Nettverk- og Linklaget**
Forwarding: (implemented in data-plane)
**#Routing:** 
- routing algorithms (implemented in the control plane of the network)
- Forwarding: router-local action of transferring a packet from an input link interface to the appropriate output link interface. Takes place at very short timescales (nanoseconds) implemented in hardware
- Routing: network-wide process that determines the end-to-end paths that packets take from source to destination. Longer timescales (seconds). Implemented in software.
- Forwarding table: Key element in every network router. The value stored in the forwarding table entry for those values indicates the outgoing link interface at that router to which that packet is to be forwarded.
<span style='color:#ff7e7e;'>“Routing” i nettverks data planet brukes for å angi prosessen med å bestemme en sti (end-to-end path) gjennom nettet for en pakke fra kilde til destinasjonsnode, implementert i software, dermed lang tidsperiode. “Forwarding” er implementert i hardware, dermed kortere tidsperiode og er prosessen med å få en pakke fra en inngangslink til korrekt utgangslink (link interface).</span>

**#ICMP**
Used by hosts and routers to communicate network-layer information to each other. The most typical use of ICMP is for error reporting:
HTTP session: “Destination network unreachable” → ICMP message sent to host indicating the error
ICMP messages are carried inside IP datagrams, as IP payload
<span style='color:#ff7e7e;'>“Internet Control Message Protocol” (ICMP) brukes til å kommunisere nettlagsinformasjonen mellom verter og rutere</span>

<span style='color:#ff7e7e;'>Det er mulig å aktivt framprovosere feilmelding fra ICMP</span>

# Link Layer (CH5)
<span style='color:#ff7e7e;'>The link layers main task is to transport frames between network units, i.e. one link at a time. Different types of physical links needs different protocols. For this reason there are many possible link layer protocols in use, e.g. Ethernet protocol (with or without CSMA/CD), CSMA/CA (for WiFi), PPP, or more fixed link sharing protocols like TDM, FDM, CDMA, etc. The link layer is present in all active network elements. </span>

**#Parity Bit**
Paritetsbit kan brukes til å detektere (og noen ganger korrigere) bitfeil i rammer sendt over en link mellom to nabonoder

**Two dimensional #even parity matrix:**
Xor each value:
Example: 0001 = 0^0^0^1 = 1
<span style='color:#ff7e7e;'>0 0 0 1 y	x = 0011</span>
<span style='color:#ff7e7e;'>0 1 0 0 y	y = 1111</span>
<span style='color:#ff7e7e;'>0 1 1 1 y	z = 0</span>
<span style='color:#ff7e7e;'>0 0 0 1 y</span>
<span style='color:#ff7e7e;'>X x x x z</span>

<span style='color:#ff7e7e;'>1 0 0 1 y	x = 1101
0 1 0 0 y	y = 0100
0 1 0 1 y	z = 1
0 1 0 1 y
X x x x z</span>

<span style='color:#ff7e7e;'>Ved bruk av to-dimensjonal paritets-sjekk kan mottakeren oppdage én eller en dobbel bitfeil</span>

<span style='color:#ff7e7e;'>1 0 0 1 0</span>
<span style='color:#ff7e7e;'>0 1 0 0 0 <-- Can be corrected to 1</span>
<span style='color:#ff7e7e;'>0 1 0 1 0	</span>
<span style='color:#ff7e7e;'>0 1 0 1 0</span>
<span style='color:#ff7e7e;'>1 1 0 1 1</span>
<span style='color:#ff7e7e;'>If more that one row or column did not match our criteria we would have to assume multiple errors, which cannon (in general) be corrected (Note: We cannot be 100% sure that there are no additional errors that just happen to match our even parity criteria. But assuming a high quality transmission media, e.g. an optical fiber, with very low bit rate probability, our assumption has a high degree of success. If the media used has high bit error rate, e.g. some form of radio transmission, better error detection and correction technique should be used)</span>

**Cyclic Redundancy Check (#CRC)**
<span style='color:#ff7e7e;'>“Cyclic Redundancy Check” (CRC) koder (eller polynomiske koder) er basert på modulo-2 aritmetikk uten overføring “carries” i addisjon eller låning “borrowing” i subtraksjon</span>
An error-detection technique based on **cyclic redundancy check (CRC) codes**. CRC codes are also known as **polynomial codes**, since it is possible to view the bit string to be sent as a polynomial whose coefficients are the 0 and 1 values in the bit string, with operations on the bit string interpreted as polynomial arithmetic.
CRC codes operate as follows:
- Consider the d-bit piece of data, D, that the sending node wants to send to the receiving node. The sender and receiver must first agree on an r + 1 bit pattern, known as a **generator**, which we will denote as G. We will require that the most significant (leftmost) bit of G be a 1. The key idea behind CRC codes is shown in Figure 6.6. For a given piece of data, D, the sender will choose r additional bits, R, and append them to D such that the resulting d + r bit pattern (interpreted as a binary number) is exactly divisible by G (i.e., has no remainder) using modulo-2 arithmetic. 
The process of error checking with CRCs is thus simple: The receiver divides the d + r received bits by G. If the remainder is nonzero, the receiver knows that an error has occurred; otherwise the data is accepted as being correct. 
All CRC calculations are done in modulo-2 arithmetic without carries in addition or borrows in subtraction. This means that addition and subtraction are identical, and both are equivalent to the bitwise exclusive-or (XOR) of the operands.
<span style='color:#ff7e7e;'>D = 101110, d = 6, G = 1001, r = 3</span>
<span style='color:#ff7e7e;'>The CRC is equal to the remainder of the division, i.e. 011 in this case. This is added to the data when sent. (R = 011)</span>

<span style='color:#ff7e7e;'>D = 101010, d = 6, G = 1011, r = 3</span>
<span style='color:#ff7e7e;'>R(CRC) = </span><span style='color:#ff7e7e;'>**001**</span>
<span style='color:#ff7e7e;'>The CRC is sent to the receiver after the data is sent, instead of the added zeros for the division, i.e. 101010</span><span style='color:#ff7e7e;'>**001**</span><span style='color:#ff7e7e;'>. This will give remainder zero (000) at receiver as check of successful transmission</span>

**The three #MAC protocol classes**
- **#Channel partitioning MAC protocols**
	- **High load**: share channel fairly and efficiently
	- Low load: inefficient, delay in channel access, 1/N bandwidth allocated even if only 1 active node.
- **#Random access MAC protocols**
	- High load: collision overhead
	- **Low load**: efficient, single node can fully utilize channel
- **#Taking turns:**
	- **Good for both worlds!**
<span style='color:#ff7e7e;'>Delt-medium Ethernet bruker “Carrier Sense Multiple Access with Collision detection” (CSMA/CD) som multippel aksess protokoll (MAC)</span>

**Channel partitioning MAC protocols:**
**#TDMA (time division multiple access)**
- Access to channel in frames
- Each station gets fixed length slot (length = packet transmission time) in each frame
- Unused slots go idle
**#FDMA (Frequency division multiple access)**
- Channel spectrum divided into frequency bands
- Each station assigned fixed frequency band
- Unused transmission time in frequency bands go idle
- Example: ADSL

<span style='color:#ff7e7e;'>**TDM**</span><span style='color:#ff7e7e;'>: Divides time into time frames and further divides each time frame into time slots. Each (periodically repeating) time slot is assigned to a given sender and used when a sender has something to send. In a given time frame a time slot may be empty if the sender did not have anything to send at that time. </span>
<span style='color:#ff7e7e;'>**FDM**</span><span style='color:#ff7e7e;'>: A channel is divided into different frequencies (each with parts of the bandwidth available for the total channel) and each frequency is assigned to a given sender. Information can be sent at any time on the given frequency, but only by the sender it is allocated to. </span>
<span style='color:#ff7e7e;'>**CDMA**</span><span style='color:#ff7e7e;'>: Each sender is allocated different codes (with special properties) to be used to encode the data bits to be sent. All senders can then send continuously over the same channel (full bandwidth). A receiver in principle receives all transmissions, but uses the code of a specific sender to filter out the data intended for it. All other transmissions look like noise for this receiver. </span>

**#Random Access Protocols**
- No a priori coordination among nodes
- When node has packet to send
	- Transmit at full channel data rate R
- Two or more transmitting nodes → **Collision**
- Random access MAC protocol specifies
	- How to detect collisions
	- How to recover from collisions (eg. delayed retransmissions)
- Examples of random access MAC protocols:
	- **Slotted ALOHA**
	- **Pure (unslotted) ALOHA**
	- **CSMA (carrier sense multiple access)**
	- **CSMA/CD (collision detection)**
	- **CSMA/CA (collision avoidance)**

**#CSMA (Carrier Sense Multiple Access)**
- Listen before transmit
	- If channel sensed idle, transmit entire frame
- If channel sensed busy, defer transmission
- Collision can still occur
- Due to propagation delay two nodes may not hear each other’s transmission
- Entire packet transmission time wasted
- Distance & propagation delay play a role in determining collision probability

**#CSMA/CD (Collision detection)**
- CSMA/CD: carrier sense multiple access
- CSMA/CD: collision detection
	- Colliding transmissions aborted, reducing channel wastage
	- Wired LANs easy: measure signal strengths, compare transmitted and received signals
	- Wireless LANs difficult: received signal strength overwhelmed by local transmission strength
**CSMA/CD algo**
1. Prepare an ethernet frame from then network layer datagram
2. If NIC (Network Interface Card) senses
- Channel idle, start frame transmission
- Channel busy, wait until channel idle, then transmit
3. If NIC transmits entire frame without detecting another transmission, NIC is done with frame!
4. If NIC detects collision - abort and send jam signal
5. After aborting, NIC enters exponential backoff
6. repeat
CSMA/CD efficiency depends on network length and max frame size
- Network length: t_prop = max propagation delay between 2 nodes in LAN
- Frame size: t_trans = time to transmit max-size frame
- Efficiency goes to 1 - as t_prop goes to 0 - as t_trans becomes very large
- Efficiency = 1/(1 + 5*t_prop/t_trans)
<span style='color:#ff7e7e;'>Med CSMA/CD, når en kollisjon blir oppdaget, så vil noden som sender avbryte sendingen og bruke en prosedyre/regel for å bestemme når den skal prøve å sende neste gang</span>

Main differences between CSMA/CD and CSMA/CA regarding functionality
<span style='color:#ff7e7e;'>In CSMA/CD a station begins transmitting as soon as the channel is sensed idle, while in CSMA/CA this is controlled via counting down a random back-off delay, to decrease the probability of collision with other stations. Also, some minimum space is in place after a successful transmission to allow priority access for ACK control frames (and other short control frames, see RTS and CTS below). </span>
<span style='color:#ff7e7e;'>CA = Collision Avoidance. It is not really achieved in full, since frames sent from two or more stations may still collide, but the modified procedure described above at least makes it much less likely than in e.g. Ethernet.</span>

**Taking-Turns Protocols**
**#Polling**
- Master node “invites” slave nodes to transmit in turn
- Typically used with “dumb” slave devices
- Concerns:
	- Polling overhead
	- Latency
	- Single point of failure (master)
**#Token passing protocol**
- Control token passed from one node to next seq. Token message
- No master node
- Concerns:
	- Token overhead
	- Latency
	- Single point of failure (token)

**#Packet Switching (MORE EFFICIENT!)**
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

**#Circuit Switching**
- (buffer, link transmission rate) - reserved - same
- Bottleneck links
- Multiplexing in Circuit-Switched Networks
	- **Frequency-division multiplexing (FDM) -** avoids collisions and divides bandwidth fairly among the N nodes, limited to a bandwidth of R/N
	- **Time-division multiplexing (TDM)** - eliminates collisions and fair, each node gets a dedicated transmission rate of R/N bps during each frame time, but has to wait for its turn in the transmission sequence.
	- **Width of the band (bandwidth)**
	Example:
- File of 640.000 bits (L) from Host A to Host B over circuit-switched network
- Assume use of TDM with 24 slots with bit rate (R) of 1.536Mbps.
- Takes 500msec to establish end-to-end
=> (1.536Mbps)/24 = 64kbps
=> (640.000 bits)/(64 kbps) = 10 seconds + circuit establish time
=> 10.5
<span style='color:#ff7e7e;'>Svitsjet Ethernet bruker kollisjonsfrie (“collision-less”) (lag2) “store-and-forward” rammesvitsjer</span>

**#Circuit switching and #packet switching**
<span style='color:#ff7e7e;'>- Circuit switching is a switching technique for communication networks. Circuit switching creates a direct physical connection/path between two devices. The transmission capacity on the path is exclusively reserved for the connection. </span>
<span style='color:#ff7e7e;'>- Packet switching is a switching technique for communication networks. In packet switching, each packet has a header providing an address to identify the destination. In the network, packets are (usually) switched in the </span><span style='color:#ff7e7e;'>store-and-forward</span><span style='color:#ff7e7e;'> manner, i.e., at each node, packets are received and stored, before being forwarded to the next hop. </span>

<span style='color:#ff7e7e;'>Three out of the four following for full score:</span>
1. <span style='color:#ff7e7e;'>A circuit-switched network can guarantee a certain amount of end-to-end bandwidth for the duration of a call. Most packet-switched networks today (including the Internet) cannot make any end-to-end guarantees for bandwidth. </span>
2. <span style='color:#ff7e7e;'>In a circuit switched network, there is no delay variation (or jitter) among packets/messages, while in a packet-switched network, delay variation can be big. Essentially, circuit-switching is better in providing quality of service than packet-switching. </span>
3. <span style='color:#ff7e7e;'>Circuit switching typically provides connection-oriented services, while both connection-oriented and connectionless services may be provided in a packet-switched network. </span>
4. <span style='color:#ff7e7e;'>Packet switching employ statistical multiplexing and hence can make better use of the resource of a link, i.e. link capacity, while in circuit switching, a connection (i.e. circuit) does not share the circuit with others even though there is nothing being sent on the connection.  </span>

**Differences between circuit switching and packet switching**
1. <span style='color:#ff7e7e;'>In a circuit switched network, there is little or no delay variation among packets/messages, while in a packet-switched network, delay variation can be large.</span>
2. A circuit-switched network guarantees a certain amount of end-to-end bandwidth for a connection, but a packet-switched network cannot.
3. Packet switching and circuit switching use the end system network address in different ways.
4. A circuit switched network does not need to use buffers inside a network to handle queues at outgoing network links, while a packet switched network do need.
5. <span style='color:#ff7e7e;'>Both circuit switching and packet switching can provide connection-oriented services.</span>
6. Loss of information due to contention at outgoing links is possible in a packet switched network but not in a circuit switched network.

**#ARP**
<span style='color:#ff7e7e;'>Address Resolution Protocol (ARP) translates between IP and MAC addresses within a subnet. The ARP tables are located in the memory of each host and router. </span>

<span style='color:#ff7e7e;'>Addresses found in the switch table of link-layer switch are MAC addresses. </span>

**#Broadcast channeling**
Given a broadcast channel with N nodes and transmission rate of R bit/s. The broadcast channel uses polling (with an additional polling node) for multiple access. Suppose the polling delay, which is the amount of time from when a node completes transmission until the subsequent node is permitted to transmit, is d. Within a polling round, a given node is allowed to transmit at most Q bits. What is the maximum throughput of the broadcast channel?
<span style='color:#ff7e7e;'>The maximum number of bits transmitted in a polling round is N * Q [bits]. </span>
<span style='color:#ff7e7e;'>The length of a (maximum) polling round is N * (d [sec] + Q [bits] / R [bits/sec]). </span>
<span style='color:#ff7e7e;'>Maximum throughput is then given as maximum number of bits during a (maximum length) round, i.e. N * Q [bits] / (N * (d [sec] + Q [bits] / R [bits/sec])) = Q [bits] / (d [sec] + Q [bits] / R [bits/sec]) = R [bits/sec] / (1 + d [sec] * R [bits/sec] / Q [bits]). (Or simpler: R/(1 + dR/Q).</span>
# Utregning
### (circuit-switched)
Sending a file of 100K bytes from  Host A to Host B over a circuit-switched network. Suppose it takes 100ms to establish an end-to-end circuit between Host A and B before Host A can begin to transmit the file. Also suppose the end-to-end circuit passess through 3 links, and on each link the circuit has a transmission rate of 54Kbps. At least how much time does it take to send the file from Host A to Host B?
<span style='color:#ff7e7e;'>The transmission time or delay is simply:</span>
<span style='color:#ff7e7e;'>Bits = 100K * 8bits = 800000bits
Time = 800000bits/64Kbps =12.5 s, no matter how many links the circuit crosses. </span><span style='color:#ff7e7e;'>**(circuit switched)**</span>
<span style='color:#ff7e7e;'>Additionally, it has to be waited for 100 ms until the circuit is established. So, at least it takes 100 ms + 12.5 s = </span><span style='color:#ff7e7e;'>12.6 seconds</span><span style='color:#ff7e7e;'>. (Note: if propagation time is taken into account, this value will be added to the total time. But since the length of links are not given this value is unknown).</span>

Sending a file of 1600K bytes from Host A to B over a circuit-switched network. Suppose it takes 400ms to establish an end-to-end circuit between Host A and B, before A can begin to transmit the file. Also suppose the end-to-end circuit passes through 5 links with transmission rate of 256Kbps each. How much time does it take to send the file?
<span style='color:#ff7e7e;'>The transmission time or delay is simply 1600K * 8bits /256Kbps = 50s, no matter how many links the circuit crosses </span><span style='color:#ff7e7e;'>(take into account if it’s packet switched)</span><span style='color:#ff7e7e;'>. Additionally, it has to be waited for 400 ms until the circuit is established. So, at least it takes 400 ms + 50 s = </span><span style='color:#ff7e7e;'>50.4 seconds</span><span style='color:#ff7e7e;'>. (Note: if propagation time is taken into account, this value will be added to the total time. But since the length of links are not given this value is unknown).</span>
### (store-and-forward)
Consider sending a file of 100K Bytes from Host A to Host B over a connectionless packet-switched network. Assume that the whole file is sent as one large packet, i.e. without any fragmentation. Suppose the end-to-end path passes through 2 store-and-forward routers (i.e. traversing 3 links), and each link has a transmission rate of 64 Kbps. At least how much time does it take to send the file from Host A to Host B? 
<span style='color:#ff7e7e;'>Each </span><span style='color:#ff7e7e;'>**(store-and-forward router)**</span><span style='color:#ff7e7e;'> must receive the full packet before it can be sent out on the next link, thus the delay is now: 3 * 800000bits  / 64 Kbps = 3 * 12.5s = 37.5 seconds. There is no set-up delay to be added. </span>

### (back-to-back)
Host A and Host B are communicating over a TCP connection, and Host B has already received from A all data up through byte 350. Suppose Host A then sends two data segments to Host B back-to-back. The first and the second segments contain 28 and 78 bytes of data, respectively. In the first segment, the sequence number is 351, the source port number is 502, and the destination port number is 80. Host B sends an acknowledgement whenever it receives a segment from Host A. In the second segment sent from Host A to Host B, what are the sequence number, source port number, and destination port number?
<span style='color:#ff7e7e;'>In the second segment from Host A to B: </span>
<span style='color:#ff7e7e;'>Sequence number: 351 + 28 = 379 </span>
<span style='color:#ff7e7e;'>Source port number: 502 </span>
<span style='color:#ff7e7e;'>Destination port number: 80</span>
For the situation described in 2.6 above: If the second segment sent arrives before the first segment sent, in the acknowledgement of the first arriving segment, what is the acknowledgement number? 
<span style='color:#ff7e7e;'>If the second segment arrives before the first segment, in the acknowledgement of the first arriving segment, the acknowledgement number is 351, indicating that it is still waiting for bytes 351 and onward.</span>

### (Routing table)
Address/mask		Next hop
135.46.128.0/22	Interface 0
135.46.188.0/22	Interface 1
135.46.144.0/22	Interface 2
Default			Interface 3
<span style='color:#ff7e7e;'>135.56.192.128 - Interface 3</span>

<span style='color:#ff7e7e;'>135.46.131.20 - Interface 0</span>
<span style='color:#ff7e7e;'>135.46.190.30 -  Interface 1</span>
<span style='color:#ff7e7e;'>135.46.191.7 - Interface 1</span>
<span style='color:#ff7e7e;'>135.46.75.35. - Interface 3</span>
<span style='color:#ff7e7e;'>Use python!</span>

### (Caesar Cipher)
The Caesar cipher is used to encrypt “Have a nice day” to “Ibwf b ojdf ebz”. What key is used? 
<span style='color:#ff7e7e;'>The key is +1 (modulo the length of the alphabet), i.e. a -> b, b -> c, …, z -> a (for english alphabet). </span>

### (TCP connection (ACK))
Assume that S and T have an active Transmission Control Protocol (TCP) connection between them. Assume that the last successful byte S has received from T is numbered as 123, and the last successful byte T has successfully received from S is numbered as 267. Which (if any) of the alternatives below are possible exchanges between them following this situation?
<span style='color:#ff7e7e;'>c) S sends no data to T but sends ACK=124; after receiving this, T sends 76 bytes of data to S and appends (with) ACK=268</span>
<span style='color:#ff7e7e;'>e) T sends 50 bytes of data to S and appends ACK=268; after receiving this, S sends 90 bytes of data to T and appends ACK = 174</span>
<span style='color:#ff7e7e;'>h) Both S and T sends segments to each other in parallel: S sends 50 bytes of data to T and appends ACK=124 and T sends 36 bytes of data to S and appends ACK=268</span>

### (Wireshark trace)
Packets sent over a network of type ethernet:
- The TCP connections use options.
- The TCP connections are set-up to send packets in parallel

### (Broadcast Channel)
Consider a broadcast channel with **10 nodes** and transmission rate of **100 Mbit/s**. The broadcast channel uses polling (with an additional polling node) for multiple access. The polling delay, which is the amount of time from when a node completes transmission until the subsequent node is permitted to transmit, is **1ms**. Suppose that within a polling round, a given node is allowed to transmit at most **100K** bits. What is the maximum throughput of the broadcast channel?
<span style='color:#ff7e7e;'>Maximum data transmitted during one polling round: 10 [nodes] * 100 000 [bit] = 1 Mbit </span>
<span style='color:#ff7e7e;'>Time used per round: 10 [nodes] * (1 [ms] + (100 000 [bit] / 100 000 000 [bit/s]) = 10 * (0.001 [s] + 0.001 [s]) = 0.02 seconds </span>
<span style='color:#ff7e7e;'>Maximum throughput is then: 1 000 000 [bit] / 0.02 [s] = 50 000 000 bit/s = 50 Mbit/s</span>

### (Stop-and-wait)
Consider two hosts that are connected by a channel. The channel has a transmission rate of 100 Mbit/s. The maximum packet size in the network is **10K bytes**. Assume the stations are far apart so the propagation delay between the two hosts is **30 ms**. Assume that acknowledgements can be issued immediately when the last bit of a packet has been received (i.e. processing delay is ignored) and that the ACK packets are so small that their transmission times can be ignored. What is the maximum data rate that can be achieved by the stop-and-wait flow control protocol in this situation? 
<span style='color:#ff7e7e;'>Propagation delay is given as 30 milliseconds, i.e. total propagation delay for data to reach the destination and ACK packet to get back to sender is 60 milliseconds. </span>
<span style='color:#ff7e7e;'>Maximum transmission delay (d_trans): 10 000 * 8 [bit] / 100 000 000 [bit/s] = 0.8 milliseconds. </span>
<span style='color:#ff7e7e;'>Maximum part of total time actually used for transmission (U_trans): 0.8 [ms]/ (</span><span style='color:#ff7e7e;'>**60**</span><span style='color:#ff7e7e;'> [ms] + 0.8 [ms]) = 0.013158 </span>
<span style='color:#ff7e7e;'>Maximum data rate: 0.013158 * 100 Mbit/s = 1.315789 Mbit/s</span>

