/*
--------------------------------------------------
Module Name : tb_alu_4bit
Description :
Testbench for 4-Bit ALU
--------------------------------------------------
*/

module tb_alu_4bit;

reg [3:0] data_a_in;
reg [3:0] data_b_in;

reg [2:0] opcode_in;

wire [3:0] result_out;


alu_4bit dut (

    .data_a_in(data_a_in),
    .data_b_in(data_b_in),

    .opcode_in(opcode_in),

    .result_out(result_out)

);


initial begin

    $display("------------------------------------------------");
    $display("A     B     OPCODE     RESULT");
    $display("------------------------------------------------");

    data_a_in = 4'd6;
    data_b_in = 4'd3;

    // Addition

    opcode_in = 3'b000;

    #10;

    // Subtraction

    opcode_in = 3'b001;

    #10;

    // AND

    opcode_in = 3'b010;

    #10;

    // OR

    opcode_in = 3'b011;

    #10;

    // XOR

    opcode_in = 3'b100;

    #10;

    $finish;

end


initial begin

    $monitor(
        "%d     %d      %b       %d",
        data_a_in,
        data_b_in,
        opcode_in,
        result_out
    );

end

endmodule