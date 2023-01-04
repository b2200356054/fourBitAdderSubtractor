`timescale 1 ns/10 ps
module full_adder_tb;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
reg A, B, Cin;
wire S, Cout;

full_adder uut(A, B, Cin, S, Cout);

initial begin

    $dumpfile("full_adder_tb.vcd");
    $dumpvars(0, full_adder_tb);
        A = 0; B = 0; Cin = 0;
        #20; 
        A = 0; B = 0; Cin = 1;
        #20; 
        A = 0; B = 1; Cin = 0;
        #20; 
        A = 0; B = 1; Cin = 1;
        #20; 
        A = 1; B = 0; Cin = 0;
        #20; 
        A = 1; B = 0; Cin = 1;
        #20; 
        A = 1; B = 1; Cin = 0;
        #20;
        A = 1; B = 1; Cin = 1;
        #20;
    $display("Test is completed.");
end


endmodule