`timescale 10ns/1ps
module tb;
reg [1:0] S;
wire Y;
reg in0, in1, in2, in3;
mux4_1 dut(S, Y, in0, in1, in2, in3);
initial begin
	$monitor("S = %b, Y = %d", S, Y);
	$dumpfile("4_1mux.vcd");
	$dumpvars(0, S, Y);
	S = 2'b00; in0 = 1'b1; in1 = 1'b0; in2 = 1'b1; in3 = 1'b0;
	#5 S = 2'b01;
	#5 S = 2'b10;
	#5 S = 2'b11;
end
endmodule
