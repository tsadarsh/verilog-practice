`timescale 1ns/1ns

module four_bit_multiplier (
	output wire [7:0] p,
	input wire [3:0] a,
	input wire [3:0] b
);

	wire [3:0] s0;
	wire [4:0] s1;
	wire [5:0] s2;
	wire [6:0] s3;
	
	and(s0[0], a[0], b[0]);
	and(s0[1], a[1], b[0]);
	and(s0[2], a[2], b[0]);
	and(s0[3], a[3], b[0]);
	
	and(s1[1], a[0], b[1]);
	and(s1[2], a[1], b[1]);
	and(s1[3], a[2], b[1]);
	and(s1[4], a[3], b[1]);

	and(s2[2], a[0], b[2]);
	and(s2[3], a[1], b[2]);
	and(s2[4], a[2], b[2]);
	and(s2[5], a[3], b[2]);
	
	and(s3[3], a[0], b[3]);
	and(s3[4], a[1], b[3]);
	and(s3[5], a[2], b[3]);
	and(s3[6], a[3], b[3]);
	
endmodule