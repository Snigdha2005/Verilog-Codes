module priority_encoder(D, Q);
parameter N = 4;
input [2**N-1:0] D;
output reg [N-1:0] Q;
integer i;
always @(*) begin
	Q[N-1:0] = 'bx;
	for(i = 0; i < 2**N; i = i+1)
	begin
		if (D[i])
		begin
			Q[N-1:0] = 0;
			Q = i;
		end
	end
end
endmodule
