module factorial(
    input wire clk,
    input wire rst,
    input wire start,
    input wire [3:0] N,

    output reg [31:0] fact,
    output reg done
);

reg [3:0] count;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        fact  <= 32'd1;
        count <= 4'd0;
        done  <= 1'b0;
    end

    else if(start)
    begin
        fact  <= 32'd1;
        count <= N;
        done  <= 1'b0;
    end

    else if(count > 1)
    begin
        fact  <= fact * count;
        count <= count - 1;
    end

    else if(count == 1)
    begin
        done <= 1'b1;
        count <= 0;
    end

end

endmodule