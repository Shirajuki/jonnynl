---
layout: post
tags: TTM4110
categories: TTM4110
---

**TTM4110 - CH7 - The Link Layer (Wireless and Mobile Networks)**
Link layer is hop-by-hop
**The data link layer - wireless**
- How wireless links differ from wired
- Sharing a radio broadcast channel: Multiple access
- WLAN link layer addressing
- IEEE 802.11 a/b/g/n/ac
- Mobile 2G (GSM), 3G (UMTS), 4G (LTE)
- Securing Wireless LANs

**Access networks Wireless access through radio networks of local or wide-area reach**
- Shared wireless access network connects end system to router via base station or “access point”
**Wireless LANs (WLAN)**
- Within building < 30 m
- 802.11b/g/a/n (WiFi): 11/54/>100 Mbps
**Mobile broadband - wider-area radio access**
- Access provided by telco/cellular operator
- 10s of km (0,2 - 100 Mbps (Edge, UMTS/WDMA, HSPA, LTE))
**Unguided physical media: Radio signals are carried within the electromagnetic spectrum**
- No physical “wire”, bidirectional
- propagation environment effects
	- Reflection
	- Obstruction by objects
	- Interference
- Lots of satellites in different orbits and missions
**Earth's atmospheric transmittance to electromagnetic waves Some frequencies are more valuable than others**











# **7.1 Introduction**
Wireless hosts
Wireless links
Base station
Network infrastructure
Single-hop, infrastructure-based
Single-hop, infrastructure-less
Multi-hop, infrastructure-based
Multi-hop, infrastructure-less
**Ulisensierte frekvensbånd:** Lovdata om hvilket frekvensbånd som er tillatt
**Wireless and mobility are two different things**
- **Wireless:** Communication over a wireless link
- **Mobility:** handling the mobile user who changes point of attachment to the (mobile/cellular) network
# **7.2 Wireless links and Network characteristics**
**Make communication across wireless links more challenging than wired communication**
**Path loss**
- Radio signal attenuates as it propagates through matter
- Lower frequency, larger coverage area
- Signal strength = (distance)^(1/3)
**Interference between signals**
- Signal phase has an effect on amplitude when receive multiple signals
- Signal sharing - standardized wireless network frequencies (e.g. 2.4GHz) shared by other devices (e.g. phone); devices (motors, microwave)
- Frequency harmonic
**Multipath propagation**
- Radio signal reflects off objects ground, arriving destination at slightly different times - interference
**Wireless network characteristics: Physical layer adapts to channel conditions**
- **The signal-to-noise ratio (SNR)** is a measure of the strength of the received signal
- A higher SNR, a lower bit error rate (BER) – easier to extract signal from noise
	- Given physical layer: increase power -> increase SNR->decrease BER
	- SNR given: a higher bit transmission rate will have a higher BER
- **SNR may change with mobility**: dynamically adapt physical layer (modulation technique, rate) to channel conditions
	- SNR decreases, BER increase as node moves away from base station
	- When BER becomes too high, switch to lower transmission rate but with lower BER.
**On an analog channel a modem (modulator-demodulator) converts between digital bits and signals**

![](https://lh4.googleusercontent.com/oxObPyscC_Q0mjgrGldqqO3MRzDnn5BalgARbfyC9aF1damRcskaYFWWSI0oQxg2kZa4hpHAZ9qOoWsVja_FrzmsKeRrYXx-Ih8Y7PX_ksahDlhgmQmLPM76nRJd0G3LMnxKXppdyjBfNRBmAg)
![](https://lh5.googleusercontent.com/P_HFQs9RQ-Wjhegzy_q4_32WHXt9JctEQXXTB_tP8cwecICQk5hNQVwi6-NXwQoauuzfSSo8_yz0OnJrg4Hy-l2Vz9rrkXUELiYR8M1zrRT166EGQhtsuCfY-WZXad21bvGVL4EleM2EproRuw)


# **7.3 IEEE 802.11 wireless LANs (“Wi-Fi”) Frame**
![](https://lh5.googleusercontent.com/j5uDDXqAxmx7Jd8o23gbnlky7oKSnBnZZRSuyn9VJ1nFZhwnJJVtQNtRZYsx8ZdQFurylnuQrwxWR_EfOrPt6MW_6cv9TrqIqAN3C9qBORhq-pvxtGWun0KHKsoe53w-e-yiJ2Yy9fAYJFKJOw)
![](https://lh6.googleusercontent.com/D2PeYqo_lFKCoHbTT7-haYUvymnZavz9T-VLno2AOkkXtMf2OSDg-CBc-gt99Ui1joDiB2vhSESHJFq6nCmdOXQSdrju3mdG-x8FwBfcWXj7RB7z4QlubdDKxUouiOql1VAzRaMJlByjtFE9Hw)
![](https://lh5.googleusercontent.com/4wi1kbxTd-nsVGVXZ5q-PqtqT5FDE58n7D4CFQLUsoKBJ89E8JWONZ8dl4cfqIzyP4imrLssL7t41MVlq9JFaVs-WR00hV6Y2PtlH0GAqf_Ms6Qdj4mT0gmcML0EVszItrRmK6CHCgdZs7zq1A)
![](https://lh4.googleusercontent.com/qO1cfGW3qo5hoCNR2w6CHUkKbZZVM8LK1jCYy0YuXD6SYKX8mSzDiAqCuM0WOjvveqRVB7h4MxLpEaICkDa7NZmNmWtb4gbrzpErF-0oxXrMAJA87rK983FBux30utrcSke8-bswnW6KOnSbBQ)
**802.11: passive/active scanning to associate with an access point**




![](https://lh3.googleusercontent.com/0pM1DBy8DyVDT17zA1QralzoKNttOcDiQO7r9AVk0_9UcnKIuv0kDtN-dsAasfBaBUujb30RbppW6mDNscgDtsY1C6c_z0MBg1yWxY4QsRiG3CcU5doRXZ1fuDcf4nyv_2-OLEV1TLnLLNm3fg)
![](https://lh5.googleusercontent.com/1HqXREDVLyJC-XT3HxutM4Uzh6rmdXC2KGSfgFlShNQaOyBJOaPRIxQgWJkBqk7yFlw0QAFGlIzUKpM1KV85nnDPd7bABWPNFWvAA_Ktjhm-_MyY-XODZpB_ocByIzW4Yhz5o3M2hwijhkjy1g)
![](https://lh5.googleusercontent.com/YQUEnuywUgIz1CKz2T2Q2uui5pua4hGb9766DDCFV-kfR0tSHZsjhwdLKf60zVpyquvmo4QIpGV6IurIL-MiFHpIM81Wvo4VAI9SPWMS2AkToYtWiKrx3eCiJbvlTZQMshtEtQsLHIFVN0UEdA)
**IEEE 802.11: CSMA/CA for wireless medium access carrier sense multiple access / collision avoidance**
- CSMA – carrier sense before transmitting
	- don’t collide with ongoing transmission by other node
- CA - collision avoidance
	- may be difficult to receive/sense collisions when transmitting due to weak received signals: fading
	- can’t sense all collisions: hidden terminal
![](https://lh5.googleusercontent.com/s9pp6PHcAwHZFd0jY836KkgRr57vHMjhW2jfyiUezmlOB35Gb8m2nVcPMx78yNwAUQuXfHooG2ly6to2elvZoXIVdFDavdW-A7tvve39Ey0kyITPlGtKzyrRIMbPvtMnG13kMcWUdPvd7yVlsg)

# **7.4 Cellular Internet Access**








