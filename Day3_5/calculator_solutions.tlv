\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   |calc
      @1
         $reset = *reset;
                     
         $val1 [31:0] = >>2$out [31:0];
         $val2 [31:0] = $rand2[3:0];
   
         $sum [31:0] = $val1 + $val2;
         $diff[31:0] = $val1 - $val2;
         $prod[31:0] = $val1 * $val2;
         $quot[31:0] = $val1 / $val2;
         
      ?$vaild 
         @2   
            $valid [31:0] = $reset ? 0 : >>2$valid + 1 ;
            $reset_to_mux = $reset || !($valid);
                  
            $out [31:0] = $reset_to_mux ? 0 : 
                          $valid ? ($op[0] ? $sum : ($op[1] ? $diff : ($op[2] ? $prod : $quot ))) :
                          >>2$out;
            
                 
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
