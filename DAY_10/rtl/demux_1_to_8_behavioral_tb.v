/*
--------------------------------------------------
Module Name : tb_demux_1_to_8_behavioral
Description :
Testbench for 1-to-8 Demultiplexer
--------------------------------------------------
*/

module tb_demux_1_to_8_behavioral;

reg        data_in;
reg  [2:0] sel_in;
wire [7:0] data_out;

demux_1_to_8_behavioral dut
(
    .data_in (data_in),
    .sel_in  (sel_in),
    .data_out(data_out)
);

initial
begin

    data_in = 1'b1;

    $display("-----------------------------------------");
    $display(" Time   Sel    Data_In    Data_Out");
    $display("-----------------------------------------");

    for(integer index = 0;
        index < 8;
        index = index + 1)
    begin

        sel_in = index;

        #10;

        $display("%4t     %b       %b       %b",
                 $time,
                 sel_in,
                 data_in,
                 data_out);

    end

    #10;

    data_in = 1'b0;
    sel_in  = 3'b101;

    #10;

    $display("%4t     %b       %b       %b",
             $time,
             sel_in,
             data_in,
             data_out);

    $finish;

end

endmodule