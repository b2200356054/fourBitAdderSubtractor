module four_bit_2x1_mux(In_1, In_0, Select, Out);
	input [3:0] In_1;
	input [3:0] In_0;
	input Select;
	output [3:0] Out;
	
	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

	one_bit_2x1_mux mux1(In_1[0], In_0[0], Select, Out[0]);
	one_bit_2x1_mux mux2(In_1[1], In_0[1], Select, Out[1]);
	one_bit_2x1_mux mux3(In_1[2], In_0[2], Select, Out[2]);
	one_bit_2x1_mux mux4(In_1[3], In_0[3], Select, Out[3]);

endmodule
//JUST ONE BIT 2X1 MUX FOR 8x4 MUX BECAUSE 8X4 MUX MEANS 4x(2x1 Mux)
module one_bit_2x1_mux(In_1, In_0, Select, Out);
	input In_1, In_0, Select;
	output Out;
	wire WireTop, WireBot;

	assign WireTop = (In_1 & Select);
	assign WireBot = (In_0 & ~Select);

	assign Out = (WireTop | WireBot);
	
endmodule