`timescale 1ns/1ps

module tb_arbiter;

reg clk;
reg rst;
reg [3:0] req;

wire [3:0] p_grant;
wire [3:0] rr_grant;

priority_arbiter PA(
    .req(req),
    .grant(p_grant)
);

round_robin_arbiter RR(
    .clk(clk),
    .rst(rst),
    .req(req),
    .grant(rr_grant)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;
    req = 4'b0000;

    #10;
    rst = 0;

    req = 4'b1111;
    #40;

    req = 4'b0111;
    #40;

    req = 4'b0011;
    #40;

    $stop;

end

endmodule