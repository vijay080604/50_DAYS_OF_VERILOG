/*
--------------------------------------------------
Module Name : priority_encoder_4_to_2
Description :
4-to-2 Priority Encoder using
procedural blocking assignments.
--------------------------------------------------
*/

module priority_encoder_4_to_2 (

    input  wire [3:0] data_in,

    output reg  [1:0] encoded_out,
    output reg        valid_out

);

always @(*)
begin

    valid_out   = 1'b1;
    encoded_out = 2'b00;

    if(data_in[3])
        encoded_out = 2'b11;

    else if(data_in[2])
        encoded_out = 2'b10;

    else if(data_in[1])
        encoded_out = 2'b01;

    else if(data_in[0])
        encoded_out = 2'b00;

    else begin
        valid_out   = 1'b0;
        encoded_out = 2'b00;
    end

end

endmodule