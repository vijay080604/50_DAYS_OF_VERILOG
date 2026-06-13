`timescale 1ns/1ps

module tb_factorial;

reg clk;
reg rst;
reg start;
reg [3:0] N;

wire [31:0] fact;
wire done;

factorial uut(
    .clk(clk),
    .rst(rst),
    .start(start),
    .N(N),
    .fact(fact),
    .done(done)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;
    start = 0;
    N = 0;

    #10;
    rst = 0;

    //--------------------------------
    // Test Case 1 : 4!
    //--------------------------------

    N = 4;
    start = 1;

    #10;
    start = 0;

    #60;

    //--------------------------------
    // Test Case 2 : 5!
    //--------------------------------

    rst = 1;
    #10;
    rst = 0;

    N = 5;
    start = 1;

    #10;
    start = 0;

    #80;

    $stop;

end

endmodule