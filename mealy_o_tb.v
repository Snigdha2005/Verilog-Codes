`timescale 10ns/1ps

module tb;
localparam CLK_PERIOD = 10;
localparam SIM_DURATION = 100;
reg clk = 0;
reg in = 0;
reg R = 1;
wire out;
mealy_overlapping_101 dut (
        .clk(clk),
        .in(in),
        .R(R),
        .out(out)
    );
    always #((CLK_PERIOD / 2)) clk = ~clk;

    initial begin
        $monitor("in = %b, out = %b", in, out);
        $dumpfile("mealy_o.vcd");
        $dumpvars(0, in, out, clk, R);
        R = 1;
        in = 0;
        #10;
        R = 0;
        #5 in = 1;
        #5 in = 0;
        #5 in = 0;
        #5 in = 1;
        #5 in = 1;
        #5 in = 0;
        #5 in = 0;
        #5 in = 1;
        #5 in = 1;
        #SIM_DURATION;
        $finish;
    end
endmodule
