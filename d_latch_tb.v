`timescale 10ns/1ps
module tb;
reg clk;
reg D = 1'b0;
wire Q;
d_latch dut(D, Q, clk);
initial begin
	clk = 1'b0;
	$monitor("D = %b, Q = %b, clk = %b", D, Q, clk);
	$dumpfile("d_latch.vcd");
	$dumpvars(0, D, Q, clk);
	repeat(30)
	fork
	#2 clk = ~clk;
	#5 D = ~D;
join
end
endmodule
