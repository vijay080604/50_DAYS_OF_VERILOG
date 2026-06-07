/*
--------------------------------------------------
Module Name : tb_down_counter_3bit_signed
Description : Testbench for 3-bit signed
              down counter
--------------------------------------------------
*/

module tb_down_counter_3bit_signed;

reg clk_in;
reg rst_in;

wire signed [2:0] count_out;

down_counter_3bit_signed dut (
    .clk_in   (clk_in),
    .rst_in   (rst_in),
    .count_out(count_out)
);

// Clock Generation
always #5 clk_in = ~clk_in;

initial begin

    clk_in = 1'b0;
    rst_in = 1'b1;

    #10;
    rst_in = 1'b0;

    #100;
    $finish;

end

initial begin
    $monitor(
        "Time=%0t | Binary=%b | Signed=%0d",
        $time,
        count_out,
        count_out
    );
end

endmodule