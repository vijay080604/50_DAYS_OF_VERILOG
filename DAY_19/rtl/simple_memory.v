/*
--------------------------------------------------
Module Name : simple_memory
Description :
Simple 16x8 Memory
--------------------------------------------------
*/

module simple_memory (

    input  wire       clk_in,
    input  wire       write_enable_in,
    input  wire       read_enable_in,

    input  wire [3:0] address_in,
    input  wire [7:0] write_data_in,

    output reg  [7:0] read_data_out

);

reg [7:0] memory [0:15];

always @(posedge clk_in)
begin

    if(write_enable_in)
        memory[address_in] <= write_data_in;

    if(read_enable_in)
        read_data_out <= memory[address_in];

end

endmodule