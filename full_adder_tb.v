`timescale 10ns/10ps
module tb;
  reg A, B, Cin;
  wire Cout, S;
  full_adder dut(A, B, Cin, Cout, S);
  initial begin
    $monitor("A = %b, B = %b, Cin = %b, Cout = %b, S = %b", A, B, Cin, Cout, S);
    $dumpfile("dump.vcd");
    $dumpvars(0, A, B, Cin, Cout, S);
    A= 0; B= 0; Cin= 0; 
    #5 A= 0; B= 1; Cin= 0; 
    #5 A= 1; B= 0; Cin= 0; 
    #5 A= 1; B= 1; Cin= 0; 
    #5 A= 0; B= 0; Cin= 1; 
    #5 A= 0; B= 1; Cin= 1; 
    #5 A= 1; B= 0; Cin= 1; 
    #5 A= 1; B= 1; Cin= 1; 
  end
endmodule
