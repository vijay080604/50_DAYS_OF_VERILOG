`timescale 1ns / 1ps

module comparator_no_driver_tb;

reg [1:0] a_in;
reg [1:0] b_in;

wire a_gt_b;
wire a_eq_b;
wire a_lt_b;

comparator_dataflow dut (
    .a_in(a_in),
    .b_in(b_in),
    .a_gt_b(a_gt_b),
    .a_eq_b(a_eq_b),
    .a_lt_b(a_lt_b)
);

initial begin

    // No stimulus applied
    // a_in and b_in remain uninitialized

    #50;

    $finish;

end

endmodule