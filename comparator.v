module comparator(A, B, Y);
parameter N = 4;
input [N-1:0] A, B;
output reg [2:0] Y;
/*
* Y = 001 if A > B
* Y = 010 if A = B
* Y = 100 if A < B */
always @(*) begin
	Y = 3'b000;
	if (A < B)
		Y[2] = 1'd1;
	else
	begin
		if (A == B)
			Y[1] = 1'd1;
		else
			Y[0] = 1'd1;
	end
end
endmodule
