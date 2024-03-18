`timescale 10ns/1ps
module tb;
parameter N = 4;
wire Y;
reg E;
reg [N-1:0] A;
parity_gen dut(A, Y, E);
initial begin
	$monitor("A = %b, Y = %b, E = %b", A, Y, E);
	$dumpfile("parity.vcd");
	$dumpvars(0, A, Y, E);
	E = 1; 
	A = 4'h2;
	#2 A = 4'h3;
	#2 A = 4'h0;
	#2 E = 0;#1 A = 4'h2;
	#2 A = 4'h3;
	#2 A = 4'h0; #2
	$finish;
end
endmodule

