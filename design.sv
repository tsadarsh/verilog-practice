`timescale 1ns/1ns

module my_xor(output myout, input ina, input inb);
  wire x, y, not_ina, not_inb;
  and(x, ina, not_inb);
  and(y, not_ina, inb);
  or(myout, x, y);
  not(not_ina, ina);
  not(not_inb, inb);
endmodule