module half_adder (

    input  wire bit_a_in,
    input  wire bit_b_in,

    output wire sum_out,
    output wire carry_out
);

assign sum_out   = bit_a_in ^ bit_b_in;
assign carry_out = bit_a_in & bit_b_in;

endmodule