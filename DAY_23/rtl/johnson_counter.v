module johnson_counter(
    input clk,
    input rst,
    output [3:0] q
);

wire q0,q1,q2,q3;

dff ff0(
    .clk(clk),
    .rst(rst),
    .d(~q3),
    .q(q0)
);

dff ff1(
    .clk(clk),
    .rst(rst),
    .d(q0),
    .q(q1)
);

dff ff2(
    .clk(clk),
    .rst(rst),
    .d(q1),
    .q(q2)
);

dff ff3(
    .clk(clk),
    .rst(rst),
    .d(q2),
    .q(q3)
);

assign q = {q3,q2,q1,q0};

endmodule