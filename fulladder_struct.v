module fulladder_struct(
    input X1, X2, Cin,
    output S, Cout
);

wire w1, w2, w3;
xor u1(w1, X1, X2);
and u2(w2, X1, X2);
and u3(w3, w1, Cin);
or u4(Cout, w2, a3);
xor u5(S,w1,Cin);

endmodule
