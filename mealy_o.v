module mealy_overlapping_101(in, out, R, clk);
input in, R, clk;
output reg out;
parameter [1:0] S0 = 2'b00;
parameter [1:0] S1 = 2'b01;
parameter [1:0] S2 = 2'b10;

localparam logic [1:0] S0_val = S0;
localparam logic [1:0] S1_val = S1;
localparam logic [1:0] S2_val = S2;

logic [1:0] state;

always @(posedge clk or posedge R) begin
        if (R) begin
                out <= 1'b0;
                state <= S0;
        end
        else begin
                case(state)
                        S0: begin
                                if (in)
                                begin
                                        state <= S1;
                                        out <= 1'b0;
                                end
                                else
                                        out <= 1'b0;
                        end
                        S1: begin
                                if (~in)
                                begin
                                        state <=S2;
                                        out <= 1'b0;
                                end
				else
					out <= 1'b0;
                        end
                        S2: begin
                                if (in)
                                begin
                                        state <= S1;
                                        out <= 1'b1;
                                end
                                else
                                begin
                                        state <= S0;
                                        out <= 1'b0;
                                end
                        end
                endcase
        end
end
endmodule
