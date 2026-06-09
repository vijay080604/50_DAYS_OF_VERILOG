/*
--------------------------------------------------
Module Name : tb_inverter_switch_level
Description : Testbench for CMOS Inverter
--------------------------------------------------
*/

module tb_inverter_switch_level;

reg  a_in;
wire a_out;

inverter_switch_level dut (

    .a_in (a_in),
    .a_out(a_out)

);

initial begin

    $display("--------------------------------");
    $display(" a_in | a_out ");
    $display("--------------------------------");

    a_in = 1'b0;

    #10;

    $display("  %b   |   %b",
             a_in,
             a_out);

    a_in = 1'b1;

    #10;

    $display("  %b   |   %b",
             a_in,
             a_out);

    #10;

    $finish;

end

endmodule