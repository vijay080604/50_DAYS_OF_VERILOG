`timescale 1ns/1ps

module tb_down_counter_structural;

reg clk;
reg rst;

wire [3:0] count;

down_counter_structural uut(
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    rst = 1;

    #10;

    rst = 0;

    #200;

    $stop;

end

endmodule