module moore_overlapping_101(in, out, R, clk);
input clk, R, in;
output reg out;
parameter [1:0] S0 = 2'b00;
parameter [1:0] S1 = 2'b01;
parameter [1:0] S2 = 2'b10;
parameter [1:0] S3 = 2'b11;

localparam logic [1:0] S0_val = S0;
localparam logic [1:0] S1_val = S1;
localparam logic [1:0] S2_val = S2;
localparam logic [1:0] S3_val = S3;

logic [1:0] state;

always @(posedge clk or posedge R) begin
	if (R) begin
		out <= 1'b0;
		state <= S0;
	end
	else begin
		case(state)
			S0: begin
				out <= 1'b0;
				if (in)
					state <= S1;
			end
			S1: begin
				out <= 1'b0;
				if (~in)
					state <=S2;
			end
			S2: begin
				if (in)
				begin
					state <= S3;
					out <= 1'b1;
				end
				else 
				begin
					state <= S0;
					out <= 1'b0;
				end
			end
			S3: begin
				out <= 1'b0;
				if (in)
					state <= S1;
				else 
					state <= S2;
			end
		endcase
	end
end
endmodule
