module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
);

    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!

    //FULL ADDERS ARE MADE OF 2 HALF ADDERS

    wire w1, w2, w3;
    half_adder HA1 (A, B, w2, w1);
    half_adder HA2 (w1, Cin, w3, S);
    assign Cout = w3 | w2;

endmodule


//MODULE INSTANTIATION FOR HALF ADDER
module half_adder(A, B , Carry, Sum);
    input A, B;
    output Carry, Sum;
    
    assign Sum = A ^ B;
    assign Carry = A & B;
endmodule