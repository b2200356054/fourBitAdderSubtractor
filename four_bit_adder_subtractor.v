module four_bit_adder_subtractor(A, B, subtract, Result, Cout);
    input [3:0] A;
    input [3:0] B;
    input subtract;
    output [3:0] Result;
    output Cout;

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

    wire[3:0] b_s_complement;
    wire[3:0] muxOut;

    two_s_complement twos1(B, b_s_complement);
    four_bit_2x1_mux mux1(b_s_complement, B, subtract, muxOut);
    four_bit_rca rippleadder1(A, muxOut, 1'b0, Result, Cout);

endmodule
