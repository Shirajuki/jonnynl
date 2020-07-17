---
layout: post
tags: TTM4110
categories: TTM4110
---

**Chapter 8 - Security in Computer Networks**
Examine how the fundamental cryptography principles can be used to create secure networking protocols.
Top-down approach:
- Examine secure protocols in each layers
- Secure email, TCP connection, LAN
- Blanket security at the network layer
- Operational security, protecting organizational networks from attacks
- Firewall and intrusion detection system.
# **8.1 What is network security?**
Secure communication:
- **Confidentiality**. Only the sender and intended receiver should be able to understand the contents of the transmitted message. Because eavesdroppers may intercept the message, this necessarily requires that the message be somehow encrypted so that an intercepted message cannot be understood by an interceptor. This aspect of confidentiality is probably the most commonly perceived meaning of the term secure communication. We'll study cryptographic techniques for encrypting and decrypting data in Section 8.2.
- **Message integrity**. Alice and Bob want to ensure that the content of their communication is not altered, either maliciously or by accident, in transit. Extensions to the checksumming techniques that we encountered in reliable transport and data link protocols can be used to provide such message integrity. We will study message integrity in Section 8.3.
- **End-point authentication**. Both the sender and receiver should be able to confirm the identity of the other party involved in the communication-to confirm that the other party is indeed who or what they claim to be. Face-to-face human communication solves this problem easily by visual recognition. When communicating entities exchange messages over a medium where they cannot see the other party, authentication is not so simple. When a user wants to access an inbox, how does the mail server verify that the user is the person he or she claims to be? We study end-point authentication in Section 8.4.
- **Operational security**. Almost all organizations (companies, universities, and so on) today have networks that are attached to the public Internet. These networks therefore can potentially be compromised. Attackers can attempt to deposit worms into the hosts in the network, obtain corporate secrets, map the internal network configurations, and launch DoS attacks. We'll see in Section 8.9 that operational devices such as firewalls and intrusion detection systems are used to counter attacks against an organization's network. A firewall sits between the organization 's network and the public network, controlling packet access to and from the network. An intrusion detection system performs "deep packet inspection," alerting the network administrators about suspicious activity. 

All or some of the messages sent will typically be encrypted. As discussed in Section
1.6, an intruder can potentially perform:
- **eavesdropping-sniffing** and recording control and data messages on the channel.
- **modification**, **insertion**, or **deletion** of messages or message content.
Allows the intruder to possible steal passwords and data, impersonate another entity, hijacking an ongoing session, denying service to legitimate network users by overleading system resources, and so on.
# **8.2 Principle of cryptography**
Message = Plaintext/cleartext
Encryption algorithm -> ciphertext

