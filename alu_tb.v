`timescale 10ns/1ps
module tb;
reg [7:0] A, B;
wire [7:0] Y;
reg [3:0] opt;
integer i;
alu dut(A, B, Y, opt);
initial begin
	A = 8'ha1;
	B = 8'h01;
	$monitor("opt = %b, A = %b, B = %b, Y = %b", opt, A, B, Y);
	$dumpfile("alu.vcd");
	$dumpvars(0, A, B, Y, opt);
	for(i = 1; i < 10; i = i + 1) begin
		#2 opt = i;
	end
	#2 $finish;
end
endmodule
