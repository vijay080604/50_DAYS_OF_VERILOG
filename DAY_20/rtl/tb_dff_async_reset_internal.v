/*
--------------------------------------------------
Module Name : tb_dff_async_reset_internal
Description :
Testbench for DFF with Asynchronous Reset
--------------------------------------------------
*/

module tb_dff_async_reset_internal;

reg clk_in;
reg rst_in;

wire q_out;


dff_async_reset_internal dut (

    .clk_in(clk_in),
    .rst_in(rst_in),

    .q_out(q_out)

);


// Clock Generation

always #5 clk_in = ~clk_in;


initial begin

    clk_in = 1'b0;
    rst_in = 1'b1;

    #12;

    rst_in = 1'b0;

    #40;

    rst_in = 1'b1;

    #10;

    rst_in = 1'b0;

    #30;

    $finish;

end


initial begin

    $monitor(
        "Time=%0t rst=%b q=%b",
        $time,
        rst_in,
        q_out
    );

end

endmodule