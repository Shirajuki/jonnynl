---
layout: post
tags: TDT4109
categories: TDT4109
---
<!-- ALGORITHMS -->
# Algorithms
## Learning objectives
  - **The Concept of an Algorithm:** An informal review, The Formal Definition of an Algorithm, The Abstract Nature of Algorithms
  - **Algorithm Representation:** Primitives, Pseudocode
  - **Algorithm Discovery:** The Art of Problem Solving, Getting a Foot in the Door
  - **Iterative Structures:** The Sequential Search Algorithm, Loop Control, The Insertion Sort Algorithm
  - **Recursive Structures:** The Binary Search Algorithm, Recursive Control
  - **Efficiency and Correctness:** Algorithm Efficiency, Software verification

* * *

# SUMMARY 5
### The Concept of an Algorithm:
Machine cycle,CPU = a simple algorithm
```
As long as the halt instruction has not been executed continue to execute the following steps:
a. Fetch an instruction
b. Decode the instruction
c. Execute the instruction
```
> An algorithm is an ordered set of unambiguous, executable steps that defines a terminating process.

An algorithm is abstraxt and distinct from it's representation. It can be represented in many ways:
- Algebraic formula
- Instruction
- Electronic circuit

### Algorithm Representation
**Primitive:** well-defined set of building blocks from which algorithm representations can be constructed. Definitions, ambiguity, rules to represent more complex ideas constitutes a **programming language**

**Pseudocode:** a notational system in which ideas can be expressed informally during the algorithm development.
<br/>Before: Algol and Pascal
<br/>Now: Java, C, Python

### Algorithm Discovery
**Art of problem solving: (Polya's list)**
<br/>Phase 1. Understand the problem
<br/>Phase 2. Get an idea of how an algorithmic function might solve the problem
<br/>Phase 3. Formulate the algorithm and represent it as a program
<br/>Phase 4. Evaluate the program for accuracy and for its potential as a tool for solving other problems

- Working on the problem backward
- Stepwise refinement (step by step)
- Top-down/bottom-up methodology

### Iterative Structures
**The Sequential Search Algorithm:**
```python
def Search(List, Target):
  if (List is empty):
    Declare search a failure
  else:
    Select the first entry in List to be TestEntry
    while (TargetValue > TestEntry and there remain entries to be considered):
      Select the next entry in List as TestEntry.
    if (TargetValue == TestEntry):
      Declare search a success
    else:
      Declare search a failure
```
**The Insertion Sort Algorithm:**
```python
def Sort(List):
  N = 2
  while (the value of N does not exceed the length of List):
    Select the Nth entry in List as the pivot entry.
    Move the pivot entry to a temporary location leaving a hole in List.
    while (there is a name above the hole and that name is greater than the pivot):
      Move the name above the hol down into the hole leaving a hole above the name.
    Move the pivot entry into the hole in List.
    N = N + 1
```
### Recursive Structures
**The Binary Search Algorithm:**
```python
def Search(List, TargetValue):
  if (List is empty):
    Report that the search failed.
  else:
    TestEntry = the "middle" entry in List
    if (TargetValue == TestEntry):
      Sublist = portion of List preceding TestEntry
      Search(Sublist, TargetValue)
    if (TargetValue > TestEntry):
      Sublist = portion of List following TestEntry
      Search(Sublist,TargetValue)
```
### Efficiency and Correctness
Big-O-notation / big-theta-notation
O(log(n)),O(n),O(n**2),O(n**3) ...

# REVIEW QUESTIONS
## Multiple Choice
