`timescale 1ns/1ps

module tb_crc4_generator;

reg  [7:0] message_in;

wire [3:0] crc_out;

crc4_generator DUT (

    .message_in(message_in),
    .crc_out(crc_out)

);

initial
begin

    //--------------------------------
    // Test Case 1
    //--------------------------------

    message_in = 8'b11010110;

    #10;

    //--------------------------------
    // Test Case 2
    //--------------------------------

    message_in = 8'b10101010;

    #10;

    //--------------------------------
    // Test Case 3
    //--------------------------------

    message_in = 8'b11110000;

    #10;

    //--------------------------------
    // Test Case 4
    //--------------------------------

    message_in = 8'b00001111;

    #10;

    $stop;

end

endmodule