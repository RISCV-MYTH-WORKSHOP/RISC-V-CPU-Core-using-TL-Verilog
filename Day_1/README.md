# Day 1 : Introduction to RISC-V ISA and GNU compiler toolchain

Day 1 of the workshop included the following:
     
     1. Introduction to RISC-V basic keywords
     2. Labwork for RISC-V software toolchain
     3. Integer number representation
     4. Signed and unsigned arithmetic operations
     
    
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

   `$riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum_1_to_n.o sum_1_to_n.c`
   
    Command info: riscv64-unknown-elf-gcc => RISC-V compiler  , -O1 => Compiler option  , -mabi=lp64 => ABI of long int pointer  , -march=rv64i => architecture-64bit , -o => output ,  sum_1_to_n.o => object file , sum_1_to_n.c => C program file
    
2. In order to see what is the assembly code for the C program that we are running:

   `$riscv64-unknown-elf-objdump -d sum_1_to_n.o | less
   
   ![] (https://github.com/RISCV-MYTH-WORKSHOP/risc-v-myth-workshop-august-Redbeard358/blob/master/Day_1/Command_Snaps/objdump_command.JPG)

 

