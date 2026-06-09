/*
--------------------------------------------------
Module Name : tb_register_nonblocking
Description :
Testbench for Non-Blocking Assignment Register
--------------------------------------------------
*/

module tb_register_nonblocking;

reg clk_in;
reg data_in;

wire data_out;


// DUT Instantiation

register_nonblocking dut (

    .clk_in (clk_in),
    .data_in(data_in),

    .data_out(data_out)

);


// Clock Generation

always #5 clk_in = ~clk_in;


// Stimulus

initial begin

    clk_in  = 1'b0;
    data_in = 1'b0;

    #10;

    data_in = 1'b1;

    #10;

    data_in = 1'b0;

    #10;

    data_in = 1'b1;

    #10;

    data_in = 1'b0;

    #20;

    $finish;

end


// Monitor

initial begin

    $display("--------------------------------");
    $display("Time\tCLK\tDATA_IN\tDATA_OUT");
    $display("--------------------------------");

    $monitor("%0t\t%b\t%b\t%b",
              $time,
              clk_in,
              data_in,
              data_out);

end

endmodule