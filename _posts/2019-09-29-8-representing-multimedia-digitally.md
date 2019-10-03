---
layout: post
tags: TDT4109
categories: TDT4109
---
<!-- DIGITAL REPRESENTATION -->
# Representing Multimedia Digitally
## Light, Sound, Magic
## Learning objectives
  - Explain how RGB color is represented in bytes
  - Understand the difference between "bits" and "binary numbers"
  - Change an RGB color by binary addition
  - Discuss concepts related to digitizing addition
  - Explain Data compression and it's lossless and lossy variants
  - Explain the meaning of the Bias-Free Universal Medium Principle

* * *

# SUMMARY 8
In this chapter we considered how different forms of information are represented in the computer. You learned the following:
- With RGBA color, each intensity is a 1-byte numeric quantity represented as a binary number.
- Binary representation and binary arithmetic are the same as they are for decimal numbers, but they are limited to two digits.
- The decimal equivalent of binary numbers is determined by adding their powers of 2 corresponding to 1's.
- We can use arithmetic on the intensities to "compute on the representation," for example, making gray lighter and coloriz a black-and-white picture from the nineteenth century.
- When digitizing sound, sampling rate and measurement precision determine how accurate the digital form is; uncompressed audio requires more than 80 million bits per minute.
- Compression makes large files manageable: MP3 for audio, JPEG for still pictures, and MPEG for video. These compact representations work because they remove unnecessary information.
- Optical character recognition technology improves our world.
- The Bias-Free Universal Medium Principle embodies the magic of computers through universal bit representations and unbiased encoding.

# TRY IT SOLUTIONS
1. **Not in This Case.** About the only situation in which programmers manipulate bits of letters is to change them into lowercase - it's done for matching and searching. Looking back at Figure 7.3, can you discover what change is needed to make the uppercase ASCII alphabet into the corresponding lowercase?

2. **Light Sabers.** Suppose a red light saber crosses a blue light saber. What color are they at the place where they cross, from the audience's point of view?

3. **Colored Light.** Describe what a user sees on the screen when viewing the pixels shown here.

4. **Dim Bulb.** What is the binary setting needed to show a red subpixel at 1/4 of its brightness, as shown here?

5. **Very Powerful.** To convert decimal 206 to binary, which powers of 2 will be needed for the table?

6. **Decimal Conversion.** Convert the decimal number 206 to binary using the algorithm and it's table.

7. **Checking Binary.** Compute this addition: Binary addition is so easy even computers can do it!

8. **Getting the Gray Out.** Using the coloring algorithm, give the new value of 1010 1100.

9. **Perfect Timing.** The QR Code shown at right, is the Japanese text ... Which is from the video game Zero Wing, and was famously and incorrectly translated into English as "All your base are belong to us." How many black squares are there in the timing tow (or column) of this code?

# REVIEW QUESTIONS
## Multiple Choice
1. Put the following binary values representing the intensity of green in order from least intense to most intense: 1111 1100, 1111 1111, 1100 0000, 1111 0000
  - 1111 1100,1111 1111,1100 0000,1111 0000
  - 1111 1111,1100 0000,1111 0000,1111 1100
  - 1111 1111,1111 1100,1111 0000,1100 0000
  - **1100 0000,1111 0000,1111 1100,1111 1111**


2. The RGB setting for blue is (0 is off, 1 is on)
  - 0000 0000 0000 0000 0000 0000
  - 1111 1111 0000 0000 0000 0000
  - 0000 0000 1111 1111 0000 0000
  - **0000 0000 0000 0000 1111 1111**


3. People tend to be sensitive to small changes in **___**, but not to small changes in **___**.
  - brightness,color
  - color,brightness
  - **brightness,color**
  - color,contrast


4. Digital information
  - discrete
  - **continuous**
  - analog
  - none of the above


5. According to the Nyquist rule, the sampling rate for sound should be roughly
  - half of what humans can hear
  - the same as what humans can hear
  - **twice what humans can hear**
  - three times what humans can hear


