module full_adder(A, B, Cin, Cout, S);
input A, B, Cin;
output Cout, S;
assign S = A^B^Cin;
assign Cout = (A&B) | (B&Cin) | (Cin&A);
endmodule

module half_adder(A, B, C, S);
input A, B;
output C, S;
assign S = A^B;
assign C = A&B;
endmodule

module adder_4bit(A, B, Cout, S);
input [3:0] A, B;
output Cout;
output [3:0] S;
wire c1, c2, c3;
half_adder a0(A[0], B[0], c1, S[0]);
full_adder a1(A[1], B[1], c1, c2, S[1]);
full_adder a2(A[2], B[2], c2, c3, S[2]);
full_adder a3(A[3], B[3], c3, Cout, S[3]);
endmodule
