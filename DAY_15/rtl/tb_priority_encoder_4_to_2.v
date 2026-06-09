/*
--------------------------------------------------
Module Name : tb_priority_encoder_4_to_2
Description :
Testbench for Priority Encoder
--------------------------------------------------
*/

module tb_priority_encoder_4_to_2;

reg  [3:0] data_in;

wire [1:0] encoded_out;
wire       valid_out;


priority_encoder_4_to_2 dut (

    .data_in(data_in),

    .encoded_out(encoded_out),
    .valid_out(valid_out)

);


initial begin

    $display("---------------------------------------");
    $display(" Data_in  Encoded  Valid ");
    $display("---------------------------------------");

    data_in = 4'b0000; #10;

    data_in = 4'b0001; #10;

    data_in = 4'b0010; #10;

    data_in = 4'b0100; #10;

    data_in = 4'b1000; #10;

    data_in = 4'b1010; #10;

    data_in = 4'b1111; #10;

    $finish;

end


initial begin

    $monitor(
        "%b      %b      %b",
        data_in,
        encoded_out,
        valid_out
    );

end

endmodule