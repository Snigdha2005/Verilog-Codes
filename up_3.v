module up_counter3(clk, R, L, I, Q);
input clk;
input R, L;
input [2:0] I;
output reg [2:0] Q;
always @(posedge clk or posedge L) begin
	if (R == 0)
		Q <= 0;
	else if (L)
		Q <= I;
	else
		Q <= Q + 3'b001;
end
endmodule
