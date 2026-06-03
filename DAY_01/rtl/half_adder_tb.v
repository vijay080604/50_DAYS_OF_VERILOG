module half_adder_tb;

    // Testbench signals
    reg bit_a_in;
    reg bit_b_in;

    wire sum_out;
    wire carry_out;

    // RTL module instantiation
    half_adder dut (

        .bit_a_in(bit_a_in),
        .bit_b_in(bit_b_in),

        .sum_out(sum_out),
        .carry_out(carry_out)
    );

    // Waveform generation
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
    end

    // Test cases
    initial begin

        bit_a_in = 0;
        bit_b_in = 0;

        #10;

        bit_a_in = 0;
        bit_b_in = 1;

        #10;

        bit_a_in = 1;
        bit_b_in = 0;

        #10;

        bit_a_in = 1;
        bit_b_in = 1;

        #10;

        $finish;
    end

endmodule