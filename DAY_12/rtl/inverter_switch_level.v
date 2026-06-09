/*
--------------------------------------------------
Module Name : inverter_switch_level
Description : CMOS Inverter using
              Switch-Level Modeling
--------------------------------------------------
*/

module inverter_switch_level (

    input  wire a_in,
    output wire a_out

);

supply1 vdd;
supply0 gnd;

pmos pmos_inst (
    a_out,
    vdd,
    a_in
);

nmos nmos_inst (
    a_out,
    gnd,
    a_in
);

endmodule