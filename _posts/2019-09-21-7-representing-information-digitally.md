---
layout: post
tags: TDT4109
categories: TDT4109
---
<!-- DIGITAL REPRESENTATION -->
# Representing Information Digitally
## Bits and the "Why" of bytes
## Learning objectives
  - Explain the link between patterns, symbols, and information
  - Determine possible PandA encodings using a physical phenomenon
  - Enode and decode ASCII
  - Represent numbers in binary form
  - Compare different encoding methods
  - Explain how structure tags (metadata) enode the Oxford English Dictionary

* * *

# Summary 7
We began the chapter by learning that digitizing doesn't require digits - any symbols will do. We explored following:
  - PandA encoding, which is based on the presence and absence of a physical phenomenon. Their patterns are discrete; they form the basic unit of a bit. Their names (most often 1 and 0) can be pair of opposite terms.
  - A bit's 0 and 1 states naturally encourage the representation of numbers in base 2, that is, binary.
  - 7-bit ASCII, an early assignment of bit sequences (symbols) to keyboard characters. Extended or 8-bit ASCII is the standard.
  - The need to use more than the minimum number of bits to encode information.
  - How documents like the Oxford English Dictionary are digitized. We learned that tags associate metadata with every part of the OED. Using that data, a computer can easily help us find words and other information.
  - The mystery of the *y* in byte.

# TRY IT SOLUTIONS
1. **Complete the Code.** QWERTY vs. Dovrak. From Dovrak to QWERTY: `Ecuu.p.by ofmxrnoq oam. m.abcbi`
  - `Different symbolsx same meaning`
2. **Specific Information.** North Atlantic lobsters have green-brown shells when alive. Specify the bit of information for "lobster cooked."
3. **Bits of Orange.** The sequence of glasses below records information in several different ways. Assuming thatt present represents 1, identify what the phenomenon is to represent these binary sequences: (a) 101101001, (b) 000001011, and (c) 100110101.
4. **Count one more.** If your new computer thinks it is 100111 days old, how old will it be tomorrow?
5. **Casting a Hex.** Convert the hex `F00D 4 A BEE` to binary using substitutiong from table 7.3. Going the other decode this binary `0000 1111 1111 0010 1010 1101 1000` into hex
6. **Counting on Your Fists.** According to the joke, humans count with their fingers, which is why we have decimal; computer people count with their fists, which is why we have binary. Assign 0 and 1 to the fists below to make binary six.
  `0101` eller `1010`
7. **Alternating.** What decimal number is the binary number `1 0101 0101`
8. **Numbers as letters.** Encode the phone number (888) 555-1212 in ASCII, including the punctuation. (Notice that there is a space before the first 5.) To find the answer, locate each character in Figure 7.3 and write the four bits at the left of the row and the four bits at the top of the column. For example, the open paranthesis -(- is in the third row and corresponds to `0010 1000`
9. **How Much is a Pound?** The ASCII for the character "£", the symbol for the British pound, is A3 in hex and `1010 0011` in binary. Wht's the deimal value of the binary number `1010 0011`; that is, how much is a £.

# REVIEW QUESTIONS
## Multiple Choice
1. How many symbols can be represented by 9 bits?
  - 256
  - **512**
  - 1024
  - 2048


2. PandA representation is what kind of system?
  - decimal
  - **binary**
  - hexadecimal
  - byte


3. Extended ASCII is
  - 7 bit code
  - **8 bit code**
  - 2 bit code
  - 10 bit code


4. This defines how characters relate to each other when they are compared.
  - digitizing
  - binary sequence
  - **collating sequence**
  - information representation


5. When using physical phenomena to encode information, name on potential solution if there are more than two alternatives.
  - there is no solution
  - adopt them all as present
  - **adopt one as present and all the other alternatives as absent**
  - adopt them all as absent


6. Information describing information is called
  - special information
  - **metadata**
  - special-data
  - formatting


7. K bits in a sequence yield how many symbols?
  - K**2
  - **2**K**
  - K
  - 2

## Short Answer
1. **QWERTY** is standard US key board.
2. **Bumps and pits** encode information on DVDs and CDs
3. Binary is base **2**.
4. Grouping binary digits in groups of four makes converting to **hexadecimal** easier.
5. "PandA" are part of **binary** system.
6. Information is said to be **discrete**, or distinct; there is no gray.
7. The number of digits is the **base** or the **radix** of the numbering system.
8. A byte consists of **8** bits.
9. **Digitizing** is representing information with symbols.

## Exercises
1. Make a list of the numbers you use that are not treated as numbers (e.g., phone numbers).
  - Lots, phone numbers, customer id, other ids.
2. Create a list of 10 different PandA encodings that are different from those presented in this chapter.
  - idk
3. Encode (800) 555-0012 in ASCII, including punctuation.
4. This chapter mentions that it does matter whether 0 represents present or absent. Explain in detail why this is the case.
  - present or absent gives different combinations, 01 is different from 10.
5. Translate the following hexadecimal into binary and then into ASCII: `68 65 78 61 64 65 63 69 6D 61 6C`
  - "hexadecimal" using python3 `bytearray.fromhex('68 65 78 61 64 65 63 69 6D 61 6C').decode()`
6. Encode the following ISBN number in ASCII: `978-3-16-148410-0`
7. You have discovered the following string of binary ASCII code; figure out what they mean: `01010111 01100001 01111001 00100000 01110100 01101111 00100000 01100111 01101111 00100001`
  - python3 `chr(int('base2',2))` gives us `"way to go!"`
8. Explain the relatonship between the number D and 1101.
  - D in base16/hex = `bin(int('D',16))`
9. Explain why radio broadcasters use longer encoding to transmit information.
10. Discuss the need for UTF-8.
  - ASCII won't have enough combination for all the possible character and symbols (emojis, foreign characters like hebrew, arabic, chinese, korean and so on), as it's limited we need Unicode/UTF-8.
11. Explain how Buchholz created an error-detecting name for the memory unit.
12. List out the characteristics that have to be encoded for a content.
