`timescale 10ns/1ps
module tb;
wire A, B;
reg E;
reg tempa, tempb;
integer i;
bidirectional dut(E, A, B);
assign A = E ? tempa:1'bz;
assign B = ~E ? tempb:1'bz;
initial begin
	for(i = 0; i < 8; i = i+1) begin
		{tempa, tempb, E} = i;
		#10;
	end
end
initial begin
	$monitor("A = %b, B = %b, E = %b", A, B, E);
	$dumpfile("bidirec.vcd");
	$dumpvars(0, A, B, E);
end
endmodule
