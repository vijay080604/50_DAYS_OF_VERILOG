module crc4_generator (

    input  wire [7:0] message_in,
    output reg  [3:0] crc_out

);

integer i;

reg feedback;

reg [3:0] crc;

always @(*)
begin

    crc = 4'b0000;

    for(i = 7; i >= 0; i = i - 1)
    begin

        feedback = message_in[i] ^ crc[3];

        crc[3] = crc[2];
        crc[2] = crc[1];
        crc[1] = crc[0] ^ feedback;
        crc[0] = feedback;

    end

    crc_out = crc;

end

endmodule