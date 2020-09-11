## What is TL-Verilog?

Transaction-Level Verilog (TL-Verilog) is an emerging extension to SystemVerilog that supports a new design methodology, called transaction-level design. A transaction, in this methodology, is an entity that moves through structures like pipelines, arbiters, and queues, A transaction might be a machine instruction, a flit of a packet, or a memory read/write. Transaction logic, like packet header decode or instruction execution, that operates on the transaction can be placed anywhere along the transaction's flow. Tools produce the logic to carry signals through their flows to stitch the transaction logic.

## Why TL-Verilog?

- Significant amount of code reduction. Almost 60-70%  of the code for a design is reduced as compared to System Verilog.

- Designing of Logic would become quite fun. People no longer have to sit for hours typing in long codes for even small designs.

- Less code means less number of bugs, thus less time to process the design, and ultimately speeds up the entire design process. 

- Engineers and students can learn TL-Verilog in a matter of hours.

- It would no longer take a team of 100-200 people for years to create a next-generation ASIC design.

- No need of prior signal declaration unlike RTL-Verilog. The simulator automatically recogizes the signals and assiigns random values if no assignement has been made. 

- Transacion Lvel Verilog gives us the ability to model the **Timing Abstract Representation** in a better way.

- Concept of **Pipelining** has been very easily simplified with the use of TL-Verilog constructs. In order to insert or change pipelining stages in the design , we only need to modilt the value of the pipelining stages. (@0, @1, @2 ...).

- Retimimg in System Verilog is very much bug prone. With TL-verilog, retimimg logic has been simplified with the help of pipelining concept.

- Concept of **Validity** is one of the major advantage of TL-Verilog over other HDLs. This concept of validity tells the user when the values of the signals are valid and when they are not, which is also reflected in the timing wwaveform. This helps the designer to have a clearer view of what processes are running at what point of the design cycle.

- TL-Verilog can produce fine-grained clock gatning signals.

- Designing of flipflops explicitly is not required. Flipflops are automatically inferred in the process. 

