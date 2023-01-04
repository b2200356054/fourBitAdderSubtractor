`timescale 1ns/1ps
module four_bit_adder_subtractor_tb;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    
    reg[3:0] A, B;
    reg subtract;
    wire[3:0] Result;
    wire Cout;

    integer i,j;
    four_bit_adder_subtractor uut(A, B, subtract, Result, Cout);

initial begin
    
    i = 4'b0000;
    j = 4'b0000;

    $dumpfile("four_bit_adder_subtractor.vcd");
    $dumpvars(0, four_bit_adder_subtractor_tb);


    //FOR SUM, SUBTRACT = 0
    subtract = 0;
    i = 4'b0000;
    for (i = 0; i <= 4'b1111; i = i+1) begin
        A = i;
        j = 4'b0000;
        for (j = 0; j <= 4'b1111; j = j+1) begin
        B = j;
        #10;
        end
        
        
    end

    //FOR SUBTRACT, SUBTRACT = 1
    subtract = 1;
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
