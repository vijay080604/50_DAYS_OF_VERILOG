`timescale 1ns/1ps

module tb_pipeline_arithmetic;

reg clk;
reg rst;

reg [7:0] A;
reg [7:0] B;
reg [7:0] C;
reg [7:0] D;

wire [15:0] OUT;

pipeline_arithmetic uut(
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .OUT(OUT)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;

    A = 0;
    B = 0;
    C = 0;
    D = 0;

    #10;
    rst = 0;

    // Test Vector 1

    A = 5;
    B = 3;
    C = 4;
    D = 2;

    #10;

    // Test Vector 2

    A = 10;
    B = 2;
    C = 3;
    D = 5;

    #10;

    // Test Vector 3

    A = 7;
    B = 1;
    C = 2;
    D = 4;

    #50;

    $stop;

end

endmodule