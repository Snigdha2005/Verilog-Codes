module half_adder(A, B, C, S);
input A, B;
output C, S;
xor x1(S, A, B);
and x2(C, A, B);
endmodule

module full_adder(A, B, Cin, Cout, S);
input A, B, Cin;
output Cout, S;
inout c1, c2, c3;

half_adder ha1(A, B, c1, c2);
half_adder ha2(c2, Cin, c3, S);
or a1(Cout, c1, c3);
endmodule
