module d_flip_flop_logic (

    input  logic clk_in,
    input  logic rst_in,
    input  logic data_in,

    output logic data_out

);

always_ff @(posedge clk_in or posedge rst_in) begin

    if(rst_in)
        data_out <= 1'b0;

    else
        data_out <= data_in;

end

endmodule