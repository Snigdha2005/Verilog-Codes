`timescale 10ns/1ps
module tb;
parameter N = 4;
reg [N-1:0] A, B;
wire [2:0] Y;
comparator dut(A, B, Y);
initial begin
	$monitor("A = %d, B = %d, Y = %b", A, B, Y);
	$dumpfile("comparator.vcd");
	$dumpvars(0, A, B, Y);
	A = 4'd5; B = 4'd7;
	#2 A = 4'd4; B = 4'd4;
	#2 A = 4'd6; B = 4'd5;#2
	$finish;
end
endmodule
