module pipeline_arithmetic(
    input wire clk,
    input wire rst,

    input wire [7:0] A,
    input wire [7:0] B,
    input wire [7:0] C,
    input wire [7:0] D,

    output reg [15:0] OUT
);

reg [8:0] stage1_reg;
reg [15:0] stage2_reg;
reg [15:0] stage3_reg;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        stage1_reg <= 0;
        stage2_reg <= 0;
        stage3_reg <= 0;
        OUT <= 0;
    end

    else
    begin

        // Stage 1
        stage1_reg <= A + B;

        // Stage 2
        stage2_reg <= stage1_reg * C;

        // Stage 3
        stage3_reg <= stage2_reg - D;

        OUT <= stage3_reg;

    end

end

endmodule