# Day 4 Basic RISC-V CPU micro-architecture and Implementation

Day 4 of the workshop included the following:

    1. Microarchitecture and testbench for a simple RISC-V CPU
    2. Fetch, decode, and execute logic
    3. RISC-V control logic

After building up strong basics built in TL-Verilog and digital design, and getting completely familiar with the Makerchip Platform, it was time to move on to the core aspect of the workshop, i.e. to build a RISC V core. On this day , the following basic blocks were implemented :
  
  - Program Counter (PC)
  - Imem-Rd ( Instruction Memory)
  - Instruction Decoder
  - Register File Read
  - Arithmatic Logic Unit (ALU)
  - Register File Write
  - Branch
  
Thus the instruction set architecture of base integer instructions, next_pc logic, the register file, ALU, branch instructions, etc. and eventually the CPU core was built and tested, using appropriate testbench logic, and assembly code developed on Day 2, by the end of the day. The codes can be found [here](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/tree/master/Day_4/Codes).

## Lab Exercises: 

### 1. Next PC Logic

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/1.%20Next%20PC.JPG)

### 2. Instruction Fetch Logic

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/2.%20Instruction%20Fetch%20Logic.JPG)

### 3. Instruction Decode

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/6.%20Instruction%20Decode(2).JPG)

### 4. Register File Read 

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/8.%20Register%20file%20read%202.JPG)

### 5. Arithmetic and Logic Unit(ALU)

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/9.%20ALU.JPG)

### 6. Register File Write

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/10.%20Register%20file%20write.JPG)

### 7. Branch Instructions 

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/11.%20Branch%20Instructions%202.JPG)

### 8. Final Day_4 Output: RISCV Core

The final RISC-V CPU core (without pipelining) has been completely implemented.

![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_4/Output%20Snaps/12.%20Testbench.JPG)


