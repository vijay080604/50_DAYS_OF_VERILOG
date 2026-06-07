module excess3_converter (
    input  [3:0] bcd_in,
    output [3:0] excess3_out
);

assign excess3_out = bcd_in + 4'd3;

endmodule