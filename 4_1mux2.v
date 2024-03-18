module mux4_1(S, Y, in0, in1, in2, in3);
input [1:0] S;
input in0, in1, in2, in3;
output reg Y;
always @* begin
case (S)
	2'b00: Y = in0;
	2'b01: Y = in1;
	2'b10: Y = in2;
	2'b11: Y = in3;
	default : Y = 1'b0;
endcase
end
endmodule
