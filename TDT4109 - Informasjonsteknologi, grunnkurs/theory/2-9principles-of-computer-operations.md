<!-- HARDWARE INTRO -->
# Principles of Computer Operations
## Following Instructions
## Learning objectives
  - Explain what a software stack represents and how it is used
  - Describe how the Fetch/Execute Cycle works, listing the five steps
    - IF – instruction Fetch
    - ID – instruction data"coding"
    - DF – data fetch
    - IE – instruction execution
    - RR – result return
  - Understand the function of the memory, control unit, arithmetic/logic unit (ALU), input unit and output unit, and program counter
  - Discuss the purpose of an operating system
  - Explain the purpose of a compiler
  - Describe how large tasks are performed with simple instructions
  - Explain why integration and photolithography are important in integrated circuits
* * *
# Summary 9
This chapter began by describing Taylor's code for an app's splash page. You learned the following:
  - Modern software is written in a language using familiar terms and operations, though they are expressed very briefly; the code relies heavily on the software stack.
  - The repeating process of the Fetch/Execute Cycle fetches each instruction (indicated by the PC), decodes the operation, retrieves the data, performs the operation, and stores the result back into the memory.
  - This process is hardwired into the control subsystem, one of the five components of a processor.
  - The memory, a very long sequence of bytes, each with an address, stores the program and data while the program is running.
  - The ALU does the actual computing.
  - The input and output units are the interfaces for the peripheral devices connected to the computer.
  - Machine instructions do not refer to the data (operands) directly, but rather indirectly. Thus, different computations can be done with an instruction, jsut by changing the data in the referenced memory locations each time the instructions is executed.
  - Programmers use sophisticated programming languages to create complex applications software as well as operating systems.
  - The basic ideas of integrated circuits are integrating active and connective components, fabrication by photolithography, and controlling conductivity through the field of effect.

# TRY IT SOLUTIONS
1. **Finding the Right Address.** If the address of the byte in the following sequence is 1020, what is the address of the last byte? <br/>
`42 72 65 61 6B 27 73 20 6F 76 65 72 2E` <br/>
Knowing that these are hexadecimal values, check Figure 7.3 to see what this memory is remembering.
  - The address of 2E is 1032, or if 1020 to base16 = 102C. Spells out "Break's over."


2. **Another Device.** Figure 9.4 shows several devices attached to the I/O subsystems that are typical of a phone or laptop. If a CD/DVD drive were shown, how would it attach to the I/O units?
  - The CD/DVD would attach on both input and output as it can both read/write.


3. **Same Data, Different Operations.** Using the data from Figure 9.7, execute the multiply instruction MUL 4000, 2000, 2080 and (read this carefully) the subtract instruction SUB 4000, 2080, 2000.
  - `Operation output, input1, input2` gives us [48*2,9*0,14*14] on multiply and [2-48,0-9,14-14] on subtract.


4. **Much Faster.** In our walk through of the F/E Cycle the answer computed was 42, whicha ccording to Douglas Adam's *Hitchhiker's Guide to the Galaxy* is "The Answer to the Ultimate Question of Life, the Universe, and Everything." Adams reveals in the book that the mythical Deep Thought computer took 7.5 million years to get the answer; the computer in your phone executes five steps above in about 7.5 nanoseconds. If there are a billion nanoseconds in a second and 31 million seconds in a year, how many times faster is your phone at computing 42 than Deep Thought?
  - The equation is `7.5 * 10**6 years / 7.5 nanoseconds` giving us `10**6 * (3.1 * 10**7)sec/year * 10**9` = `3.1 * 10**22`


5. **OR Circuitry.** Processors also have an instruction OR, ANS, A, B, which is true if either of A or B is true (or both); it's false only if both are false. Using split wire `-[___]-` show where MOS transistors should be positioned to compute this instruction, assuming the gate conducts when the operand value is 1.
  - `1 - top/bottom - (1 if top and bottom is 1)`

# REVIEW QUESTIONS
## Multiple Choice
1. A machine instructions uses how many bytes of memory?
  - **1**
  - 2
  - 4
  - 128


