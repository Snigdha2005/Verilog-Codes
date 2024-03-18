module freq_div(clk, Q);
input clk;
output reg Q;
reg [2:0] temp = 3'b000;
always @(posedge clk) begin
	if ((temp + 3'b001) == 3'b110)
	begin
		temp <= 3'b000;
	end
	else
		temp <=  temp + 3'b001;
	Q = temp[2];
end
endmodule
