`timescale 1ns/1ps

module tb_frequency_counter;

reg fast_clk;
reg slow_sig;
reg rst;

wire [7:0] pulse_count;

frequency_counter uut(
    .fast_clk(fast_clk),
    .rst(rst),
    .slow_sig(slow_sig),
    .pulse_count(pulse_count)
);

initial
begin
    fast_clk = 0;
    forever #5 fast_clk = ~fast_clk;
end

initial
begin
    slow_sig = 0;
    forever #17 slow_sig = ~slow_sig;
end

initial
begin

    rst = 1;

    #20;

    rst = 0;

    #500;

    $stop;

end

endmodule