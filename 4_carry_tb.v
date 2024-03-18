`timescale 10ns/1ps
module tb;
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;
carry_4 dut(A, B, Cin, Cout, S);
initial begin
	$monitor("A = %d, B = %d, S = %d, Cin = %b, Cout = %b", A, B, S, Cin, Cout);
	$dumpfile("carry.vcd");
	$dumpvars(0, A, B, Cin, S, Cout);
	A = 4'd5; B = 4'd5; Cin = 0;
	#2 A = 4'd10; B = 4'd5;
        #2 A = 4'd1; B = 4'd3;
	#2 A = 4'd9; B = 4'd9;
	A = 4'd5; B = 4'd5; Cin = 1;
	#2 A = 4'd10; B = 4'd5;
        #2 A = 4'd1; B = 4'd3;
	#2 A = 4'd9; B = 4'd9;
	#2 $finish;
end
endmodule
		
