`timescale 10ns/1ps
module tb;
reg clk;
wire Q;
freq_div dut(clk, Q);
parameter freq = 1;
real tp = 1/(freq*1e3)*1e9;
initial begin 
	clk = 1'b0;
	#(tp*4)
	$dumpfile("freq_div.vcd");
	$dumpvars(0, clk, Q);
	forever #(tp/2) clk = ~clk;
end
endmodule
