/*
--------------------------------------------------
Module Name : multiplier_comparison
Description :
Comparison between combinational and
sequential multipliers.
--------------------------------------------------
*/

module multiplier_comparison (

    input  wire       clk_in,
    input  wire       rst_in,

    input  wire [3:0] data_a_in,
    input  wire [3:0] data_b_in,

    output wire [7:0] combinational_product_out,
    output reg  [7:0] sequential_product_out

);


// Combinational Multiplier

assign combinational_product_out =
       data_a_in * data_b_in;


// Sequential Multiplier

always @(posedge clk_in or posedge rst_in)
begin

    if(rst_in)
        sequential_product_out <= 8'd0;

    else
        sequential_product_out <=
        data_a_in * data_b_in;

end

endmodule