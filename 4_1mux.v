module mux4_1(S, Y, in0, in1, in2, in3);
input [1:0] S;
output Y;
input in0, in1, in2, in3;
assign Y = (S[0] == 0) ? ((S[1] == 0) ? in0 : in2) : ((S[1] == 0) ? in1 : in3);
endmodule
