`timescale 1ns/1ns

module four_bit_subtractor(
	output reg [4:0] d,
	input reg [3:0] a,
	input reg [3:0] b
	);

	wire b0, b1, b2, b3;
	wire d0, d1, d2, d3, d4;

	half_subtractor hs0 (d0, b0, a[0], b[0]);
	full_subtractor fs1 (d1, b1, a[1], b[1], b1);
	full_subtractor fs2 (d2, b2, a[2], b[2], b2);
	full_subtractor fs3 (d3, b3, a[3], b[3], b3);
	
	always @* d = {b3, d3, d2, d1, d0};
endmodule 
