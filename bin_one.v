module binary_to_one_hot(B, Y);
parameter N = 2;
input [N-1:0] B ;
output reg [2**N-1:0] Y;
integer i;
always @(*) begin
        Y = 1'b0;
        for(i = 0; i < 2**N; i=i+1)
        begin
                if (i == B)
                        Y[i] = 1'b1;
        end
end
endmodule
