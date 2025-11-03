library verilog;
use verilog.vl_types.all;
entity Inter_Integrated_Circuit is
    port(
        ack             : out    vl_logic;
        scl             : in     vl_logic;
        sda             : in     vl_logic;
        hab_dir         : out    vl_logic;
        hab_dat         : out    vl_logic
    );
end Inter_Integrated_Circuit;
