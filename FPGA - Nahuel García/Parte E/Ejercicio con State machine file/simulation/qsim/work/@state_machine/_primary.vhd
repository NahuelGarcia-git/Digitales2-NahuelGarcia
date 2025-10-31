library verilog;
use verilog.vl_types.all;
entity State_machine is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        x               : in     vl_logic;
        z1              : out    vl_logic;
        z2              : out    vl_logic;
        z3              : out    vl_logic;
        z4              : out    vl_logic
    );
end State_machine;
