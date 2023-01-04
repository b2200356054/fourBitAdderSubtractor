module four_bit_rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Cout
);

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire[2:0] Cout1;
    
    //FOUR BIT RCA IS CREATED WITH 4 ONE BIT FULL ADDERS

    full_adder fa1(A[0], B[0], Cin, S[0], Cout1[0]);
    full_adder fa2(A[1], B[1], Cout1[0], S[1], Cout1[1]);
    full_adder fa3(A[2], B[2], Cout1[1], S[2], Cout1[2]);
    full_adder fa4(A[3], B[3], Cout1[2], S[3], Cout);

endmodule