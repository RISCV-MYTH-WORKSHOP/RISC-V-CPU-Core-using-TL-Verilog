# Day 3: Digital Logic with TL-Verilog and Makerchip

Day 3 of the workshop included the following:

    1. Combinational logic in TL-Verilog using Makerchip
    2. Sequential and pipelined logic
    3. Validity
    4. Hierarchy


An introduction to TL-Verilog was done and we implemented basic combinational and sequential logic using the same.This day finally ended with an implementation of a sequential cyclic calculator. For this, Makerchip IDE, which is an open source tool developed by Redwood EDA has been utilised.
  
  TL-Verilog is an extension for System Verilog, moreover it acts as an higher level abstraction for System verilog which makes HDL implementation very easy and error free. Here we deal the design at a transaction level assuming the design as a pipeline, where inputs would be provided and output will be generated at the end of the pipeline. 
  
  **Advantages** : 
   - Code reduction , and thus less chances of being bug prone.
   - In pipelining ,the flip flops,registers and other staged signals are implied from the context. 
   - It is very easy to stage different sections without impacting the behaviour of the logic.
   - Validity feature which provides easier debugging, cleaner design, automated clock gating and better error checking capabilities.
    
  ## Lab Exercises:
  
  ### 1. Combinational Logic Example: Full Adder
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Full_Adder_Ckt.JPG)
  
  
  
  ### 2. Combinational Calculator
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Combinational_calculator.JPG)
  
  
  
  ### 3. Sequential Logic Example: Fibonacci Series
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Fibonacci_sequence_using_pipeline.JPG)
  
  
  
  ### 4. Sequential Calculator
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Sequential_calculator.JPG)
  
  

  ### 5. A Simple Pipeline through Pythagorous Theorem example
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Pythagorean_example_validity_check2.JPG)
  
  
  
  ### 6. Example of Implementation of Pipelining throuh TL-Verilog
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Implement_basic_pipeline.JPG)
  
  
      
  ### 7. 2-Cycle Calculator
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/2-cycle_calculator.JPG)
  
  
  
  ### 8. Example : Distance Acculmulator
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/Distance_accumulator.JPG)
  
  
  
  ### 9. 2-Cycle Calculator with validity
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/2-cycle%20calculator%20with%20validity%20final%20output.JPG)
  
   **Note** As seen above, apart from the waveforms, The VIZ graphic visualizer was a very helpful tool in Makerchip which helped us analyse and debug our design in case of any functional errors.
  
  
  
  ### 10. Calculator with Single Value Memory
  
  ![](https://github.com/RISCV-MYTH-WORKSHOP/RISC-V-CPU-Core-using-TL-Verilog/blob/master/Day_3/Lab_outputs/2-cycle%20calculator%20with%20single%20value%20memory.JPG)
  
  
