
`timescale 1ns/100ps
module majority(
    input a,
    input b,
    input c,
    output x);
  
  wire b_c, and_out, bc;
  
  and (and_out,a,b_c);
  and (bc,c,b);
  or  (b_c,b,c);
  or  (x,and_out,bc);
endmodule