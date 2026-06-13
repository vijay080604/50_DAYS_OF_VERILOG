module pwm_generator (
    input wire clk,
    input wire rst,

    input wire [7:0] period,
    input wire [7:0] duty,

    output reg pwm_out
);

reg [7:0] counter;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        counter <= 0;
        pwm_out <= 0;
    end

    else
    begin

        if(counter >= period-1)
            counter <= 0;
        else
            counter <= counter + 1;

        if(counter < duty)
            pwm_out <= 1'b1;
        else
            pwm_out <= 1'b0;

    end

end

endmodule