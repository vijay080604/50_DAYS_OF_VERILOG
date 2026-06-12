module odd_sequence_generator (
    input  wire clk,
    input  wire rst,
    output reg [3:0] seq_out
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        seq_out <= 4'd0;

    else
    begin
        case(seq_out)

            4'd0  : seq_out <= 4'd1;
            4'd1  : seq_out <= 4'd3;
            4'd3  : seq_out <= 4'd5;
            4'd5  : seq_out <= 4'd7;
            4'd7  : seq_out <= 4'd9;
            4'd9  : seq_out <= 4'd11;
            4'd11 : seq_out <= 4'd13;
            4'd13 : seq_out <= 4'd15;
            4'd15 : seq_out <= 4'd0;

            default : seq_out <= 4'd0;

        endcase
    end
end

endmodule