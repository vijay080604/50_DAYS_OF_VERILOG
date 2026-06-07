`timescale 1ns/1ps

module d_flip_flop_reg_tb;

    // Testbench signals

    reg clk_in;
    reg rst_in;
    reg data_in;

    wire data_out;

    // RTL module instantiation

    d_flip_flop_reg dut (

        .clk_in(clk_in),
        .rst_in(rst_in),
        .data_in(data_in),

        .data_out(data_out)

    );

    // Clock generation

    always #5 clk_in = ~clk_in;

    // Waveform generation

    initial begin

        $dumpfile("d_flip_flop_reg.vcd");
        $dumpvars(0, d_flip_flop_reg_tb);

    end

    // Test stimulus

    initial begin

        clk_in  = 0;
        rst_in  = 1;
        data_in = 0;

        #10;

        rst_in = 0;

        data_in = 1;
        #10;

        data_in = 0;
        #10;

        data_in = 1;
        #10;

        rst_in = 1;
        #10;

        rst_in = 0;
        data_in = 0;
        #10;

        data_in = 1;
        #10;

        $finish;

    end

endmodule