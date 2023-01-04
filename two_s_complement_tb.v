`timescale 1ns/10ps
module two_s_complement_tb;

   // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
reg[3:0] In;
wire[3:0] Out;
two_s_complement uut(In, Out);
integer i = 4'b0000;
initial begin
  
   $dumpfile("two_s_complement_tb.vcd");
   $dumpvars(0, two_s_complement_tb);
   for (i = 0; i <= 4'b1111; i = i+1) begin
      In = i;
      #10;
   end
end
endmodule 
