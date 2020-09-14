# Day 5: Complete Pipelined RISC-V CPU micro-architecture

Day 5 of the workshop included the following:

     1. Pipelining the CPU
     2. Load and store instructions and memory
     3. Completing the RISC-V CPU
     4. Wrap-up and future opportunities
     
     
Finally, the RISC-V core was developed on Day_4. Now its time for implementing the pipelining technique for the core, and some additonal instructions. The above architecture is pipelined as follows :

 - A 3 cycle RISC V pipelined core, with all the base integer instruction sets was developed.
 - For Load and store a Data memory element was added with neccessary instruction decoding logic.
 - Register Bypass and Squashing techniques were also incorporated to prevent Read followed by write and branchinghazards, arised due to pipelining.
 - Testing of the pipeline design was done in same manner with Load and store incorporated in asm code.
 - Additionally Incorporation of Jump feature (JAL and JALR instructions) was also done.
 
 The final code can be found [here.](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_5/RISC-V_CPU_CORE_Final_Code.tlv)
 
 ## Final Day_5 Output
 
 ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_5/Final_output.jpg)
 
 ## Final Implemention of RISC-V CPU Core

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_5/Final_Output_for_RISC-V_Implemented_CPU_Core.JPG)
