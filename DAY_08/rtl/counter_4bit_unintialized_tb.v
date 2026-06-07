/*
--------------------------------------------------
Module Name : tb_counter_4bit_uninitialized
Description :
Testbench for observing behavior of an
uninitialized temporary variable.
--------------------------------------------------
*/

module tb_counter_4bit_uninitialized;

reg clk_in;
reg rst_in;

wire [3:0] count_out;

counter_4bit_uninitialized dut (
    .clk_in   (clk_in),
    .rst_in   (rst_in),
    .count_out(count_out)
);


// Clock generation
always #5 clk_in = ~clk_in;


// Stimulus
initial
begin

    clk_in = 1'b0;
    rst_in = 1'b0;

    $display("Time\tReset\tCount");
    $monitor("%0t\t%b\t%b",
              $time,
              rst_in,
              count_out);

    #12;

    rst_in = 1'b1;

    #10;

    rst_in = 1'b0;

    #100;

    $finish;

end

endmodule