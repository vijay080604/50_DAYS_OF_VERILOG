`timescale 1ns/1ps

module tb_johnson_counter;

reg clk;
reg rst;

wire [3:0] q;

johnson_counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    rst = 1;

    #10;

    rst = 0;

    #100;

    $stop;

end

endmodule