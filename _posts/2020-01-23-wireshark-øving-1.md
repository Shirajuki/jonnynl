---
layout: post
tags: TTM4110
categories: TTM4110
---

**1. List 3 different protocols that appear in the protocol column in the unfiltered packet-listing window in step 7 above.** 
- TCP
- UDP
- HTTP

**2. How long did it take from when the HTTP GET message was sent until the HTTP OK reply was received? (By default, the value of the Time column in the packet listing window is the amount of time, in seconds, since Wireshark tracing began. To display the Time field in time-of-day format, select the Wireshark View pull down menu, then select Time Display Format, then select Time-of-day.)** 
- 12:23:19,200485758	10.22.9.187	128.119.245.12	HTTP	432	GET /wireshark-labs/INTRO-wireshark-file1.html HTTP/1.1 
- 12:23:19,414110567	128.119.245.12	10.22.9.187	HTTP	504	HTTP/1.1 200 OK  (text/html)

- Time it took from when the HTTP GET message was sent until the HTTP OK reply was received was less than a second. Using time format “Seconds since beginning capture of packets”: (6.313876969 - 6.100252160 = 0.213624809 seconds)

**3. What is the Internet address of the gaia.cs.umass.edu (also known as www.net.cs.umass.edu)? What is the Internet address of your computer?** 
The internet addresses shown on source and destination:
- gaia.cs.umass.edu: 128.119.245.12
- my Computer: 10.22.9.187

**4. Take screenshots of the two HTTP messages (GET and OK) referred to in question 2 above. The screenshots should include the packet-header window for these messages and the packet list window (see the beginning of this tutorial for the descriptions of the different windows)**


