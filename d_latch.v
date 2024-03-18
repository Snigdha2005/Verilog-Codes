module d_latch(D, Q, clk);
input D;
input clk;
output reg Q;
always @(clk == 1)
begin
	Q <= D;
end
endmodule
