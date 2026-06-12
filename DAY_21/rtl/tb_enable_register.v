`timescale 1ns/1ps

module tb_enable_register;

reg clk;
reg rst;
reg en;
reg [7:0] d;
wire [7:0] q;

enable_register uut(
    .clk(clk),
    .rst(rst),
    .en(en),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    rst = 1;
    en  = 0;
    d   = 8'd0;

    #10 rst = 0;

    // Load 15
    en = 1;
    d  = 8'd15;
    #10;

    // Hold value
    en = 0;
    d  = 8'd25;
    #10;

    // Hold again
    d  = 8'd35;
    #10;

    // Load new value
    en = 1;
    d  = 8'd50;
    #10;

    // Hold
    en = 0;
    d  = 8'd80;
    #10;

    $stop;
end

endmodule