/*
--------------------------------------------------
Module Name : down_counter_3bit_signed
Author      : Vijay Kumar
Description : 3-bit signed down counter with
              asynchronous reset.
              Counts downward on every clock edge.
--------------------------------------------------
*/

module down_counter_3bit_signed (
    input  wire clk_in,
    input  wire rst_in,
    output reg signed [2:0] count_out
);

always @(posedge clk_in or posedge rst_in) begin
    if (rst_in)
        count_out <= 3'b111;    // Initialize counter
    else
        count_out <= count_out - 1'b1;
end

endmodule