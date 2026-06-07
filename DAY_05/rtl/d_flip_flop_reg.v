module d_flip_flop_reg (

    input  clk_in,
    input  rst_in,
    input  data_in,

    output reg data_out

);

always @(posedge clk_in or posedge rst_in) begin

    if(rst_in)
        data_out <= 1'b0;

    else
        data_out <= data_in;

end

endmodule