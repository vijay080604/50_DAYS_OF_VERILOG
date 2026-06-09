/*
--------------------------------------------------
Module Name : full_adder
Description : 1-Bit Full Adder
--------------------------------------------------
*/

module full_adder (

    input  wire bit_a_in,
    input  wire bit_b_in,
    input  wire carry_in,

    output wire sum_out,
    output wire carry_out

);

assign sum_out   = bit_a_in ^ bit_b_in ^ carry_in;

assign carry_out = (bit_a_in & bit_b_in) |
                   (bit_b_in & carry_in) |
                   (bit_a_in & carry_in);

endmodule