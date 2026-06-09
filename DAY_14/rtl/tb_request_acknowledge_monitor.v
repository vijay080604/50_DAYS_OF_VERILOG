/*
--------------------------------------------------
Module Name : tb_request_acknowledge_monitor
Description :
Testbench for request-acknowledge monitor
--------------------------------------------------
*/

module tb_request_acknowledge_monitor;

reg req_in;
reg ack_in;

wire grant_out;


request_acknowledge_monitor dut (

    .req_in(req_in),
    .ack_in(ack_in),

    .grant_out(grant_out)

);


initial begin

    $display("--------------------------------");
    $display("REQ ACK | GRANT");
    $display("--------------------------------");

    req_in = 1'b0;
    ack_in = 1'b0;

    #10;

    req_in = 1'b1;
    ack_in = 1'b0;

    #10;

    req_in = 1'b0;
    ack_in = 1'b1;

    #10;

    req_in = 1'b1;
    ack_in = 1'b1;

    #10;

    req_in = 1'b1;
    ack_in = 1'b0;

    #10;

    req_in = 1'b0;
    ack_in = 1'b0;

    #10;

    $finish;

end


initial begin

    $monitor(
        "%b    %b   |   %b",
        req_in,
        ack_in,
        grant_out
    );

end

endmodule