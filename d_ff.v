module d_ff(D, Q, clk, R);
input D, clk, R;
output reg Q;
always @(posedge clk) begin
	if (R)
		Q <= 0;
	else
		Q <= D;
end
