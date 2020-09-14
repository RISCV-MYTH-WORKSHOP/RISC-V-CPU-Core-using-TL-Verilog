# RISC-V based MYTH Workshop - Building a RISC-V Core using TL-Verilog

This repository contains all the information regarding the **5-day RISC-V based CPU Core Design MYTH (Microprocessor for You in Thirty Hours) Workshop**, offered by for **VLSI System Design (VSD) and Redwood EDA.** In a short span of 5-days, the basic RISC-V ISA was studied & a simple RISC-V core with base instruction set was implemented. Under the software section, the programming languages that have been used are C, Assembly language and some Pseudo codes. The RISC-V CPU Core has been designed with the help of **Transaction Level Verilog(TL-Verilog) in addition with the Makerchip IDE Platform.** Find below the accompanying details.


# Contents of the Workshop

Check the individual day folders for the documentation, source codes and assignments of the respective days of the workshop.

- [Day 1: Introduction to RISC-V ISA and GNU compiler toolchain](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_1)
- [Day 2: Introduction to ABI and basic verification flow](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_2)
- [Day 3: Digital Logic with TL-Verilog and Makerchip](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_3)
- [Day 4: Basic RISC-V CPU micro-architecture and Implementation](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/README.md)
- [Day 5: Complete Pipelined RISC-V CPU micro-architecture](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_5)


**_Please note: The Day3_5 folder has been created at the time of the workshop for evaluation purpose. You can ignore that._**


# Documentation

# Table Of Contents

