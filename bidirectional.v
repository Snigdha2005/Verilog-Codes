module bidirectional(E, A, B);
input E;
inout A, B;
bufif1 b1(B, A, E);
bufif0 b2(A, B, E);
endmodule
