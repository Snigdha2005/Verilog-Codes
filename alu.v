module alu(A, B, Y, opt);
input [7:0] A, B;
output reg [7:0] Y;
input [3:0] opt;
always @(*) begin
	case (opt)
		4'b0001: Y = A || B;
		4'b0010: Y = A && B;
		4'b0011: Y = A % B;
		4'b0100: Y = A ** B;
		4'b0101: Y = !A && !B;
		4'b0110: Y = A - B;
		4'b0111: Y = A + B;
		4'b1000: Y = A * B;
		4'b1001: Y = A / B;
		default :  Y = 1'b0;
	endcase
end
endmodule

