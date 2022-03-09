`timescale 1ns/1ns

module half_subtractor (
	output d,
	output bo,
	input a,
	input b
);

	wire not_a;
	
	not(not_a, a);
	xor(d, a, b);
	and(bo, not_a, b);

endmodule
