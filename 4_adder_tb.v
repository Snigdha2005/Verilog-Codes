`timescale 10ns/1ps
module tb;
reg [3:0] A, B;
wire [3:0] S;
wire Cout;
adder_4bit dut(A, B, Cout, S);
initial begin
	$monitor("A = %b, B = %b, S = %b, Cout = %b", A, B, S, Cout);
	$dumpfile("4_add.vcd");
	$dumpvars(0, A, B, S, Cout);
	A = 4'h2; B = 4'h4;
	#2 A = 4'ha; B = 4'h5;
	#2 A = 4'hf; B = 4'h1;
	#2 A = 4'h9; B = 4'h1;#2
	$finish;
end
endmodule
