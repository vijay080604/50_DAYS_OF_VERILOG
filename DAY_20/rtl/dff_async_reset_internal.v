/*
--------------------------------------------------
Module Name : dff_async_reset_internal
Description :
D Flip-Flop with Asynchronous Reset

Input data is generated internally.
--------------------------------------------------
*/

module dff_async_reset_internal (

    input  wire clk_in,
    input  wire rst_in,

    output reg  q_out

);

reg d_internal;


// Internal Data Generation

always @(posedge clk_in or posedge rst_in)
begin

    if(rst_in)
        d_internal <= 1'b0;

    else
        d_internal <= ~d_internal;

end


// D Flip-Flop

always @(posedge clk_in or posedge rst_in)
begin

    if(rst_in)
        q_out <= 1'b0;

    else
        q_out <= d_internal;

end

endmodule