/*
--------------------------------------------------
Module Name : tb_valid_ready_handshake
Description :
Testbench for Valid-Ready Handshake
--------------------------------------------------
*/

module tb_valid_ready_handshake;

reg valid_in;
reg ready_in;

wire transfer_out;


// DUT Instantiation

valid_ready_handshake dut (

    .valid_in(valid_in),
    .ready_in(ready_in),

    .transfer_out(transfer_out)

);


// Test Stimulus

initial begin

    $display("--------------------------------------");
    $display("VALID READY | TRANSFER");
    $display("--------------------------------------");

    // Case 1 : Neither valid nor ready
    valid_in = 1'b0;
    ready_in = 1'b0;

    #10;

    // Case 2 : Only ready asserted
    valid_in = 1'b0;
    ready_in = 1'b1;

    #10;

    // Case 3 : Only valid asserted
    valid_in = 1'b1;
    ready_in = 1'b0;

    #10;

    // Case 4 : Both asserted
    valid_in = 1'b1;
    ready_in = 1'b1;

    #10;

    // Case 5 : Deassert ready
    valid_in = 1'b1;
    ready_in = 1'b0;

    #10;

    // Case 6 : Deassert valid
    valid_in = 1'b0;
    ready_in = 1'b1;

    #10;

    // Case 7 : Both low again
    valid_in = 1'b0;
    ready_in = 1'b0;

    #10;

    $finish;

end


// Monitor

initial begin

    $monitor(
        "%b      %b     |    %b",
        valid_in,
        ready_in,
        transfer_out
    );

end

endmodule