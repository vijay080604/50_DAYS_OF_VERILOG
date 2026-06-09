/*
--------------------------------------------------
Module Name : register_nonblocking
Description :
1-Bit Register using Non-Blocking Assignment
--------------------------------------------------
*/

module register_nonblocking (

    input  wire clk_in,
    input  wire data_in,

    output reg  data_out

);

always @(posedge clk_in)
begin

    data_out <= data_in;

end

endmodule