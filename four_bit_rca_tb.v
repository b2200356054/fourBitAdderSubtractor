`timescale 1 ns/10 ps
module four_bit_rca_tb;

  // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
  reg[3:0] A, B;
  reg Cin;
  wire[3:0] S;
  wire Cout;
  integer i, j;
  four_bit_rca uut(A, B, Cin, S, Cout);


  


initial begin

  i = 4'b0000;
  j = 4'b0000;

  $dumpfile("four_bit_rca_tb.vcd");
  $dumpvars(0, four_bit_rca_tb);


  //IF CARRY IN = 1
  Cin = 1;
  i = 4'b0000;
  for (i = 0; i <= 4'b1111; i = i+1) begin
    A = i;
      j = 4'b0000;
      for (j = 0; j <= 4'b1111; j = j+1) begin
      B = j;
      #10;
      end
    
      
  end


  //CARRY IN = 0
  Cin = 0;
  i = 4'b0000;
  for (i = 0; i <= 4'b1111; i = i+1) begin
    A = i;
      j = 4'b0000;
      for (j = 0; j <= 4'b1111; j = j+1) begin
      B = j;
      #10;
      end
      
      
  end
  $display("Test is completed.");

end
endmodule