6. The accuracy of a digitized sound is determined by
    - the sampling rate
    - the precision of the sample
    - the size of the digitez file
    - **all of the above**


7. An analog-to-digital converter
  - **changes digital information to analog waves**
  - converts continuous sound to digital sound
  - converts sound to an electric signal
  - sets approximated values


8. Which of these is not an image format?
  - JPEG
  - **MPEG**
  - PNG
  - GIF

9. Jessica Simpson's "A little Bit" is 3 minutes 47 seconds long. How many bits is this?
  - 1,411,200
  - 40,042,800
  - 84,672,000
  - **320,342,400**

10. Raymond Kurzweil is known as the inventor of
  - computer science
  - **text-to-speech generation**
  - image compression
  - virtual reality


## Short Answer
1. RGB values are usually stored as three **bytes**
2. **Speed of light** is the limit that defines the maximum rate that information can be transmitted
3. All colors with equal intensities of RGB subpixels are either **black**, **white**, or shades of gray.
4. **Hz/Hertz** is the number of waves per second.
5. **MP3** sound removes the highest and lowest samplings as part of its compression algorithm.
6. Pixel color is determined solely by the **intensity** of the color.
7. In OCR, each pixel is an estimate of how **dark** the corresponding area is.
8. On the computer, **compression** means to store or transmit information with fewer bits.
9. A process that allows the computer to "read" printed characters is called **OCR/Optical Character Recognition**.
10. To increase the **contrast** of a photo, you should increase the difference between the light and dark parts.
11. When converting analog sound to digital sound, using **more** bits yield a more accurate digitization.
12. Small changes in brightness is known as **___**.
13. Small changes in color is known as **___**.
14. **___** is a technique to reduce bits while storing images.

## Exercises
1. Explain the phrases "bits are it" and "bits have no inherent meaning."
  - Bits can represent all discrete information (e.g., numbers, colors, sounds, etc.); but there's no way we can determine what a bit sequence represents without more information than that.
2. In the decimal to binary algorithm presented in this chapter, how do you determine what power of two to start the "place values" row of table?
  - Decimal to binary conversion algorithm, the place value of all the powers need to be lesser than the given value.
3. convert 1455 and 1557 to binary and then compute their addition, displaying the answer in binary. Show your work.
  - 1455 = 0101 1010 1111
  - 1557 = 0110 0001 0101
  - 0101 1010 1111 + 0110 0001 0101 = 1455 + 1557 = 3012 = 1011 1100 0100
4. In binary, add 1011,1001,110, and 1100.
  - 1011 + 1001 + 110 + 1100 = 11 + 9 + 6 + 12 = 38 = 00100110
5. Convert 168 and 123 to binary and then compute their addition. How many bytes does it take to represent each number= How many bytes are needed for the answer?
6. What process could you use to remove "red eye" from a photo? Explain your algorithm in great detail.
7. Explain how a picture with 300 pixels per inch could be converted to a picture with 100 pixels per inch.
8. Give three applications of OCR systems.
9. What do you mean by sample and sampling rate?
10. What do you mean by compression?
11. What will the best latency be for 255 KB to be transmitted with a bandwidth of 25 KB per second? Explain your answer.
12. State five kinds of information that can be represented with four bytes of information. Be creative, recall information discussed in previous chapters, and explain each kind in detail.
13. Explain how colored light and colored paint differ. Provide concrete examples in your explanation.
14. Provide three advantages og using digital sound over analog sound. Are there any disadvantages? Explain your answer in detail.
15. Assuming you had a small file of 0's and 1's as follows, use run-length encoding to compress this file.
```
0000 0000 1100 0000
1111 1111 0011 1111
0011 1111 0000 0000
1100 0000 0000 0000
```
16. MP3 is a lossy compression that loses some pieces of information. Why is it okay to lose information?
17. Devise an algorithm that allows you to remove certain letters from the following sentence and yet retain it's clarity, making it understandable by most humans:
`Ultimately, new technical advances transform every facet of human life and society.`
