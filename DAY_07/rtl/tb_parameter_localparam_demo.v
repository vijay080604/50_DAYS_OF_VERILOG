/*
--------------------------------------------------
Module Name : tb_parameter_localparam_demo
Description : Testbench for parameter and
              localparam demonstration
--------------------------------------------------
*/

module tb_parameter_localparam_demo;

wire [15:0] data_out;

// Parameter override
parameter_localparam_demo #(
    .DATA_WIDTH(16)
) dut (
    .data_out(data_out)
);

initial begin

    #10;

    $display("DATA_WIDTH = %0d", dut.DATA_WIDTH);
    $display("INTERNAL_VALUE = %0d", dut.INTERNAL_VALUE);

    #10;
    $finish;

end

endmodule