module round_robin_arbiter(
    input clk,
    input rst,
    input [3:0] req,
    output reg [3:0] grant
);

reg [1:0] pointer;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin
        pointer <= 2'd0;
        grant <= 4'b0000;
    end

    else
    begin

        case(pointer)

        2'd0:
        begin
            if(req[0])
            begin
                grant <= 4'b0001;
                pointer <= 2'd1;
            end
        end

        2'd1:
        begin
            if(req[1])
            begin
                grant <= 4'b0010;
                pointer <= 2'd2;
            end
        end

        2'd2:
        begin
            if(req[2])
            begin
                grant <= 4'b0100;
                pointer <= 2'd3;
            end
        end

        2'd3:
        begin
            if(req[3])
            begin
                grant <= 4'b1000;
                pointer <= 2'd0;
            end
        end

        endcase

    end

end

endmodule