# RISC-V based MYTH Workshop - Building a RISC-V Core using TL-Verilog

This repository contains all the information regarding the 5-day RISC-V based CPU Core Design MYTH (Microprocessor for You in Thirty Hours) Workshop, offered by for VLSI System Design (VSD) and Redwood EDA. In a short span of 5-days, the basic RISC-V ISA was studied & a simple RISC-V core with base instruction set was implemented. Under the software section, the programming languages that have been used are C, Assembly language and some Pseudo codes. The RISC-V CPU Core has been designed with the help of Transaction Level Verilog(TL-Verilog) in addition with the Makerchip IDE Platform. Find below the accompanying details.


Check the individual day folders for the source codes and assignments on the respective days.


# Table Of Contents

- [Introduction to RISC-V ISA](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358#introduction-to-risc-v-isa)
  - [What’s Different About RISC-V?](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358#whats-different-about-risc-v)
  - [ISA base and extensions](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358#isa-base-and-extensions)
  - [RISC-V International](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358#risc-v-international)
  
- [Setting up the environment](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#setting-up-the-environment---installation-of-workshop-collaterals-files)
- [Application Binary Interface (ABI)](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#application-binary-interface-abi)
- [Makerchip Platform](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#makerchip-platform)
- [TL-Verilog](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#tl-verilog)
- [Implementation of the RISC-V CPU Core] (https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#implementation-of-the-risc-v-cpu-core)
  - [Different components of a RISC-V CPU Core](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#a-different-components-of-a-risc-v-cpu-core)  
  - [Testing the core with a testbench](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#b-testing-the-core-with-a-testbench)
  - [Pipelining the RISC-V core](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#c-pipelining-the-risc-v-core)
  - [Final CPU Core Implemetation Diagram](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#final-cpu-core-implemetation-diagram)
- [Future work](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#future-work)
- [Acknowledgements](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#acknowlegedgements)
- [Contact Information](https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/README.md#contact-information)


# Introduction to RISC-V ISA

RISC-V is an open standard instruction set architecture based on established reduced instruction set computer(RISC) principles. It was first started by Prof. Krste Asanović and graduate students Yunsup Lee and Andrew Waterman in May 2010 as part of the Parallel Computing Laboratory, at UC Berkeley. Unlike most other ISA designs, the RISC-V ISA is provided under open source licenses that do not require fees to use, which provides it a huge edge over other commercially available ISAs. It is a simple, stable, small standard base ISA with extensible ISA support, that has been redefining the flexibility, scalability, extensibility, and modularity of chip designs. This has made it easier and flexible for anyone to build a processor on his own at almost zero cost. 

![](https://miro.medium.com/max/2556/1*88Zj-QJq48IZTiCGUo5mSQ.png)

## What’s Different About RISC-V?

   Comparing to ARM and X86, RISC-V has below advantages:

   - **Free:** RISC-V is open-source, there is no need to pay for the IP.
   - **Simple:** RISC-V is far smaller than other commercial ISAs.
   - **Modular:** RISC-V has a small standard base ISA, with multiple standard extensions.
   - **Stable:** Base and first standard extensions are already frozen. There is no need to worry about major updates.
   - **Extensibility:** Specific functions can be added based on extensions. There are many more extensions are under development, such as Vector.


## ISA base and extensions

The RISC-V instruction set has modular characteristics. The instruction set is organized in a modular manner.Each module is represented by an English letter. 
The instruction set includes the standard part and the extension part. The standard part must be implemented.

The ISA base and its extensions are developed in a collective effort between industry, the research community and educational institutions. The base specifies instructions (and their encoding), control flow, registers (and their sizes), memory and addressing, logic (i.e., integer) manipulation, and ancillaries. 
The standard extensions are specified to work with all of the standard bases, and with each other without conflict.

The RISC-V ISA is defined as a Base integer ISA, which is the basic necessity for the implemetation of any CPU core. In addition to that it also has optional extensions to the base ISA. The base RISC-V ISA has a little-endian memory system. The standard is maintained by the RISC-V foundation. You can learn more about RISC-V here.

The base integer instructions set, that exclusively operate on integer numbers, are represented as RV32I/RV64I. The other extensions avaialable are as follows:

  - **RV64M** - **Multiply Extension** :  These are the Instructions that is used to caluclate multiplication and division.
  - **RV64F** and **RV64D** - **Single and Double precision floating point extension** : These are the instructions used to realize floating point numbers.

A CPU core that implements all the above type of instructions is called as **"RV64IMFD"** CPU Core.

## RISC-V International
The RISC-V Foundation was founded in 2015 to build an open, collaborative community of software and hardware innovators based on the RISC-V ISA. The Foundation, a non-profit corporation controlled by its members, directed the development to drive the initial adoption of the RISC-V ISA. For more information visit the site : www.riscv.org



In this workshop, we were given the overview of the software as well as the hardware aspect of the RISC-V core and ISA. In addition to that, hands on labs were also conducted in order to learn by doing, rather than just reading the theory and specifications, or just watching the videos.



# Setting up the Environment - Installation of Workshop Collaterals Files

In order to understand RISC-V ISA and work on the implementation, you will need a GNU GCC cross-compiler for RISC-V and a simulator(Here we have used **Spike** simulator).For all the necessary files(compilers and toolchains) required for the workshop to be installed on your local machine, follow the below instructions: 

1. Go to https://github.com/kunalg123/riscv_workshop_collaterals 

2. You can either download the repository zip file into you local machine or you can type in the following command in your terminal in the local machine : 

    `$git clone https://github.com/kunalg123/riscv_workshop_collaterals.git`

3. After downloading the repository , get inside the riscv_workshop_collaterals directory.

    `$cd riscv_workshop_collaterals`

4. For installation of the complete toolchain, run the "run.sh" shell script. For this, type the following command:

    `$./run.sh`
    
5. After installation of all the required files, you can move on to perform the compilation and simulation of your codes.

For detailed steps regarding the source code, compilation, simulation and debugging, visit Day_1 and Day_2 folders.



# Application Binary Interface (ABI) 

- The **Application Binary Interface(ABI)** , or also called as System call interface is used by the application programmer to directly access the registers of the RISC-V architecture via system calls. In other words, if the applpication programmer wants to access the harware resources of the processor, it has to do via the resgiters, and the way it does it, is thorugh ABI or system calls. RISC-V ABI defines standard functions for registers which allows for software interoperability. 

- The ABI or application binary interface, consists of 2 parts – one is the set of all user instructions itself, and second is the system call interface through the operating system layer.

- The RISC-V architecture has 32 registers from x(0) to x(31) whose width is defined by XLEN which can be 32/64  for RV32/RV64 respectively. Application programmer can access each of these 32 registers through its ABI name.

- In RISC-V architecture, the memories are byte addressable. The RISC-V belongs to the little endian memory addressing system.

- There are two methods to load data in to the registers:
     1. **By loading directly into the registers:** But since there are only limited a,ount of registers available, so at a time only few bit numbers can be loaded.
     2. **By using the Memory:** We load the data into the memory and then from memory we can load the data into the registers.


Below mentioned is the RISC-V calling convention. [Image source:riscv](https://riscv.org/).

![ABI](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/ABI.PNG)


**Types of Instructions**
The instructions which operate on the signed and unsigned integer numbers are called as Base Interger Instructions. There are about 47 types of Base Insterger Instrcutions in the RISC-V architecture. Some of them are mentioned below:
  - The instructions that operates only on registers are called as **R-type Instructions**. 
  Example: add x8, x24, x8
  - The instructions that operates on registers and immediate values are called as **I-type Instructions**. 
  Example: ld x8, 16(x32)
  - The instructions that operates only on the source registers and the immediate values, and also used for storing purposes are called as **S-type Instructions**.
  Example: sd x8, 8(x23)
  
Since all the registers that are being accessed by R-type, or I-type or S-type Instructions are of 5 bits, hence total no of register that can be represented are 2^5 = 32. This is the reason why there are 32 registers (i.e. x0 - x31) present in the RISC-V architecture.


For testing the ABI call using 1to9_custom.c and load.S in order to find sum of numbers from 1 to 9, we refere to the Day_2 folder.
Testing ABI call using [1to9_custom.c](https://github.com/aditikhare11/RISC-V-Core/blob/master/Codes/1to9_custom.c) and [load.S](https://github.com/aditikhare11/RISC-V-Core/blob/master/Codes/load.S) to find sum of numbers from 1 to 9.



# Makerchip Platform

Makerchip is a free online environment by Redwood EDA for developing high-quality integrated circuits. The online platform can be used to code, compile, simulate and debug Verilog designs from a browser. It gives you a place to create any digital sequential logic you can dream up faster than you ever thought was possible, all within your browser. The breakthrough in productivity is two fold:
  - A tight integration of design, simulation, and debug capabilities
  - Support for Transaction-Level Verilog (TL-Verilog), in addition to Verilog and synthesizable SystemVerilog.
  
For basic tutorial steps , you can refer [here]. For complete details, you can browse [Makerchip Platform](http://makerchip.com/).  

# TL-Verilog
Transaction-Level Verilog (TL-Verilog) is an emerging extension to SystemVerilog that supports a new design methodology, called transaction-level design. For this project, TL-Verilog has been chosed as the HDL of choice for the design. Projects on Makerchip can be completely designed using TL-Verilog. Transaction Level - Verilog standard is an extension of Verilog which has various advantages like simpler syntax, shorter codes and easy pipelining. You can learn more about TL-Verilog [here](http://tl-x.org/).

Timing abstract can be done in TL-Verilog. This model is specified for pipelines where the sequential elements are generated by tools from the pipelined specification. This allows for easy retiming without the risk of introduction of any functional bugs. More information on timing abstract in TL-Verilog can be found in the IEEE paper ["Timing-Abstract Circuit Design in Transaction-Level Verilog" by Steven Hoover](https://ieeexplore.ieee.org/document/8119264).


# Implementation of the RISC-V CPU Core

This section will walk through the different implementation steps to achieve the RISC-V core. 

**_Please note: Click on the step to be redirected to the code associated with that step. The code can be directly pasted on Makerchip.com to view the design._**

## A. Different components of a RISC-V CPU Core

Example of a RISC-V CPU Core block diagram.

The various components involved in a basic RISC-V CPU Core are as follows: 

**[1. Program Counter and Program Counter adder](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Next%20PC)**

Program Counter is a register that contains the address of the instruction being executed. Since memory is byte addressable and the instruction length is 32 bits, the Program Counter adder adds 4 bytes to the address to point to the next address. A reset input is also present which will reset the PC value to 0. 

![PC](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/PC.PNG)

**[2. Instruction Fetch](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Instruction%20Fetch)**

Here the instruction memory is added to the program. The instruction memory contains a test program which computes the sum of numbers from 1 to 9. The instruction memory read address pointer is computed from the program counter and it outputs a 32 bit instruction. (instr\[31:0])

![Fetch](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/Fetch.PNG)


**[3. Instruction Decode](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Instruction%20Decode)**

Instruction type is decoded first using 5 bits of the instruction instr\[6:2]. 

![Instruction Type](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/Instructiontypedecode.PNG)

Next step is to calculate the 32 bit immediate value (imm\[31:0]) based on the instruction type. 

![Instruction Imm](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/InstructionImmDecode.PNG)

Other function fields like funct7, rs2, rs1, funct3, rd and opcode are extracted based on the instruction type. At this point valid condtions need to be defined for fields like rs1, rs2, funct3 and funct7 because they are unique to only certain instruction types. 

Only 8 operations are implemented at this stage namely BEQ, BNE, BLT, BGE, BLTU, BGEU, ADDI and ADD. The other operations from the RV32I Base Instruction Set will be implemented in the later steps. To see the complete list with the associated instruction fields click [here](https://github.com/aditikhare11/RISC-V-Core#pipelining-the-risc-v-core).

**[4. Register File Read](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Register%20File%20Read)**

The register file macro is added which can be viewed under the "NAV-TLV" tab on Makerchip. The two source register fields defined as rs1 and rs2 are fed as inputs to the register file and the outputs are the contents of the source registers. The respective enable bits are set based on the valid conditions for rs1 and rs2 as defined in the previous step. 

![File Read](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/Register%20File.PNG)

**[5. ALU](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/ALU%20for%20addition)**

The Arithmetic Logic Unit is the component that computes the result based on the selected operation. At this point the code only supports ADD and ADDI operations to execute the test code. All operations will be added at a later step. 

**[6. Register File Write](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Register%20File%20Write)**

This step is essential to provide support for instructions that have a destination register (rd) where the output must be stored. The register file enable depends on the validity of the destination register rd and the write index takes the value stored in rd. An additional condition to ignore write if the destinaton register is x0 is added. x0 register is always equal to zero in RISC-V implementation and hence must not be written to. 

**[7. Branches](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Core%20with%20testbench)**

The final step is to add support for branch instructions. A branch target pc has to be computed and based on the branch taken value, the pc will choose the new branch target pc when required. 

![Core](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/Non-pipelined%20core.PNG)

## B. Testing the core with a testbench

Now that our implementation is complete, a simple testbench statement can be added to ensure the core is working correctly. 
When the following line of code is added on Makerchip, the simulation will pass only if the value stored in r10 = sum of numbers from 1 to 9. 

```
*passed = |cpu/xreg[10]>>5$value == (1+2+3+4+5+6+7+8+9);
```
In the instruction memory, r10 has been used to store the sum. The simulation passed message can be seen under the "Log" tab and the asm file to compute sum can be viewed in the start under the "Editor" tab
[Click here](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Core%20with%20testbench) to view to design.  

## C. Pipelining the RISC-V core

The RISC-V core designed is divided into 5 pipeline stages. Pipelining in Makerchip is extremely simple. To define a pipeline use the following syntax:
```
|<pipeline_name>
  @<pipeline_stage>
    instruction1 in the current stage
    instruction2 in the current stage
    .
    .
  @<pipeline_stage>
    instruction1 in the current stage
    instruction2 in the current stage
    .
    .
```
Staging in a pipeline is a physical attribute with no impact to behaviour. 
At this point support for register file bypass is provided. All the instructions present in the RV32I base instruction set are implemented apart from FENCE, ECALL and EBREAK. All the instructions implemented are shown in the table below which was obtained from [riscv.org](). 

![ISA](https://github.com/aditikhare11/RISC-V-Core/blob/master/RISC-V/rv32instructionset.PNG)

Load/store and jump support is added along with the following two extra lines of code to test load and store.
```
m4_asm(SW, r0, r10, 10000)
m4_asm(LW, r17, r0, 10000)
```

## Final CPU Core Implemetation Diagram

The snapshot of the final core can be seen below. [Click here](http://makerchip.com/sandbox/0wpfLhK8v/0vgh7NL) to view the final design on Makerchip. Additionally you can also paste the code on this [link](https://github.com/aditikhare11/RISC-V-Core/blob/master/Makerchip%20Codes/Final%20Pipelined%20RISC-V%20Core) directly on [makerchip.com](http://makerchip.com/) to view the project.

![Final Core](Day3_5/Final_Output_for_RISC-V_Implemented_CPU_Core.JPG)

# Future Work 

This project was done as a part of the [**RISC-V based MYTH (Microprocessor for You in Thirty Hours)**](https://www.vlsisystemdesign.com/riscv-based-myth/) workshop conducted by **Kunal Ghosh** and **Steve Hoover**. The current project implements almost the entire RV32I base instruction set. Future work involves modifying the current design to implement support for the remaining operations and also implementation of other standard extensions like M, F and D. 


# Acknowlegedgements

- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Steve Hoover](https://github.com/stevehoover), Founder, Redwood EDA
- [Shivam Potdar](https://github.com/shivampotdar), GSoC 2020 @fossi-foundation
- [Vineet Jain](https://github.com/vineetjain07), GSoC 2020 @fossi-foundation

# Contact Information

- Ashutosh Sahoo, BTech Graduate , NIT Rourkela (Email: ashutosh0358.sahoo@gmail.com)
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. (Email: kunalghosh@gmail.com)
- Steve Hoover, Founder, Redwood EDA (Email: steve.hoover@redwoodeda.com)
