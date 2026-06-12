`timescale 1ns/1ps

module tb_odd_sequence_generator;

reg clk;
reg rst;

wire [3:0] seq_out;

odd_sequence_generator uut(
    .clk(clk),
    .rst(rst),
    .seq_out(seq_out)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;

    #10;
    rst = 0;

    #120;

    $stop;

end

endmodule