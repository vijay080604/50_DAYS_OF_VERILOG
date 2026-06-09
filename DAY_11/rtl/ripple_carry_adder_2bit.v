/*
--------------------------------------------------
Module Name : ripple_carry_adder_2bit
Description : 2-Bit Ripple Carry Adder
--------------------------------------------------
*/

module ripple_carry_adder_2bit (

    input  wire [1:0] data_a_in,
    input  wire [1:0] data_b_in,

    output wire [1:0] sum_out,
    output wire       carry_out

);

wire carry_internal;


full_adder fa_0 (

    .bit_a_in (data_a_in[0]),
    .bit_b_in (data_b_in[0]),
    .carry_in (1'b0),

    .sum_out  (sum_out[0]),
    .carry_out(carry_internal)

);


full_adder fa_1 (

    .bit_a_in (data_a_in[1]),
    .bit_b_in (data_b_in[1]),
    .carry_in (carry_internal),

    .sum_out  (sum_out[1]),
    .carry_out(carry_out)

);

endmodule