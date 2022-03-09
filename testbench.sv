`timescale 1ns/1ns

module my_xor_TB();
  wire a_xor_b;
  reg a, b;
  my_xor XOR1(a_xor_b, a, b);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1, my_xor_TB);
    a=0;
    b=0;
    #10
    a=0;
    b=1;
    #10
    a=1;
    b=1;
    #10
    a=1;
    b=0;
    #10
    $finish;
  end
endmodule
