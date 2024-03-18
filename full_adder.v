module full_adder(A, B, Cin, Cout, S);
  input A, B, Cin;
  output Cout, S;
  wire c1, c2, c3;
  xor x1(S, A, B, Cin);
  and a1(c1, A, B);
  and a2(c2, B, Cin);
  and a3(c3, Cin, A);
  or p(Cout, c1, c2, c3);
endmodule
