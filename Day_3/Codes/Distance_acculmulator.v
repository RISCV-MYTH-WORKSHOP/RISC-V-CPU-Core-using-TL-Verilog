\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)

   `include "sqrt32.v" ;

\TLV
   $reset = *reset;

   |calc
      @1
         $reset = *reset;
            
      ?$vaild      
         @1
            $aa_seq[31:0] = $aa[3:0] * $aa;
            $bb_seq[31:0] = $bb[3:0] * $bb;;
      
         @2
            $cc_seq[31:0] = $aa_seq + $bb_seq;;
      
         @3
            $cc[31:0] = sqrt($cc_seq);
            
      @4
         $total_distance[63:0] = 
            $reset ? '0 :
            $valid ? >>1$total_distance + $cc :
                     >>1$total_distance;
         
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
