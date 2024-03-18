module parity_gen(A, Y, E);
parameter N = 4;
input E;
input [N-1:0] A;
output reg Y;
integer i;
integer c;
// E = 1 => even parity generator
// E = 0 => odd parity generator
always @(*) begin
	c = 0;
	for(i = 0; i < N; i=i+1)
	begin
		if (A[i])
		       c = c+1;
       end
       Y = (E == 1) ? ((c % 2) ? 1'b1:1'b0) : ((c % 2) ? 1'b0:1'b1);
end
endmodule       
