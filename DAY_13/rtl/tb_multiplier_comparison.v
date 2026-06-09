/*
--------------------------------------------------
Module Name : tb_multiplier_comparison
Description :
Testbench for multiplier comparison
--------------------------------------------------
*/

module tb_multiplier_comparison;

reg        clk_in;
reg        rst_in;

reg  [3:0] data_a_in;
reg  [3:0] data_b_in;

wire [7:0] combinational_product_out;
wire [7:0] sequential_product_out;


multiplier_comparison dut (

    .clk_in(clk_in),
    .rst_in(rst_in),

    .data_a_in(data_a_in),
    .data_b_in(data_b_in),

    .combinational_product_out(
        combinational_product_out
    ),

    .sequential_product_out(
        sequential_product_out
    )

);


// Clock generation

always #5 clk_in = ~clk_in;


initial begin

    clk_in = 1'b0;
    rst_in = 1'b1;

    data_a_in = 4'd0;
    data_b_in = 4'd0;

    #10;

    rst_in = 1'b0;

    // Test 1

    data_a_in = 4'd3;
    data_b_in = 4'd2;

    #10;

    // Test 2

    data_a_in = 4'd4;
    data_b_in = 4'd5;

    #10;

    // Test 3

    data_a_in = 4'd7;
    data_b_in = 4'd3;

    #20;

    $finish;

end


initial begin

    $monitor(
        "Time=%0t A=%0d B=%0d Comb=%0d Seq=%0d",
        $time,
        data_a_in,
        data_b_in,
        combinational_product_out,
        sequential_product_out
    );

end

endmodule