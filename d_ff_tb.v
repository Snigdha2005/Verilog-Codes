`timescale 10ns/1ps
module tb;
reg D;
wire Q;
reg clk;
reg R;
d_ff dut(D, Q, clk, R);
initial begin
	clk = 1'b0;
	D = 1'b1;
	R = 1'b0;
	$monitor("D = %b, Q = %b, clk = %b, R = %b", D, Q, clk, R);
	$dumpfile("d_ff.vcd");
	$dumpvars(0, D, Q, clk, R);
	repeat(20)
	fork
		#2 clk = ~clk;
		#12 D = ~D;
		#50 R = ~R;
	join
end
endmodule
