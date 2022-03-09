`timescale 1ns/100ps

module four_bit_adder(
	output reg [4:0] c,
	input reg [3:0] a,
	input reg [3:0] b
	);

	wire cout0, cout1, cout2, cout3;
	wire s0, s1, s2, s3;

	half_adder adder0 (cout0, s0, a[0], b[0]);
	full_adder adder1 (cout1, s1, a[1], b[1], cout0);
	full_adder adder2 (cout2, s2, a[2], b[2], cout1);
	full_adder adder3 (cout3, s3, a[3], b[3], cout2);

	always @* c = {s0, s1, s2, s3, cout3};

endmodule
