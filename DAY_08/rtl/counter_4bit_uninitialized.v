
/*
--------------------------------------------------
Module Name : counter_4bit_uninitialized
Author      : Vijay Kumar
Description :
4-bit up counter with asynchronous reset.

A temporary variable is intentionally left
uninitialized to observe simulation behavior.
--------------------------------------------------
*/

module counter_4bit_uninitialized (
    input  wire clk_in,
    input  wire rst_in,
    output reg  [3:0] count_out
);

reg [3:0] temp_count;

always @(posedge clk_in or posedge rst_in)
begin
    if (rst_in)
    begin
        count_out <= 4'b0000;
    end
    else
    begin
        temp_count = temp_count + 1;
        count_out  <= temp_count;
    end
end

endmodule