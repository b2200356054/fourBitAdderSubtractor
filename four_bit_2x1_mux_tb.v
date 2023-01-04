`timescale 1ns/10ps
module four_bit_2x1_mux_tb;
	
	// Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

reg[3:0] In_1, In_0;
reg Select;
wire[3:0] Out;
four_bit_2x1_mux uut(In_1, In_0, Select, Out);
integer i,j;
initial begin
	$dumpfile("four_bit_2x1_mux_tb.vcd");
  	$dumpvars(0, four_bit_2x1_mux_tb);
	//FOR SELECTION 0 (IN 0 IS SELECTED)
	i = 4'b0000;
	Select = 1'b0;
	for (i = 4'b0000; i <= 4'b1111; i = i+1) begin
		j = 4'b0000;
		In_1 = i;
		for (j = 4'b0000; j <= 4'b1111; j = j+1) begin
			In_0 = j;
			#10;
		end
	end
	//FOR SELECTION 1 (IN 1 IS SELECTED)
	i = 4'b0000;
	Select = 1'b1;
	for (i = 4'b0000; i <= 4'b1111; i = i+1) begin
		j = 4'b0000;
		In_1 = i;
		for (j = 4'b0000; j <= 4'b1111; j = j+1) begin
			In_0 = j;
			#10;
		end
	end
	$display("Test is complete.");
	
end	

endmodule
