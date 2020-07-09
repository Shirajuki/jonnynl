---
layout: post
tags: TDT4109
categories: TDT4109
---

# Representere flyttall
46,67 = 4*10**1 + 7*10**0 + 6*10**-1 + 7*10**-2
- Det samme med base 2

### Hva blir 5.890625 binært?
- 101,111001

### Hva blir 5.87825 binært?
- 5 = 101, så 101,xxxxxx
- 0.87825, mellom 1 og **1/2** -> 101,1
- 0.37825, mellom 1/2 og **1/4** -> 101,11
- 0.12825, mellom 1/4 og **1/6** -> 101,111
- 0.00325, mindre enn **1/16** -> 101,1110
- 0.00325, mindre enn **1/32**-> 101,11100
- 0.00325, mindre enn **1/64**-> 101,111000
- 0.00325, mindre enn **1/128** -> 101,1110000
- 0.00325, mindre enn **1/256** -> 101,11100000
- 0.00325, mellom 1/256 og 1/512 -> 101,111000001
- etc...

### For å lagre et flyttall:
- 5.89062
- 0: -5 -> 0.89062
- 5.89062 = 101,111001
- Tall foran komma er alltid en dermed lagres det til:
- 0: -8 -> 01,111001

### IEEE standard for floating-point numbers:
- Single-precision
  - 32 bits (4 bytes)
  - 24 bits til fortegn og mantise
  - 8 bits til eksponent
  - omtrent 7 signifikante desimale siffere
- Double-precision
  - 64 bits (8 bytes)
  - 55 bits til fortegn og mantise
  - 11 bits til eksponent
  - Omtrent 16 desimale siffere

### Hvordan konvertere fra dec til IEEE flyttall?
- 639,6875 = 1001111111,1011
- flytte 9 plasser = 1,0011111111011 * 2**9
- fortegn positivt, lagres til: 0
- eksponent: 9 + 127 = 136 = 100010000 (127 for å representere både negative og positive tall)
- mantisen (alt til høyre foran punktum): 0011111111011
- Singe-precision git: 0,100010000,0011111111011000000000 (fortegn,eksponent,mantise)

### 10 som IEEE?
- fortegn: 0 for positiv
- eksponent:
  - største 2er potens som er mindre enn 10
  - 3, siden 2**3 = 8
  - 3 + 127 = 130
  - 130 = 10000010
- mantise:
  - divider 10 på 8 gir 1,25
  - 0.25 = 1/4, kan eksponered med 2 = 2**-2
  - -> 0,01
  - 01 + 00000000000000000000000 -> 0100000000000000000000000
- 10 som IEEE 32 bits flyttall: 0 10000010 0100000000000000000000000

# Digitale bilder og video
- Lang sekvens av RGB piksler, 2D men representeres strekt ut etter rad i en minne
- EKS:
  - bilde på 8 x 10 tommer på 300 piksler per tomme (dpi) (**OPPLØSNING**)
    - 80 * (300 * 300) = 7 200 000 piksler (7.2 megapiksler)
  - representerer farger med 3 bytes per piksel: (**LAGRING**)
    - 3 * 7.2 i minnet = 21.6MB
  - sende bildet over en 56kbps linje vil ta (21 600 000*8)/56000 = 3 085 sekunder
- fargedybde: 3*8bits = 3 * 2**8 => 256**3 kombinasjoner =>  1.67 millioner


| bildeformat | fargedybde       |
| ----------- |:---------------- |
| .GIF        | 8bit | $1600     |
| .JPEG       | 24bit            |
| .PNG        | 8/24bit + (8bit) |
