# Day 3: Digital Logic with TL-Verilog and Makerchip

Day 3 of the workshop included the following:

    1. Combinational logic in TL-Verilog using Makerchip
    2. Sequential and pipelined logic
    3. Validity
    4. Hierarchy



An introduction to TL-Verilog was done and we implemented basic combinational and sequential logic using the same.This day finally ended with an implementation of a sequential cyclic calculator. Makerchip IDE which is an open source tool developed by Redwood EDA was utilised.
  
  TL-Verilog is an extension for System Verilog, moreover it acts as an higher level abstraction for System verilog which makes HDL implementation very easy and error free. Here we deal the design at a transaction level assuming the design as a pipeline, where inputs would be provided and output will be generated at the end of the pipeline. 
  
  **Advantages** : 
   - Code reduction , and thus less chances of being bug prone.
   - In pipelining ,the flip flops,registers and other staged signals are implied from the context. 
   - It is very easy to stage different sections without impacting the behaviour of the logic.
   - Validity feature which provides easier debugging, cleaner design, automated clock gating and better error checking capabilities.
    
  ## Lab: 1 Cycle Sequential Calculator with Validity
   There were exaustive number of labs for each and every lesson and it indeed was a hectic day, but the end result was an implementation of a fully working 1 cycle sequential calculator, which was built step by step as we progressed through the lessons.The code can be found [here](https://github.com/iamrk-vlsi/RISC-V-MYTH-Workshop/tree/master/DAY3/cyclic_calc.tlv).

   **Makerchip IDE** 
   ![](DAY3/day3_makerchip.png)

   **Note** As seen above, apart from the waveforms, The VIZ graphic visualizer was a very helpful tool in Makerchip which helped us analyse and debug our design in case of any functional errors.
  
   **1 Cycle Calculator with Validity**
    ![](DAY3/Day3_Diagram.png)	
   Overall this was a hectic day, as it took time for me to learn and implement these new concepts, as well as get used to the tools.The   final of Day-3 forms the basis for ALU of the RISC-V core.
