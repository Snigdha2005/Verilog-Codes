`timescale 10ns/1ps
module tb;
parameter N = 2;
reg [N-1:0] B;
integer i;
wire [2**N-1:0] Y;
binary_to_one_hot dut(B, Y);
initial begin
	$monitor("B = %b, Y = %b", B, Y);
	$dumpfile("Binary_onehot.vcd");
	$dumpvars(0, B, Y);
	for(i = 0; i < 2*N; i = i+1) begin
		#2 B = i;
	end
	#2 $finish;
end
endmodule
