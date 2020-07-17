---
layout: post
tags: TTM4110
categories: TTM4110
---

# **Praksisøving 7 – Multimedia**
**In this application, the sender uses normal RTP and transmits G.722-encoded voice at 48 Kbps. The application collects encoded data in 16 millisecond chunks.**

**Question 1.**
- **What is the rate at which data is generated at the sender (in bytes)?** 
- Since the voice is encoded at 48000bps and the application sends the encoded data in 16ms/chunk, the rate at which data is generated at the sender in bytes should be at least 48kbit/s, and the rate per chunk would be (48000bit/s * 0.016s)/8 = 96 bytes.

**Question 2.**
- **What is the size of the IP datagrams sent? You must clearly show the steps in how you calculated your answer and what elements the datagram consists of.** 
- Since RTP runs on top of UDP, the sending side has to encapsulate the media chunk within an RTP packet then into an UDP segment. The size of the IP datagrams (RTP packet) sent can be calculated with the formula: 
- _Total packet size = (L2 header: MP or FRF.12 or Ethernet, so on...) + (IP/UDP/RTP header) + (voice payload size)_
- RTP(usually 12) + UDP(8) + IP(20) overhead = 12+8+20 = 40 bytes
- Voice payload size from question 1 = 96 bytes
- Total packet size must then be at least 40 + 96 = 136 bytes + the Frame(L2) overhead

**Question 3.**
- **Explain how an arbitrary RTP packet in the application will look like. Use actual values from the application when possible. Include the size of the fields and elements of the packet. Loss recovery schemes can be used to preserve acceptable audio quality in the presence of packet loss. We will focus on three types of loss anticipation schemes: forward error correction (FEC) with redundant encoded chunks, FEC with redundant lower-resolution audio stream, and interleaving.** 
- An arbitrary RTP packet in the application will look like as seen on question 2.
- The RTP header along with the audio chunk form the RTP packet:
- RTP Packet Header: 96 bits (12 bytes)
	- (RTP) Version: 2 bits
	- Padding: 1 bit
	- Extension: 1 bit
	- CSRC count: 4 bits
	- Marker: 1 bit
	- Payload type (indicates the type of encoding): 7 bits
	- Sequence Number: 16 bits
	- Timestamp: 32 bits
	- Synchronization source identifier (SSRC): 32 bits
- Audio Chunk: (96 bytes)
- Using the actual values we get the following: 12 bytes from the RTP header and 96 bytes in an audio chunk, giving us an RTP packet of 108 bytes.

**Question 4.**
- **For each of the three schemes listed in the previous paragraph, show how much additional bandwidth each of them require of our application. For the first type of FEC, suppose a redundant chunk is generated for every five original chunks. For the other type, suppose GSM is used for the low-bit rate encoded stream. For each scheme, include both the new transmission rate and the percentage increase.** 
- For each of the three schemes listed in the previous paragraph, we can calculate these additional bandwidth each:
1. FEC with redundant encoded chunks (every 5 (n+1) original chunks):  The new transmission rate is 96+96*1/4 = 120 bytes/chunk which means increase of 25%.
2. FEC with redundant lower-resolution audio stream (GSM): (48000+13000bit/s * 0.016s)/8 = 122 bytes/chunk which means increase of 27%.
3. Interleaving: only increases the latency from resequencing and reconstructing but doesn’t increase the bandwidth. Thus 96 bytes with the increase of 0%.

**Question 5.**
- **For each of the three schemes, explain what happens if the first packet is lost in every group of five packets. Which scheme will have the better audio quality?**
- For each of the three schemes, if the first packet is lost in every group of five packets:
1. FEC with redundant encoded chunks (every 5 original chunks): If just the first packet in a group of 5 packets gets lost, it can fully reconstruct the lost packets with the redundant encoded chunk added to the original packet stream, thus the audio quality would be the exact same as if there were no packets lost.
2. FEC with redundant lower-resolution audio stream (GSM): Here we refer the nominal stream as the G.722-encoded stream and the low-bit rate GSM as the redundant stream. If the first packet from the nominal stream was to be lost, the lost packet would be constructed by taking it from the redundant stream. Thus in this manner, it is concealed by playing out the low-bit rate encoded chunk that arrives with the subsequent packet. The quality would then be lower than the nominal chunk. But a stream of packets of mostly high-quality chunks and occasional low-quality chunks gives a good quality overall.
3. Interleaving: Since the packets are interleaved and a single packet is lost. It would reconstruct the loss packet but there would be multiple small gaps in the reconstructed chunk, lowering the audio quality. It is however better than a single large gap on the first packet.
- From this FEC with redundant encoded chunks will have the best audio quality, GSM and then finally interleaving, assuming only the first packet of every group of five packets is lost.

**Question 6.**
- **Make an illustration of the scenario in question 5 for FEC with redundant encoded chunks. Use the same n value as before. The figure should be made such that it’s clear that you understand how the scheme works.** 
**Question 7.**
- **For each of the three schemes, explain what happens if the first packet is lost in every group of two packets. Which scheme will have the better audio quality?** 
- For each of the three schemes, if the first packet is lost in every group of two packets:
1. FEC with redundant encoded chunks (every 5 original chunks): Since the first packet is lost in every group of two packets, in n+1 packets we can thus not reconstruct the packets lost. Meaning in every group of n+1 (5) packets, 2 packets is lost and not reconstructed as the FEC packet doesn’t contain enough data. The first packet of every group of two packets would thus be lost.
2. FEC with redundant lower-resolution audio stream (GSM): As the answer from question 5, the loss of the first packet is concealed with a low-bit rate encoded chunk taken from the redundant stream. And thus we get a lower audio quality as the packet chunks length are small.
3. Interleaving: Since the packets are sent in groups of two packets only. The error concealment of interleaving the stream won’t be that effective as there will be gaps on both the sent packets, lowering the audio quality by a margin.
- From this GSM would have the better audio quality as there won’t be any clipping/gaps of audios, following that is interleaving, since there will be small gaps, but less clipping, small loss rates less than 15% since the application collects encoded data in 16 millisecond chunks. Finally FEC with redundant encoded chunks, where a packet is lost for every group of two packets.



**Question 8.**
- **Make an illustration of the scenario in question 7 for FEC with redundant lowerresolution audio stream. The figure should be made such that it’s clear that the student understands how the scheme works.** 

**Question 9.**
- **For each of the FEC schemes, how much playback delay does each scheme add? What can be said about the delay of the interleaving scheme?**
- For each of the three schemes, the playback delay added for them:
1. FEC with redundant encoded chunks (every 5 original chunks): The playback delay added increases by the playout delay, where the time it needs is the enough time to receive all n+1 packets.
2. FEC with redundant lower-resolution audio stream (GSM): The receiver receives two packets before playback, thus the increased playout delay is very small.
3. Interleaving: The latency would be increased marginally as the packet chunks has to resequence and reconstruct, thus limiting its use for conversational applications.
- From the playback delay of the interleaving scheme we can see that the error concealment works only if the packet chunks are small, but with many units. But on more loss length, the technique will break down and not work that great since the audio’s perceived quality would be very low. Thus it is very unreliable in applications such as VoIP.

