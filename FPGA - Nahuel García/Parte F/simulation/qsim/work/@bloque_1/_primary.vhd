library verilog;
use verilog.vl_types.all;
entity Bloque_1 is
    port(
        hab_dir         : in     vl_logic;
        scl             : in     vl_logic;
        sda             : in     vl_logic;
        hab_dat         : in     vl_logic;
        scl2            : in     vl_logic;
        clock           : in     vl_logic
    );
end Bloque_1;
