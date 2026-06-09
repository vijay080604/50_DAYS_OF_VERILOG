/*
--------------------------------------------------
Module Name : tb_simple_memory
Description :
Memory Transactions using Tasks
--------------------------------------------------
*/

module tb_simple_memory;

reg clk_in;

reg write_enable_in;
reg read_enable_in;

reg [3:0] address_in;
reg [7:0] write_data_in;

wire [7:0] read_data_out;


simple_memory dut (

    .clk_in(clk_in),

    .write_enable_in(write_enable_in),
    .read_enable_in(read_enable_in),

    .address_in(address_in),
    .write_data_in(write_data_in),

    .read_data_out(read_data_out)

);


// Clock

always #5 clk_in = ~clk_in;


//////////////////////////////////////////////////
// WRITE TASK
//////////////////////////////////////////////////

task memory_write;

    input [3:0] address;
    input [7:0] data;

begin

    @(posedge clk_in);

    write_enable_in = 1'b1;
    read_enable_in  = 1'b0;

    address_in    = address;
    write_data_in = data;

    @(posedge clk_in);

    write_enable_in = 1'b0;

end

endtask


//////////////////////////////////////////////////
// READ TASK
//////////////////////////////////////////////////

task memory_read;

    input [3:0] address;

begin

    @(posedge clk_in);

    write_enable_in = 1'b0;
    read_enable_in  = 1'b1;

    address_in = address;

    @(posedge clk_in);

    read_enable_in = 1'b0;

end

endtask


//////////////////////////////////////////////////
// TEST SEQUENCE
//////////////////////////////////////////////////

initial begin

    clk_in = 1'b0;

    write_enable_in = 1'b0;
    read_enable_in  = 1'b0;

    address_in    = 4'd0;
    write_data_in = 8'd0;


    // Write Operations

    memory_write(4'd0, 8'd10);

    memory_write(4'd1, 8'd20);

    memory_write(4'd2, 8'd30);


    // Read Operations

    memory_read(4'd0);

    #10;

    memory_read(4'd1);

    #10;

    memory_read(4'd2);

    #10;

    $finish;

end


//////////////////////////////////////////////////
// MONITOR
//////////////////////////////////////////////////

initial begin

    $monitor(
        "Time=%0t Addr=%0d WriteData=%0d ReadData=%0d",
        $time,
        address_in,
        write_data_in,
        read_data_out
    );

end

endmodule