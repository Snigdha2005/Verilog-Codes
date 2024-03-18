`timescale 10ns/1ps
module tb;
reg clk;
reg R;
reg L;
reg [2:0] I;
wire [2:0] Q;
up_counter3 dut(clk, R, L, I, Q); 
initial begin
	I = 3'b001;
	L = 1'b1;
	clk = 1'b0;
	R = 1'b1;
	$monitor("clk = %b, I = %b, R = %b, L = %b,  Q= %b", clk, I, R, L, Q);
	$dumpfile("up.vcd");
	$dumpvars(0, clk, I, R, L, Q);
	#1 L = 1'b0;
	repeat(20)
	#2 clk = ~clk;
end
endmodule
