`timescale 1ns/1ps

module d_flip_flop_logic_tb;

    // Testbench signals

    logic clk_in;
    logic rst_in;
    logic data_in;

    logic data_out;

    // DUT Instantiation

    d_flip_flop_logic dut (

        .clk_in(clk_in),
        .rst_in(rst_in),
        .data_in(data_in),

        .data_out(data_out)

    );

    // Clock Generation

    always #5 clk_in = ~clk_in;

    // Test Stimulus

    initial begin

        clk_in  = 0;
        rst_in  = 1;
        data_in = 0;

        // Apply Reset

        #10;
        rst_in = 0;

        // Test Case 1

        data_in = 1;
        #10;

        // Test Case 2

        data_in = 0;
        #10;

        // Test Case 3

        data_in = 1;
        #10;

        // Apply Reset Again

        rst_in = 1;
        #10;

        rst_in = 0;

        // Test Case 4

        data_in = 0;
        #10;

        // Test Case 5

        data_in = 1;
        #10;

        $finish;

    end

endmodule