- [Introduction to RISC-V ISA](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#introduction-to-risc-v-isa)
  - [What’s Different About RISC-V?](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#whats-different-about-risc-v)
  - [ISA base and extensions](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#isa-base-and-extensions)
  - [RISC-V International](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#risc-v-international)
  
- [Setting up the environment](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#setting-up-the-environment---installation-of-workshop-collaterals-files)
- [Application Binary Interface (ABI)](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#application-binary-interface-abi)
 - [Register File](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#register-file)
 - [Types of Instructions](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#types-of-instructions)
 
- [Makerchip Platform](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#makerchip-platform)
- [TL-Verilog](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#tl-verilog)

- [Implementation of the RISC-V CPU Core](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#implementation-of-the-risc-v-cpu-core)
  - [Different logical blocks of a RISC-V CPU Core](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#a-different-logical-blocks-of-a-risc-v-cpu-core)  
  - [Testing the core with a testbench](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#b-testing-the-core-with-a-testbench)
  - [Pipelining the RISC-V core](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#c-pipelining-the-risc-v-cpu-core)
  - [Complete list of RSC-V Assembly Language](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#d-a-complete-list-of-risc-v-assembly-language)
  - [Final CPU Core Implemetation](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#e-final-risc-v-cpu-core-implementation)
   - [Final Core Block Diagram](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#final-core-block-diagram)
   
- [Future Work](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#future-work)
- [References](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#references)
- [Acknowledgements](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#acknowlegedgements)
- [Contact Information](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#contact-information)


# Introduction to RISC-V ISA

RISC-V is an open standard instruction set architecture based on established reduced instruction set computer(RISC) principles. It was first started by Prof. Krste Asanović and graduate students Yunsup Lee and Andrew Waterman in May 2010 as part of the Parallel Computing Laboratory, at UC Berkeley. Unlike most other ISA designs, the RISC-V ISA is provided under open source licenses that do not require fees to use, which provides it a huge edge over other commercially available ISAs. It is a simple, stable, small standard base ISA with extensible ISA support, that has been redefining the flexibility, scalability, extensibility, and modularity of chip designs. This has made it easier and flexible for anyone to build a processor on his own at almost zero cost. 

![RISCV_logo](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/RISCV_logo.jpg)

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

![ISA_base_and_extensions](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/ISA%20_base_and_extensions.JPG)

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
    
5. After installation of all the required files, you can move on to perform the compilation and simulation of your codes by followinf [here](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_1)

**_For detailed steps regarding the source code, compilation, simulation and debugging, visit [Day_1](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_1) and [Day_2](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_2) folders._**



# Application Binary Interface (ABI) 

- The **Application Binary Interface(ABI)** , or also called as System Call Interface is used by the application programmer to directly access the registers of the RISC-V architecture via system calls. In other words, if the applpication programmer wants to access the harware resources of the processor, it has to do via the resgiters, and the way it does it, is thorugh ABI or system calls. RISC-V ABI defines standard functions for registers which allows for software interoperability. 

- The ABI or application binary interface, consists of 2 parts – one is the set of all user instructions itself, and second is the system call interface through the operating system layer.

- The RISC-V architecture has 32 registers from x(0) to x(31) whose width is defined by XLEN which can be 32/64  for RV32/RV64 respectively. Application programmer can access each of these 32 registers through its ABI name.

![Application Binary Interface](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/ABI.png)

- In RISC-V architecture, the memories are byte addressable. The RISC-V belongs to the little endian memory addressing system.

- There are two methods to load data in to the registers:
     - **By loading directly into the registers:** But since there are only limited a,ount of registers available, so at a time only few bit numbers can be loaded.
     - **By using the Memory:** We load the data into the memory and then from memory we can load the data into the registers.


### Register File:

RISC-V contains 32 integer registers and 32 floating point registers. Through the ABI names, we reserve some of these registers for certain purposes. For example, all registers that start with a t for temporary can be used for any purposes. All registers that start with an a for argument are used for arguments passed to a function. All registers that start with s (except sp) for saved are registers that are preserved across function calls.

![Register_file](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Register_file.JPG)


### Types of Instructions:

The instructions which operate on the signed and unsigned integer numbers are called as Base Interger Instructions. There are about 47 types of Base Insterger Instrcutions in the RISC-V architecture. Some of them are mentioned below:
  - The instructions that operates only on registers are called as **R-type Instructions**. 
  Example: add x8, x24, x8
  - The instructions that operates on registers and immediate values are called as **I-type Instructions**. 
  Example: ld x8, 16(x32)
  - The instructions that operates only on the source registers and the immediate values, and also used for storing purposes are called as **S-type Instructions**.
  Example: sd x8, 8(x23)
    
  ![Instruction_Format](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Instruction_formats.JPG)
  
Since all the registers that are being accessed by R-type, or I-type or S-type Instructions are of 5 bits, hence total no of register that can be represented are 2^5 = 32. This is the reason why there are 32 registers (i.e. x0 - x31) present in the RISC-V architecture.


For testing the ABI call using [1to9_custom.c](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_2/Programs/1to9_custom.c) and [load.S](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_2/Programs/load.S) in order to find sum of numbers from 1 to 9, refer the [Day_2](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_2) folder.


# Makerchip Platform

Makerchip is a free online environment by Redwood EDA for developing high-quality integrated circuits. The online platform can be used to code, compile, simulate and debug Verilog designs from a browser. It gives you a place to create any digital sequential logic you can dream up faster than you ever thought was possible, all within your browser. The breakthrough in productivity is two fold:
  - A tight integration of design, simulation, and debug capabilities
  - Support for Transaction-Level Verilog (TL-Verilog), in addition to Verilog and synthesizable SystemVerilog.
  
  **A look at the Makerchip Platform**
  
![Makerchip](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Makerchip.JPG)
  
For basic tutorial steps around the Makerchip platform, you can refer [here](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Documentation/Makerchip_IDE). For more details, visit the [reference](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#references) section. 

# TL-Verilog
Transaction-Level Verilog (TL-Verilog) is an emerging extension to SystemVerilog that supports a new design methodology, called transaction-level design. For this project, TL-Verilog has been chosed as the HDL of choice for the design. Projects on Makerchip can be completely designed using TL-Verilog. Transaction Level Verilog standard is an extension of Verilog which has various advantages like simpler syntax, shorter codes and easy pipelining. Tha main advantage of TL-Verilog over System Verilog is the amount of code reduction in designing even a simple model.

**_Below mentioned is a small comparision model between a design written in TL-Verilog and System Verilog_**

![TL-Verilog](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/TL-Verilog.JPG)

Timing abstract can be done in TL-Verilog. This model is specified for pipelines where the sequential elements are generated by tools from the pipelined specification. This allows for easy retiming without the risk of introduction of any functional bugs. More information on timing abstract in TL-Verilog can be found in the IEEE paper ["Timing-Abstract Circuit Design in Transaction-Level Verilog" by Steven Hoover"](https://ieeexplore.ieee.org/document/8119264).

To learn more about TL-Verilog visit the [reference](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/README.md#references) section.


# Implementation of the RISC-V CPU Core

This section will walk you through the different implementation steps followed to achieve the design of the complete RISC-V CPU core. 

**_Please note: Click on the diffrent logical blocks to get redirected to the code associated with that block. The code can be directly pasted on Makerchip.com and compiled to view the design._**

## A. Different logical blocks of a RISC-V CPU Core

**Block Diagram of a simple RISC-V CPU Core**

![RISC-v Block Diagram](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Example_RISCV__Block_Diagram.jpg)

The various logical blocks involved in the design of a basic RISC-V CPU Core are as follows: 

**[1. Program Counter(PC) and Next PC Logic](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Next_PC.v)**

Program Counter is a register that contains the address of the next instruction to be executed. It is a pointer into the instruction memory, for the instruction that we are going to execute next. Since the memory is byte addressable and each instruction length is 32 bits, the Program Counter adder adds 4 bytes to the address to point to the next address. 

For the initial state, before fetching the first ever instruction, there is a presence of a reset signal that will reset the PC value to 0. 

For branch instructions, we will have immediate instructions, for which we have to add an offset value to the PC. So for branch instructions, **NextPC = Incremented PC + Offset value.**

![Next PC](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Next_PC.JPG)

**[2. Instruction Fetch Logic](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Fetch%20Logic%20Part%202.v)**

Here the instruction memory is added to the program. In the Instruction Fetch logic, the instructions are fetched from the instruction memory amd passed to the Decode logic for computation. The instruction memory read address pointer is computed from the program counter and it outputs a 32 bit instruction. (instr\[31:0]) . In our case, the Makerchip shell provides us an instantiation to the instruction memory, which contains a test program to compute the sum of numbers from 1 to 9.

![Fetch](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Instruction_fetch.JPG)


**[3. Instruction Decode Logic](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Instruction%20Decode%20(2).v)**

In the Instruction Decode logic, all the instructions are decoded for the type of instruction, immediate instructions and the field type instructions. The opcode values are translated into instructions, and all the bit values are interpreted as per defined in the RISC-V ISA.

At first, the Instruction type is decoded using 5 bits of the instruction instr\[6:2]. The lower two bits from [1:0] are always equal to '11' for Base integer instructions.

![Instruction Type](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Immediate_Decode.png)

Next we calculate the 32 bit immediate value (imm\[31:0]) based on the instruction type. 

![Instruction Imm](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Field_Decode.png)

Other instruction fields like funct7, rs2, rs1, funct3, rd and opcode are extracted from the 32-bit instruction based on the instruction type. We collect all the bit values of funct7, funct3, opcode, rs2, rs1 and rd into a single vector and then decode the type of instruction. At this point valid condtions need to be defined for fields like rs1, rs2, funct3 and funct7 because they are unique to only certain instruction types. 

Only 8 operations are implemented at this stage namely BEQ, BNE, BLT, BGE, BLTU, BGEU, ADDI and ADD. The other operations from the RV32I Base Instruction Set will be implemented in the later steps. To see the complete list with the associated instruction fields click [here](https://github.com/aditikhare11/RISC-V-Core#pipelining-the-risc-v-core).

**Instruction Decode Output**

![Instruction Decode](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Instruction_%20Decode.JPG)

**[4. Register File Read](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Register%20File%20Read%202.v)**

Most of the instructions are arithmetic instructions or other instructions operating on the source registers. We do regitser file read of these source registers. The register file is provided in the shell to us by the macro instantiation //m4+rf (@1, @1) , which can be viewed under the "NAV-TLV" tab on Makerchip. This macro provides us with a register file that defines the interface signals. The register file of the CPU is capable of performing 2 reads in one cycle, of the source operands, and 1 write per cycle of the desination register.

The two source register fields defined as rs1 and rs2 are fed as inputs to the register file and the outputs are the contents of the source registers. The respective enable bits are set based on the valid conditions for rs1 and rs2 as defined in the previous step. Here, since we are accessing two register files at the same time, hence it is callled as 2-port register file.

**Output:**

![File Read](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/8.%20Register%20file%20read%202.JPG)

**[5. Arithmetic and Logic Unit(ALU)](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/ALU.v)**

The Arithmetic Logic Unit is the component that computes the result based on the selected operation. The ALU operates on the contents of the two registers coming out of the register file. It performs the respective arithmetic operation on the two registers, and finally the result of the ALU is written back to the memory using the register file write port. At this point, the code only supports ADD and ADDI operations to execute the test code. All operations will be added at a later step. 

**[6. Register File Write](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Register%20File%20Write.v)**

This step is essential to provide support for instructions that have a destination register (rd) where the output must be stored.  The result of the ALU is written back to the memory using the register_file_write port. The register_file_write_enable depends on the validity of the destination register "rd" . The register_file_write_index then takes the value stored in destination register, rd and loads it into the memory in the location as pointed by the register_file_write_index. Since, in RISC-V architecture, x0 register is a hardwired register, whic is always equal to zero, hence it must be made sure that no write operartion is performed on the x0 register. For this, an additional condition to ignore write operation, if the destinaton register is x0 , has been also added.

**Block diagram of a 2-port Register File, with 2 Read and 1 Write per cycle:**

![Register File](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Register_file_rd_wr.JPG)

**General Block Diagram of Register File and ALU:**

![Register File n ALU](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Register-file-and-alu.jpg)

**[7. Memory File](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_4/Codes)**

In addition to all of these, we also have a Memory file for which we have load and store instructions. The Store instruction is going to write a value fetched from the register file into the memory. The Load instruction is going to access the memory, take the value from it and them load it into the register file.

**[8. Branches Instructions](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Branch%20Instructions%202.v)**

The final step is to add support for branch instructions. In RISC-V ISA, branches are conditional in nature, which means based on a particular condtion, a specific branch is being taken. Moreover, a branch target pc has to be computed and based on the branch taken value, the pc will choose the new branch target pc when required. 

![Branch Instructions](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/11.%20Branch%20Instructions%202.JPG)


## B. Testing the core with a Testbench

Now that the implementation is complete, a simple testbench statement can be added to ensure whether the core is working correctly or not. 
The "passed" and "failed" signals are used to communicate with the Makerchip platform to control the simulation. It tells the platform whther the simulation passed without any errors, failed with a list of errors that can be inferred from the log files, and hence to stop the simulation, if failed. 

When the following line of code as mentioned below is added on Makerchip, the simulation will pass only if the value stored in r10 = sum of numbers from 1 to 9. 

```
*passed = |cpu/xreg[10]>>5$value == (1+2+3+4+5+6+7+8+9);
```

Here, in the instruction memory, register r10 has been used to store the sum value. The simulation passed message can be seen under the "Log" tab. We have used ">>5" (ahead by 5) operator, because instead of stopping the simulator immediately, we wait for a couple of more cycles so as to see a little bit more on the waveform.

![Simulation Passed](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Simulation_passed.JPG)

The ASM file to compute the sum of numbers from 1 to n can be viewed at the start, under the "Editor" tab.

![ASM_code](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/ASM_Code.JPG)

### The VIZ Graphic Visualizer

There was the presence of VIZ graphic visualizer, which is a special feature of the Makerchip platform and is not made public for all. This tool was allowed to all the students of the workshop, which proved to be a very useful tool which helped us analyse and debug our design in case of any functional errors.
As we can see from the diagram, the final sum output of numbers from 1 to 9 , ie equal to 45 has been stored in the register r10, and simultaneously written into memory address 16 (4 because of byte addressing).

![VIZ](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Visulization_tab.JPG)

[Click here](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Codes/Day_4_Final_Code.v) to view the complete RISC-V CPU Core design, without pipeline, with testbench included..  

## C. Pipelining the RISC-V CPU Core

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
At this point support for register file bypass is provided. All the instructions present in the RV32I base instruction set are implemented apart from FENCE, ECALL and EBREAK. All the instructions implemented are shown in the table below which was obtained from [here](riscv.org). 

**Complete RISC-V 32I Base Instruction Set**

![ISA](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/RV32I_base_instruction_set.png)



### Load/Store Instructions

Load/store and jump support is added along with the following two extra lines of code to test load and store.
```
m4_asm(SW, r0, r10, 10000)
m4_asm(LW, r17, r0, 10000)
```
![Load Store](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Load-Store.jpg)


## D. A Complete list of RISC-V Assembly Language

![RISCV Assembly Language](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/RISCV-Assembluy_Language.png)


## E. Final RISC-V CPU Core Implementation

**The snapshot of the final output can be seen below.**

![Final Output](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/final_output.jpg)


[Click here](https://myth2.makerchip.com/sandbox/0rkfAh4Z5/058hZyr) to view the final design on the  Makerchip Platform. Additionally you can also paste the code on the following [link](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day3_5/risc-v_solutions.tlv) directly on [makerchip.com](http://makerchip.com/) to view the complete project.


### Final Core Block Diagram

![Final Core](Day3_5/Final_Output_for_RISC-V_Implemented_CPU_Core.JPG)

### Code Comparision

The code required for the RISC-V Core written in TL-Verilog and System Verilog can be compared by selectinf the "Show Verilog" on the makerchip platform under the "E" tab. Upon visualization, a significant code reduction can be seen in the comparision chart. 

![Code_Comparision](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Documentation/Snaps/Code_Comparision.JPG)


# Future Work 

This project was done as a part of the [**RISC-V based MYTH (Microprocessor for You in Thirty Hours)**](https://www.vlsisystemdesign.com/riscv-based-myth/) workshop conducted by **Kunal Ghosh** and **Steve Hoover**. The current project implements almost the entire RV32I base instruction set. Future work involves modifying the current design to implement support for the remaining operations and also implementation of other standard extensions like M, F and D. 


# References

You can follow the below mentioned sites for more information regarding the particular topics.

- **RISC-V:** https://riscv.org/
- **Makerchip Platform:** https://makerchip.com/
- **TL-Verilog:** https://www.redwoodeda.com/tl-verilog  or http://tl-x.org/
- **Redwood EDA:** https://www.redwoodeda.com/
- **VLSI System Design:** https://www.vlsisystemdesign.com/

# Acknowlegedgements

- [Kunal Ghosh](https://github.com/kunalg123), Co-founder, VSD Corp. Pvt. Ltd.
- [Steve Hoover](https://github.com/stevehoover), Founder, Redwood EDA
- [Shivam Potdar](https://github.com/shivampotdar), GSoC 2020 @fossi-foundation
- [Vineet Jain](https://github.com/vineetjain07), GSoC 2020 @fossi-foundation

# Contact Information

- Ashutosh Sahoo, B.Tech Graduate , NIT Rourkela (Email: ashutosh0358.sahoo@gmail.com)
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. (Email: kunalghosh@gmail.com)
- Steve Hoover, Founder, Redwood EDA (Email: steve.hoover@redwoodeda.com)
