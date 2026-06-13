`timescale 1ns/1ps

module tb_pwm_generator;

reg clk;
reg rst;

reg [7:0] period;
reg [7:0] duty;

wire pwm_out;

pwm_generator uut(
    .clk(clk),
    .rst(rst),
    .period(period),
    .duty(duty),
    .pwm_out(pwm_out)
);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial
begin

    rst = 1;

    period = 10;
    duty   = 5;

    #20;
    rst = 0;

    // 50%

    #200;

    // 80%

    duty = 8;

    #200;

    // 30%

    duty = 3;

    #200;

    $stop;

end

endmodule