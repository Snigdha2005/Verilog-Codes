`timescale 10ns/1ps
module tb;
parameter N = 4;
reg [2**N-1:0] D = 1'd0;
wire [N-1:0] Q;
integer i;
integer p = 2**N;
priority_encoder dut(D, Q);
initial begin
	$monitor("D = %b, Q = %b", D, Q);
	$dumpfile("priority.vcd");
	$dumpvars(0, D, Q);
	repeat(20)
	#2 D = D + 2'd1;
	#2 $finish;
end
endmodule
