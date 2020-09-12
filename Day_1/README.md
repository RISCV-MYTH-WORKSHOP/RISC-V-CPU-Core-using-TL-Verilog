# Day 1 : Introduction to RISC-V ISA and GNU compiler toolchain

## DAY 1 Contents
Day 1 of the workshop included the following:

     1. Introduction to RISC-V basic keywords
     2. Labwork for RISC-V software toolchain
     3. Integer number representation
     4. Signed and unsigned arithmetic operations
     
 
This was just a warm up of the extensive work we would be doing in the further days. It made us familiar with the VSD-IAT platform and using the lab instances . 
  A brief overview of how the higher level languages are converted to assembly and then into machine/binary format , in a hierarchical level was given. Then we     were introduced to the various types of instructions which are as follows:
  
  - **RV64I** or RV32I Base integer instructions: 64 and 32 bit data instructions respectively
  - **RV64M** i.e Multiply extension
  - **RV64IM** : Includes base and multiple extension.
  - **RV64F** and **RV64D** : Floating point and Double extenstion. 
  
  Additionally we learnt about the integer number representation and their maximum and minimum ranges.
  
  - Integer: 
    - Word i.e. 32 bits.
    - Double word i.e 64 bits
    - RV64 has range 0 to (2<sup>64</sup> - 1)
    
  - Negative i.e signed numbers:
    - Range is - 2<sup>63</sup> to (2<sup>63</sup> - 1)
    
    The instructions which work on these numbers are called Base Integer Instruction **RV64I**.
  
## Lab 1 : C program of Sum 1 to n  numbers.
  A basic C program to calculate sum of natural numbers upto a limit provided by the user. The code can be found [here](https://github.com/iamrk-vlsi/RISC-V-MYTH-Workshop/tree/master/DAY1/sum1to9.c) 
  - Command used to compile the C program is `gcc <filename.c>` or `gcc -o <binary file name> <filename.c>`and to run we use `./a.out` or `./<binary file name>` 

## Lab 2 : C program of Sum 1 to n  numbers, RISC-V toolchain.
  The same C program is now compiled using RISC-V toolchain. 
  - Command used to compile the C program is `riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c` or 
    `riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c`.
  - To view to disassemble and view the object file in readable format,we use `riscv64-unknown-elf-objdump -d sum1ton.o` command.
  - To run we use spike which is a RISC-V simulator, following is the command `spike pk sum1ton.o`.
  - Spike has a debugging feature too which can be used to run it in steps, following is the command `spike -d pk sum1ton.o`.
  
  **Output on console**
  ![](DAY1/day_1_lab1.png)

## Lab 3 : Max and Min number representations. 
  A C program is implemented to  show the maximum and minimum sizes for RV64I. The code can be found [here](https://github.com/iamrk-vlsi/RISC-V-MYTH-Workshop/tree/master/DAY1/unsignedHighest.c) 
  - Commands used are same as Lab 2

  **Output on console**
  ![](DAY1/day1_lab2.png) 
 

# Lab Exercises
## List of commands
### For compiling using GNU toolchain

1. Open a file named sum_1_to_n. using leafpad editor.  
     `$leafpad sum_1_to_n.c`   
2. Write your C code for sum of numbers from 1 to  n (say n =9).
3. Compile using GNU compiler.   
    ` $gcc sum_1_to_n.c`   
4. Run the compiled object file (Default object file formed with the name a.out).
     `$./a/out`


### For compiling using RISC-V simulator

1. Since we have previously created our sum_1_to_n.c program file, now to run the same program using RISC-V simulator:

   `$riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum_1_to_n.o sum_1_to_n.c`
   
    **Command info:** riscv64-unknown-elf-gcc => RISC-V compiler  , -Ofast => Compiler option (Various compiler options like -O1, -o1, -Ofast)  , -mabi=lp64 => ABI of long int pointer  , -march=rv64i => architecture-64bit , -o => output ,  sum_1_to_n.o => object file , sum_1_to_n.c => C program file
    
![](Command_Snaps/riscv_gcc_Ofast_command.JPG)    
    
2. In order to see what is the assembly code for the C program that we are running, we run the follwing in a new tab in the terminal:

   `$riscv64-unknown-elf-objdump -d sum_1_to_n.o | less`
   
![](Command_Snaps/objdump_command.JPG)

3. When the objdump file opens, type **/main** (since we are interested in the main program of the code, and press n to go to next instantiation of main in the file).

![](Output_Snaps/objdump_main_using_Ofast.JPG)

4. For running the object file compiled by RISC-V compiler, we are using the spike simulator.
   `$spike pk sum_1_to_n.o`
   
![](Command_Snaps/spike_command.JPG)


### For debugging using RISC-V simulator

1. In order to debug all the assembly set instructions, we do it with the spike debugger. 

   `$spike -d pk sum_1_to_n.o`
   
2. In a parallel new tab in the terminal, we open the objdump file , and look out for the address location of the pc (say for main program or any part of the program that we want).

3. After the spike debugger opens, type :

   `:until pc 0 100b0` , where 100b0 is the address location from where we start debugging.
   
   `:reg 0 a0`  , To see the contents of the register a0.
   
   Press enter to execute the next set of assembly code instructions.
   
![](Output_Snaps/spike_debugging_sum_of_n.JPG)
   
   
## Final Output Results for Day_1 of the Workshop

1. Sum of numbers from 1 to n (n=9).

![](Output_Snaps/Ouput_Sum_using_riscv_compiler.JPG)

2. To find the maximum and minimumm number that can be represented using 64-bit unnsigned and signed integer number reperesentation.

![](Output_Snaps/Output_Max_Min_no_using_riscv_n_spike_compiler.JPG)

