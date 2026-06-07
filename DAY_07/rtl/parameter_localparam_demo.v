/*
--------------------------------------------------
Module Name : parameter_localparam_demo
Author      : Vijay Kumar
Description : Demonstrates the difference between
              parameter and localparam.
--------------------------------------------------
*/

module parameter_localparam_demo #(
    parameter DATA_WIDTH = 8
)
(
    output wire [DATA_WIDTH-1:0] data_out
);

localparam INTERNAL_VALUE = 4;

assign data_out = INTERNAL_VALUE;

endmodule