---
layout: page
title: ctf
permalink: /ctf/
---

# Shirajuki's CTF Resource/Archive

> Mostly taken from <https://dox.xil.se/ctf/readme.md?raw=true#>

## Tools

### Android reversing
* [adb](https://developer.android.com/studio/command-line/adb)
* [Android APK Decompiler](http://www.javadecompilers.com/apk) Online decompile tool
* [apktool](http://ibotpeaches.github.io/Apktool/) APK extractor, uses smali do disassemble dex
* [dex2jar](https://github.com/pxb1988/dex2jar) Dex to java decompiler, fails sometimes
* [jadx-gui](https://github.com/skylot/jadx) Alternative dex to java decompiler, might not fail when dex2jar fails

### Binary exploitation / PWN
* Binary tools
 * [Online Disassembler](https://www.onlinedisassembler.com/odaweb/)
 * [ROP shell](http://ropshell.com)
 * [Binvis](http://binvis.io)
 * [binwalk](https://github.com/devttys0/binwalk) Analyze a blob and find files within
* Binary unpackers
 * [Detect It Easy](http://ntinfo.biz/)
 * [FUU Fast Universal Unpacker](https://github.com/crackinglandia/fuu)
 * [PEiD](http://www.softpedia.com/get/Programming/Packers-Crypters-Protectors/PEiD-updated.shtml)
 * [Universal Extractor](http://legroom.net/software/uniextract)
* PWNtools
 * [binjitsu](https://github.com/binjitsu/binjitsu)
 * [libc database](https://github.com/niklasb/libc-database)
 * [ROPGadget](https://github.com/JonathanSalwan/ROPgadget)
 * [How to preload libc fakes](https://rafalcieslak.wordpress.com/2013/04/02/dynamic-linker-tricks-using-ld_preload-to-cheat-inject-features-and-investigate-programs/), implement them and use LD_PRELOAD, but it can be nice to copypaste
 * [GDB-PEDA](https://github.com/longld/peda) Make GDB great again!
 * [radare2](https://github.com/radareorg/radare2)
 * [ghidra](https://ghidra-sre.org/)

### Ciphers/ Converters and decoders
* [lots of cipher decoding](http://dcode.fr/)
* [base64 encoder/decoder](https://www.base64decode.org/)
* [hex, dec, bin and ascii converter](https://www.branah.com/ascii-converter)

### Code Formatters
* [JS Beautifier](http://jsbeautifier.org)
* [JSON Formatter](https://jsonformatter.curiousconcept.com)

### Coding/ Learn2code
* [CSES](https://cses.fi/problemset/)
* [codechef](https://www.codechef.com/)

### Crypto
* [numpy](http://www.numpy.org/) powerful number cruncher
* [pycrypto](http://pythonhosted.org/pycrypto/) various crypto and hash implementations (sha-1, aes, ...)
* [pynacl](https://pypi.python.org/pypi/PyNaCl/) python bindings to nacl (elliptic curve etc)
* [fastecdsa](https://github.com/AntonKueltz/fastecdsa) fast elliptic curve cryptography in python
* Factoring RSA keys
 * [factordb](http://factordb.com/) online factor tool/database.
 * [sympy](http://www.sympy.org/en/index.html) includes ntheory.factorint() which is the best allround factoring algo. Solves most ctf-cases.
 * [yafu](https://sourceforge.net/projects/yafu/) includes factor(), not good at pq that are similar for big modulo
 * [primefac](https://pypi.python.org/pypi/primefac) python module to factor large numbers, works in parallell
 * [ECM factorization applet](https://www.alpertron.com.ar/ECM.HTM) Horrible java applet but it can find p and q fast if they are close.
* [quipqiup](http://quipqiup.com/) Substitution cracker
* [sagemath](https://www.sagemath.org/download.html) I should get sagemath for python3 soon...
* Learning platforms:
 * [cryptopals](https://cryptopals.com/)
 * [cryptohack](https://cryptohack.org/user/shirajuki/)

### Forensics tools
* [Autopsy](https://www.autopsy.com/download/)
* [Volatility](https://github.com/volatilityfoundation)

### Hash
* [crackstation](https://crackstation.net/) Cracks unsalted md5, sha1 etc.
* [hashcat](https://hashcat.net/oclhashcat/) Powerful hash cracker
* [HashPump](https://github.com/bwall/HashPump) Hash length extention attack tool

### Markdown
* [quick cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

### Mathematics
* [Gram-Schmidt](http://www2.math.uconn.edu/~troby/math2210f16/LT/sec6_4.pdf)
* [Quadratic residue and Legendre symbol](https://docs.sympy.org/latest/modules/ntheory.html#sympy.ntheory.residue_ntheory.legendre_symbol)
* Elliptic Curves
 * [Scalar-multiplication](https://crypto.stackexchange.com/questions/11743/scalar-multiplication-on-elliptic-curves)
* RSA
 * [modular square roots](http://course1.winona.edu/eerrthum/math347/SquareRoots.pdf)
 * [Lattice based attacks on RSA](https://github.com/mimoo/RSA-and-LLL-attacks) Coppersmith, Boneh Durfee etc
 * [Lucas theorem](https://stackoverflow.com/questions/3537360/calculating-binomial-coefficient-nck-for-large-n-k)
 * [k in RSA](https://crypto.stackexchange.com/questions/27113/what-is-k-in-rsa)

### Network tools
* [nmap](https://nmap.org/book/man.html)
* [Online port scanner](http://www.t1shopper.com/tools/port-scan/)
* [Reverse IP domain search](http://www.yougetsignal.com/tools/web-sites-on-web-server/)
* [aircrack-ng](http://www.aircrack-ng.org/)
* [Scapy](http://www.secdev.org/projects/scapy/)

### OSINT
* [Reverse image search](http://tineye.com)
* [google image search](https://www.google.no/imghp?hl=no)

### Signal decoding
* [Digital radio transmission decoder](https://github.com/EliasOenal/multimon-ng)
* [PRAAT](http://www.fon.hum.uva.nl/praat/) Used to map [sound of keystrokes to keys](https://www.xil.se/post/sharifctf-2016-misc-sound-rspkt/)
* [Morse Sound Decoder](https://morsecode.world/international/decoder/audio-decoder-adaptive.html )

### SSL tools
* [heartleech](https://github.com/robertdavidgraham/heartleech) snoop private key from heartbleed pcap data [see writeup](https://github.com/hexpresso/WU-2016/tree/master/insomnihack-ctf-2016/crypto/pcapbleeding).
* [python heartbleed](https://www.exploit-db.com/exploits/32745)

### Stegano
* [SmartDeblur](https://github.com/Y-Vladimir/SmartDeblur)
* [StegOnline](https://georgeom.net/StegOnline/checklist)
* [Stegsolve.jar](https://github.com/eugenekolo/sec-tools/blob/master/stego/stegsolve/stegsolve/stegsolve.jar)
* [StegCracker](https://github.com/Paradoxis/StegCracker)
* [steghide](https://github.com/StefanoDeVuono/steghide)
* [zsteg](https://github.com/zed-0xff/zsteg)

### Password cracker
* [jtr/John The Ripper](http://www.openwall.com/john/) Password cracker that supports many standard formats (/etc/shadow etc)
* [fcrackzip](https://github.com/hyc/fcrackzip)

### PRNG
* [untwister](https://github.com/altf4/untwister) Can recover seed from various PRNG such as Mersenne Twister, PHP, Ruby.

### Web
* [SQLMap](https://github.com/sqlmapproject/sqlmap )
* [SQLInjections](https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/SQL%20Injection)
* [XXE](https://github.com/swisskyrepo/PayloadsAllTheThings)

## Writeups

### RSA
* [greatest common divisor](https://github.com/networknerd/CTF_Writeups/blob/master/2020/ASISCTF_2020/Crypto/BabyRSA/README.md)