2. An object code is
  - programming language
  - intermediate code.
  - **machine language**
  - assembly language


3. CPU is also referred to as
  - Processor
  - Microprocessor
  - Core
  - **All of the above**


4. Which of the following is used for input and output?
  - keyboard
  - **hard disk**
  - mouse
  - printer


5. The processor has how many moving parts?
  - too many to count
  - 8
  - 2
  - **0**


6. From largest to smallest, the correct order of prefixes is
  - giga, kilo, mega, tera
  - kilo, mega, giga, tera
  - **tera, giga, mega, kilo**
  - kilo, mega, tera, giga


7. Modern computers know
  - only a few instructions
  - a couple dozen instructions
  - about a hundred instructions
  - **thousands of instructions**


8. Rerunning a program with the same data produces
  - different results depending on the time of day
  - **exactly the same result every time**
  - different results depending on which computer it is run on
  - the same reuslts most of the time but sometimes it is different


9. If `this.Opactiy += 1.0;` increases the opacity, what line of code would decrease the opacity?
  - `this.Opacity = 1.0;`
  - **this.Opacity -= 1.0;**
  - `this.Opactiy ++ 1.0;`
  - `this.Opacity -- 1.0;`


10. Which of the following characteristics of a computer depends on the number of Fetch/Execute Cycles it performs per second?
  - memory size
  - price
  - **speed**
  - ALU

## Short Answer
1. **Computers** deterministically execute instructions to process information.
2. Without the **operating system (OS)**, the processor is not capable of doing anything interesting.
3. **Random Access Memory (RAM)** is an acronym for the name of the location where computer program run and data is stored.
4. The **control unit** part of the computer is the hardware part of the Fetch/Execute Cycle.
5. In addition to fetching instructions, the F/E cycle also fetches **hardware**.
6. The math in the computer is done by the **ALU**.
7. Devices attached to computer externally are called as **peripheral devices**.
8. The computer's clock speed is measured in **hertz**.
9. Memory address in a computer starts from location **addresses**.
10. The **program counter** keeps track of the next instruction to execute.
11. A(n) **semiconductor** sometimes conducts electricity and sometimes does not.
12. The flow of electricity in a channel in a semiconductor is controlled by a(n) **gate/transistor**.
13. **A binary object file** is a long list of words, more accurately, a long series of 0's and 1's that make up a computer program.
14. The intermediate form of the object code is **source code/assembly language**.
15. **An operating system** is a program that extends the operations a computer can perform beyond the hardwired machine instructions.
16. The active and connective parts of a circuit are built **together**.

## Exercises
1. What is the speed of the processor on your personal computer? Explain where you found this information.
  - CPU Mhz: 1133 <br/>
  `$ lscpu`
2. List the characteristics of software
  - The code is very sparse - not a lot of typing
  - Programming languages using English words
3. Explain what an "idle loop" is in your own words. When does a computer start this kind of loop.
  - The CPU "idle loop" is the piece of code executed by logical CPUs if they have no tasks to run.
4. Why does a computer need an operating system?
  - An operating system provides a layer between the program and the hardware, the computer can't do that on it's own.
5. Explain the process of photolithography and why it changed computers so drastically.
  - photolithography - a printing process used to make chips like a sandwich - use light/UV to harden silicon covered with *photoresist*
6. Explain what happens in compiling.
  - Compiling is to convert a programming code/high level language to assembly code/lower level language.
7. Explain the following instruction: ADD 3000, 1050, 1900.
  - ALU operation ADD, adds value from memory location 1050 with 1900 and outputs it on memory 3000
8. List of the five steps in the Fetch/Execute cycle, and describe each. Explain how these steps correspond to eating at a restaurant.
  - IF – instruction fetch - get the order
  - ID – instruction decoding - tells the chef what the customer want
  - DF – data fetch - chefs get the order
  - IE – instruction execution - chefs make the food/order
  - RR – result return - food done, gives us the food
9. A megabyte is 1,048,576 bytes. Explain why it is not 1,000,000.
  - `2**20 = 1,048,576` is in base2 not base10
10. List 10 devices that can be connected to a computer, and classify each as "input", "output", or "I/O".
  - Lots...
