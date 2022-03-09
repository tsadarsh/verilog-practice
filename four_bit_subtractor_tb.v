`timescale 1ns/1ns

module four_bit_subtractor_tb();
	reg [3:0] a;
	reg [3:0] b;
	wire [4:0] c;

	four_bit_subtractor fbs(c, a, b);		

	initial begin
		$dumpfile("test.vcd");
		$dumpvars(1, four_bit_subtractor_tb);
		a = 4'b0001;
		b = 4'b0000;
		#10
		a = 4'b0011;
		b = 4'b0001;
		#10
		a = 4'b0011;
		b = 4'b0011;
		#10
		a = 4'b0111;
		b = 4'b0011;
		#10
		a = 4'b0111;
		b = 4'b0111;
		#10
		a = 4'b1111;
		b = 4'b0111;
		#10
		a = 4'b1111;
		b = 4'b1111;
		#10
		a = 4'b1111;
		b = 4'b1111;
		#10
		a = 4'b0000;
		b = 4'b0001;
		#10
		$finish;
	end
endmodule
