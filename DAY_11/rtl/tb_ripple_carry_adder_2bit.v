/*
--------------------------------------------------
Module Name : tb_ripple_carry_adder_2bit
Description : Testbench for 2-Bit RCA
--------------------------------------------------
*/

module tb_ripple_carry_adder_2bit;

reg  [1:0] data_a_in;
reg  [1:0] data_b_in;

wire [1:0] sum_out;
wire       carry_out;


ripple_carry_adder_2bit dut (

    .data_a_in(data_a_in),
    .data_b_in(data_b_in),

    .sum_out(sum_out),
    .carry_out(carry_out)

);


integer index_a;
integer index_b;

initial begin

    $display("------------------------------------------");
    $display(" A    B   | Carry Sum ");
    $display("------------------------------------------");

    for(index_a = 0; index_a < 4; index_a = index_a + 1)
    begin

        for(index_b = 0; index_b < 4; index_b = index_b + 1)
        begin

            data_a_in = index_a;
            data_b_in = index_b;

            #10;

            $display("%b   %b   |   %b    %b",
                      data_a_in,
                      data_b_in,
                      carry_out,
                      sum_out);

        end

    end

    $finish;

end

endmodule