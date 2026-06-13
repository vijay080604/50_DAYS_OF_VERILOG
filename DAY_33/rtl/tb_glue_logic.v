`timescale 1ns/1ps

module tb_glue_logic;

reg clk;
reg rst;

reg valid_a;
reg [7:0] data_a;

reg ready_b;

wire valid_to_b;
wire [7:0] data_to_b;

glue_logic uut(

    .clk(clk),
    .rst(rst),

    .valid_a(valid_a),
    .data_a(data_a),

    .ready_b(ready_b),

    .valid_to_b(valid_to_b),
    .data_to_b(data_to_b)

);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;

    valid_a = 0;
    data_a  = 0;
    ready_b = 0;

    #20;
    rst = 0;

    //--------------------------------
    // Data arrives but B not ready
    //--------------------------------

    valid_a = 1;
    data_a  = 8'd25;

    #20;

    //--------------------------------
    // B becomes ready
    //--------------------------------

    ready_b = 1;

    #20;

    //--------------------------------
    // Next transfer
    //--------------------------------

    ready_b = 0;

    valid_a = 1;
    data_a  = 8'd100;

    #20;

    ready_b = 1;

    #20;

    //--------------------------------
    // Third transfer
    //--------------------------------

    ready_b = 0;

    valid_a = 1;
    data_a  = 8'd200;

    #20;

    ready_b = 1;

    #20;

    $stop;

end

endmodule