**8.2.1 Symmetric Key Cryptography**
Substituting one thing for another, computing and substituting the appropriate ciphertext to create the encrypted message.
- Caesar cipher: shift alphabet letters
- Monoalphabetic cipher, substitutes letter of the alphabet with another letter of the alphabet.
The intruder has:
- **Ciphertext-only attack**. In some cases, the intruder may have access only to the intercepted ciphertext, with no certain information about the contents of the plaintext message. We have seen how statistical analysis can help in a ciphertext-only attack on an encryption scheme.
- **Known-plaintext attack**. We saw above that if Trudy somehow knew for sure that "bob" and "alice" appeared in the ciphertext message, then she could have determined the (plaintext, ciphertext) pairings for the letters a, l, i, c, e, b, and o. Trudy might also have been fortunate enough to have recorded all of the cipher-text transmissions and then found Bob' s own decrypted version of one of the transmissions scribbled on a piece of paper. When an intruder knows some of the (plaintext, ciphertext) pairings, we refer to this as a known-plaintext attack on the encryption scheme.
- **Chosen-plaintext attack**. In a chosen-plaintext attack, the intruder is able to choose the plaintext message and obtain its corresponding ciphertext form. For the simple encryption algorithms we' ve seen so far, if Trudy could get Alice to send the message, "The quick brown fox jumps over the lazy dog," she could completely break the encryption scheme. We'll see shortly that for more sophisticated encryption techniques, a chosen-plaintext attack does not necessarily mean that the encryption technique can be broken.
- **Polyalphabetic cipher** using two caesar ciphers
![](https://lh6.googleusercontent.com/6joIKKdtYsqKJZ3v4JSaFRGupIxe0uetks2pQt16Gbpk2K3bOmIJ0ODQNiF5vLBi_CVfl6Nk6ZRH8zCGor7bCn4Z0OmP9E5e7RDfFm0wXJGSia36sj5zb7hN2QbwKiK711EUgaiLCusA9aZHCw)

**Block Ciphers**
Modern:
- **Stream ciphers**
- **Block ciphers** - encrypted in blocks of k bits, if k = 64 then the message is broken into 64-bit blocks, each block encrypted independently. To encode a block the cipher uses a one-to-one mapping to map the k-bit block of cleartext to a k-bit block of ciphertext. Example k = 3, maps 3-bit inputs / blocks and encrypts each block according to the above mapping. Number of possible mappings: 2**k!
- ![](https://lh6.googleusercontent.com/cCLMGDsNt3CvCvcqKatCAagXaXLUm2kLobTE93OWSqhKtNOXzXmC1L_lEr9w5PoZg9ZQzroV1GfUXRyFsSKooVGSUdZYmnMTYNHPac2f22ZlLeU0x7_nbcN75yxfLIRrrXn6WNBQWNi6-p70QA)
Today there are a number of popular block ciphers, including **DES** (standing
for Data Encryption Standard), **3DES**, and **AES** (standing for Advanced Encryption
Standard). Each of these standards uses functions, rather than predetermined tables,
along the lines of Figure 8.5.

Each of these algorithms also uses a string of bits for a key. For example, **DES uses**
**64-bit blocks with a 56-bit key**. **AES uses 128-bit blocks and can operate with keys**
**that are 128, 192, and 256 bits long**. 
An algorithm' s key determines the specific "mini-table" mappings and permutations within the algorithm's internals. The bruteforce attack for each of these ciphers is to cycle through all the keys , applying the decryption algorithm with each key. Observe that with a key length of n, there are 2**n possible keys.

**Cipher-Block Chaining**
If plain cipher block is used, multiple plaintext blocks is then encrypted with the same shared key. Thus easy to crack when given many plaintexts.
Thus** Cipher Block Chaining (CBC)**: send one random value along the very first message, and then have the sender and receiver use the computed coded blocks in place of the subsequent random number.
1. Before encrypting the message (or the stream of data), the sender generates a random k-bit string, called the **Initialization Vector (IV)**. Denote this initialization vector by c(0). The sender sends the IV to the receiver in cleartext.
2. For the first block, the sender calculates m(1) XOR c(0), that is, calculates the exclusive-or of the first block of cleartext with the IV. It then runs the result through the block-cipher algorithm to get the corresponding ciphertext block; that is, c(1) = K_s(m(1) XOR c(0)). The sender sends the encrypted block c(1) to the receiver.
3. For the i-th block, the sender generates the i-th ciphertext block from c(i) = K_s(m(i) XOE c(i - 1)).

**8.2.2 Public Key Encryption**
![](https://lh5.googleusercontent.com/FUQxP1wUoQin8iB4SKaS0Vs15dNX6IzKYBIdieCjoC4_7rTj0BywSV5GBAFaqa9Az97rKpw_9ycJ7gp1UVwDnD1-l-DHDP4WGU-5EfraDZGI47iX7IBOwJ0Gun8P4fXLAxdD4tBdegJnWJZ6gg)
**Public key** and** private key**
**RSA algorithm:** modulo-n arithmetic
![](https://lh4.googleusercontent.com/nf5Z-rpx06sc82owH29LRXY_WBLPQMKO0cK6NjCP_DYo8cPmAuUcVSRqxOv2AAfEsMCmx6vOfIJc8pSc8RLQ-f0T74rBqkN_qUTZCu1RbBCeuBBs4bBK5QDA8LnUz4fvYXFP6EcLu9zW-r6azg)
To generate the public and private RSA keys, Bob performs the following steps:
1. Choose two large prime numbers, **p** and **q**. How large should p and q be? The larger the values, the more difficult it is to break RSA, but the longer it takes to perform the encoding and decoding. RSA Laboratories recommends that the product of p and q be on the order of 1,024 bits. (FactorDB)
2. Compute **n = p*q** and **z = (p - l)*(q - 1)**
3. Choose a number, **e**, less than **n**, that has no common factors (other than **1**) with z. (In this case, e and z.are said to be relatively prime.) The letter e is used since this value will be used in encryption.
4. Find a number, **d**, such that **e*d - 1 is exactly divisible** (that is, with no remainder) by **z**. The letter d is used because this value will be used in decryption. Put another way, given e, we choose d such that: **e*d mod z = 1**
5. The public key that Bob makes available to the world, K+b, is the pair of numbers **(n, e)**; his private key, K-b, is the pair of numbers **(n, d)**.
The encryption by Alice and the decryption by Bob are done as follows:
- Suppose Alice wants to send Bob a bit pattern represented by the integer number **m** (with **m < n**). To encode, Alice performs the exponentiation m**e, and then computes the integer remainder when **m**e** is divided by **n**. In other words, the encrypted value, **c**, of Alice' s plaintext message, **m**, is: **c = m**e mod n**
- The bit pattern corresponding to this ciphertext **c** is sent to Bob
- To decrypt the received ciphertext message, c, Bob computes: **m = c**d mod n**
which requires the use of his private key (n, d).
![](https://lh4.googleusercontent.com/8X7ayCfI9R0p0LEfC_jwPQVuRcoop1yJ1Sxz-YJn2hqyncEb3mVvPn3eApwdyWy0mqVi_L8WaQTvJQj2ri8cpnftz4vZrGinL4phxHPTuXPDmUvQqJ4xF8uXse_RAuS0GmhQm8yV9sQSiTx-Mg)
![](https://lh4.googleusercontent.com/A7gle67xveK1N0bq672i3bLDfXGFGsLzspiShkBe5RkYqgbb6b6ykPc5yuj7QoQ5nyb2gujW_53t0VDEdMYB0hv6Lp9MklZ7HDe8Y8ZTeKaEFiF3h1EGkMgU-okq7awf_QXAsk5WKC7aHSeFMw)


# **8.3 Message Integrity and Digital Signatures**
**Message integrity** (message authentication)
A popular message integrity technique that is used by many secure networking protocols. But before doing so, we need to cover another important topic in cryptography-cryptographic hash functions.

**8.3.1 Cryptographic Hash Functions**
It is computationally infeasible to find any two different messages x and y such that H(x) = H(y).
Computationally infeasible for an intruder to substitute one message for another message that is protected by the hash.
MD5 hash algorithm - 128-bit hash in a four-step process consisting of a padding step (null bytes so the length satisfies a condition), an append step (64-bit representation of the message length), and initialization of an accumulator, and a final looping step (16-word blocks are processed 4 rounds).
- **Secure Hash Algorithm (SHA-1)**

**8.3.2 Message Authentication Code**
Auth key
Message Authentication code (MAC)
HMAC

**8.3.3 Digital Signatures**
A digital signature is a cryptographic technique for proving signed documents in a digital world.
![](https://lh6.googleusercontent.com/RJzMXILcUGDbgFCsD3OdBR14eU7yv0DJS0VDQ_1psa-6mU9NkRvAGq3mjGeR3MUyL5gOP9h1z9c4nXLMJkgbKCK2AMVcDvGnFCsOmnlOd4q4H2TsBYQHl9gvxkuereqBkVjA6T0AAzosfAxU5w)
![](https://lh6.googleusercontent.com/RmxDmu4d8Yjtz-iMB-k0nlAXNoVjiBVFxSl0HisRn23W7DqqRGvGdEGw_fMHy0bwGCTV2VjVRPR4Vwryg9TvMxW8twyORiJ8LsxZiGixw1yYPn30Nuu4zhZYjFswQf84R1tSXJwZbspa0p9YIg)
![](https://lh6.googleusercontent.com/P2ZIXSiBLl_tO_6-c0PlRygYVgHyuERn2QoslaeqDi5w9JtOzFcPwGQJzClTDPNUjb0O2R3-AGgXyoWbdWEQ63pko16vmH9Kbmovz72BElOyJAw_SZqs3ei0ZdOFynCY2OSUCzfWSSnFKkBOfw)
![](https://lh6.googleusercontent.com/WbbN5I_o77pDEEmg4fYTGSUR7FPLq4llgKPmUwyCNBOxVU2nDdzrWPK8444gDlFXVl4voBDhb65dPCPaL14b5eEP4xkSbwmLVXb8B5dLSGyNCIjCqbHm5COx0196RqjPm6qqr1JnQtstCDzksw)
![](https://lh4.googleusercontent.com/-F6Kq_YBsINDC9WV2tCsmqyGgdw33uoHDwHxacEgo_C2V628G_SZ7Z3JbD3Mq5b2yyjJnETMUcf0FPY_lhPin_XuykUvg4B1Vq-VwkWXnXTWY_VtYme-6mi6dU6iWwgrfzdKWUPMZsF3E5UQIA)
# **8.5 Securing E-Mail**
8.5.1 Secure E-Mail

# **8.6 Securing TCP Connections: SSL**
8.6.1 The Big Picture
8.6.2 A More Complete Picture

# **8.7 Network-Layer Security: IPsec and VPNs**
8.7.1 IPsec and Virtual Private Networks (VPNs)

# **8.8 Securing Wireless LANs**
8.8.1 Wired Equivalent Privacy (WEP)

# **8.9 Operational Security: Firewalls and Intrusion Detection Systems**
8.9.1 Firewalls



