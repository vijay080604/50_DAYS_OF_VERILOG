module glue_logic(

    input wire clk,
    input wire rst,

    // Subsystem A

    input wire valid_a,
    input wire [7:0] data_a,

    // Subsystem B

    input wire ready_b,

    // Outputs toward B

    output reg valid_to_b,
    output reg [7:0] data_to_b

);

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        valid_to_b <= 1'b0;
        data_to_b  <= 8'd0;
    end

    else
    begin

        if(valid_a)
        begin
            valid_to_b <= 1'b1;
            data_to_b  <= data_a;
        end

        else
        begin
            valid_to_b <= 1'b0;
        end

        // Transfer completed

        if(valid_to_b && ready_b)
        begin
            valid_to_b <= 1'b0;
        end

    end

end

endmodule