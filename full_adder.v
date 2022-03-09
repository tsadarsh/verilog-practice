`timescale 1ns/100ps

module full_adder(
	output cout,
	output s,
	input a,
	input b,
	input cin
	);

	wire cout_ha1, s_ha1, cout_ha2, s_ha2;
	half_adder ha1(cout_ha1, s_ha1, a, b);
	half_adder ha2(cout_ha2, s_ha2, s_ha1, cin);

	or(cout, cout_ha1, cout_ha2);
	assign s = s_ha2;

endmodule
