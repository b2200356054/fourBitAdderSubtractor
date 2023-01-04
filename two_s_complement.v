module two_s_complement(In,Out);
    input [3:0] In;
    output [3:0] Out;
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    wire Cin[3:0];
    //FOUR BIT TWO'S COMPLEMENT IS MADE OF 4 ONE BIT TWOSCOMP
    one_bit two1(In[0], 1'b1, 1'b0, Out[0], Cin[0]);
    one_bit two2(In[1], 1'b0, Cin[0], Out[1], Cin[1]);
    one_bit two3(In[2], 1'b0, Cin[1], Out[2], Cin[2]);
    one_bit two4(In[3], 1'b0, Cin[2], Out[3], Cin[3]);
endmodule  

//ONE BIT IMPLEMENTATION OF TWOSCOMPLEMENT
module one_bit(A, B, Cin, Out1, Cout);
    input A, B, Cin;
    output Out1, Cout;

    assign Out1 = ((~A) ^ B ^ Cin);
    assign Cout = (~A & B) ^ ((~A ^ B) & Cin);
endmodule
