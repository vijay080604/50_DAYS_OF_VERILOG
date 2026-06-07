/*
--------------------------------------------------
Module Name : tb_binary_to_gray_converter
Description :
Testbench for Binary to Gray Converter
--------------------------------------------------
*/

module tb_binary_to_gray_converter;

parameter DATA_WIDTH = 4;

reg  [DATA_WIDTH-1:0] binary_in;
wire [DATA_WIDTH-1:0] gray_out;

binary_to_gray_converter
#(
    .DATA_WIDTH(DATA_WIDTH)
)
dut
(
    .binary_in(binary_in),
    .gray_out(gray_out)
);

initial
begin

    $display("-----------------------------------");
    $display(" Binary      Gray ");
    $display("-----------------------------------");

    for(integer index = 0;
        index < (1 << DATA_WIDTH);
        index = index + 1)
    begin

        binary_in = index;

        #10;

        $display("%b      %b",
                  binary_in,
                  gray_out);

    end

    $finish;

end

endmodule