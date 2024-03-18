module full_adder(A, B, Cin, Cout, S);
input A, B, Cin;
output Cout, S;
assign S = A^B^Cin;
assign Cout = (A&B) | (B&Cin) | (Cin&A);
endmodule

module carry_4(A, B, Cin, Cout, S);
input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;
wire c1, c2, c3;
full_adder a0(A[0], B[0], Cin, c1, S[0]);
full_adder a1(A[1], B[1], c1, c2, S[1]);
full_adder a2(A[2], B[2], c2, c3, S[2]);
full_adder a3(A[3], B[3], c3, Cout, S[3]);
endmodule
