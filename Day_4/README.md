# Day 4 RISCV CPU Core Implementation.
  Due to the strong basics built in TL-Verilog and digital design in the previous day , The core aspect of this workshop to build a RISC V core went smoothly for   me. On this day , a plan was implemented to build the following :
  
  - Program Counter (PC)
  - Imem-Rd ( Instruction Memory)
  - Instruction Decoder
  - Register File Read
  - Arithmatic Logic Unit (ALU)
  - Register File Write
  - Branch
  
  Thus the instruction set architecture of base integer instructions, The register file, branching,etc. and eventually the CPU core was built and tested(using appropriate testbench logic, and assembly code developed on Day 2) at the end of the day ,in similar progressive fashion like the previous day.The code can be found [here](https://github.com/iamrk-vlsi/RISC-V-MYTH-Workshop/tree/master/DAY4/MP_1_cycle.tlv).

   **Makerchip IDE**
   ![](DAY4/Day4_makerchip.png)

   **RISC-V CORE**
   ![](DAY4/RISCV_CPU_CORE_1cycle.png)	
