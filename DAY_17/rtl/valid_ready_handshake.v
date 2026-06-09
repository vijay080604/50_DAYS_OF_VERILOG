/*
--------------------------------------------------
Module Name : valid_ready_handshake
Description :
Valid-Ready Handshake Protocol
using if-else priority logic.

Priority:
valid_in > ready_in
--------------------------------------------------
*/

module valid_ready_handshake (

    input  wire valid_in,
    input  wire ready_in,

    output reg  transfer_out

);

always @(*) begin

    if(valid_in) begin

        if(ready_in)
            transfer_out = 1'b1;

        else
            transfer_out = 1'b0;

    end

    else if(ready_in) begin

        transfer_out = 1'b0;

    end

    else begin

        transfer_out = 1'b0;

    end

end

endmodule