---
Date: 2024-12-18T18:35:00
tags:
---

## Introduction
For fans of video games, the computing ability of CPU and GPU might be considered as the main factor when they are choosing new devices. The same problem also occurs to most people. Though surrounded by electronic devices, many still can't distinguish the differences of RAM and ROM, or even the differences between CPU and GPU. 
Frankly speaking, indeed, the lack of knowledge doesn't matter when we use it, but still, we could benefit a lot after understanding the functioning of these powerful machines which is bringing new things to our world every second.

This article introduces the main components of a CPU and its basic structures.
You can use it as a review if you have knowledge in this.

***
## The components
### Register
1. *PC: Program counter*
Register used to store the address of the instruction to be fetched. When an instruction is executed, the value of PC will increment by one to store the next address.

2. *IR* *: Index Register*
An index register is used in index addressing. Most not only used in the determination of an operand address, but also can be used as a counter.

3. *MAR: Memory address Register*
A register of constant storage, used to store the address of data which is going to be loaded.
The number of bits used to represent MAR determines the size of traced storage.

4. *MDR:Memory Data Register*
stores the data which will be written into CIR. Before the instruction is executed, the data is stored in MDR.

5. *CIR:Current Instruction Register*
A register which stores the instruction currently being executed.

6. *SR:Status Register*
has a 32 bits storage. 6 bits is used for most of the time, which stores
- Z (zero):when the program goes wrong
- V (overflow):when overflow occurs
- N (negative):when the return value is negative
- I (interrupt):if it's a stopping instruction
- S (System mode): user mode(0), system mode(1)
- P (Paging): storage management
When interrupt occurs, the SR is accessed by the Control Unit to determine and trace the type of error.
7. *ACC:Accmulator*
Used to store the results of the calculations. If there is no ACC, then the results step by step will have to be stored back into RAM, which is very time-consuming.

### Control Unit(CU)
It is responsible for fetching the data, converting it into digital form and sending it to the processor.
It also controls the sequence the instructions are performed.
### Arithmetic Logic Unit (ALU)
The Arithmetic Logic Unit is responsible for arithmetical and logical calculations in the system.
It is the mathematical brain of the system. Its result is mostly stored in the accumulator.
### Cache
A type of Random Access Memory that stores small amounts of data. But it uses flip-flop circuit so that it takes a wider area, but it can fetch data with a fast speed.
### Bus
A link between the processor and accessible memory. It is used to send info by the two sides.
Usualy there are three types of buses---

Address bus which is used to send memory address from processor to other components.
The address bus is uni-directional, which means data can only be transmitted in one direction.

Data bus which is used to transmit data between components.
The data bus is bidirectional. Data can be transmitted in both directions.

Control bus which is used to send control signals between the CUs (Control Units).
The control bus is bidirectional. Data can be sent regardless of the direction.



***
## Function flow
- The Fetch-execute cycle
developed by Von Neumann 
Instructions are stored in the memory.
Each instruction is fetched and executed in sequence. 
It contains six main components:
- The ALU (Arithmetic Logic Unit)
- The CU (Control Unit)
- The Registers
- Buses
- System Clock
- Cache (IAS) (Immediate access storage)

Next, I will introduce how this cycle works.
In the *fetching* stage,
1. The instruction address is stored in *PC*, fetched from *RAM*.
2. The *MAR* accesses *PC* and stores the value in its contents. 
3. The *MDR* access the address stored in *MAR* and stores the address's contents.
4. The *CIR* access *MDR* and fetch the current instruction code.
5. The PC is then incremented by 1.
6. The instruction fetched is then decoded.

In the *execution* stage,
The processor passes the decoded instruction as a set of control signals to the appropiate components within the computer system.


