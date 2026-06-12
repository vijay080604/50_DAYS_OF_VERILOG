module down_counter_structural(
    input clk,
    input rst,
    output [3:0] count
);

wire d0,d1,d2,d3;

wire q0,q1,q2,q3;

assign d0 = ~q0;

assign d1 = q1 ^ (~q0);

assign d2 = q2 ^ (~q1 & ~q0);

assign d3 = q3 ^ (~q2 & ~q1 & ~q0);

dff ff0(
    .clk(clk),
    .rst(rst),
    .d(d0),
    .q(q0)
);

dff ff1(
    .clk(clk),
    .rst(rst),
    .d(d1),
    .q(q1)
);

dff ff2(
    .clk(clk),
    .rst(rst),
    .d(d2),
    .q(q2)
);

dff ff3(
    .clk(clk),
    .rst(rst),
    .d(d3),
    .q(q3)
);

assign count = {q3,q2,q1,q0};

endmodule