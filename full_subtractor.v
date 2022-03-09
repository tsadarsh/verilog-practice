`timescale 1ns/1ns

module full_subtractor(
	output diff, output bout,
	input a, input b, input bin
	);

	wire hs1_d, hs1_bo, hs2_bo;
	
	half_subtractor hs1(hs1_d, hs1_bo, a, b);
	half_subtractor hs2(diff, hs2_bo, hs1_d, bin);
	
	and(bout, hs2_bo, hs1_bo);
	
endmodule
