module frequency_counter(
    input  wire fast_clk,
    input  wire rst,
    input  wire slow_sig,

    output reg [7:0] pulse_count
);

reg slow_d;

reg [7:0] counter;

always @(posedge fast_clk)
begin

    if(rst)
    begin
        slow_d      <= 0;
        counter     <= 0;
        pulse_count <= 0;
    end

    else
    begin

        slow_d <= slow_sig;

        if(~slow_d && slow_sig)
        begin
            pulse_count <= counter;
            counter <= 0;
        end

        else
        begin
            counter <= counter + 1;
        end

    end

end

endmodule