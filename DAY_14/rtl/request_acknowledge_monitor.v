module request_acknowledge_monitor (

    input  wire req_in,
    input  wire ack_in,

    output wire grant_out

);

assign grant_out = req_in & ack_in;

endmodule