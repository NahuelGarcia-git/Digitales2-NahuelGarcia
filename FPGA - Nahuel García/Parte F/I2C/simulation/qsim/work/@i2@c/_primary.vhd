library verilog;
use verilog.vl_types.all;
entity I2C is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        soy             : in     vl_logic;
        fin_dir         : in     vl_logic;
        fin_dato        : in     vl_logic;
        sda             : in     vl_logic;
        ack             : out    vl_logic;
        hab_dir         : out    vl_logic;
        hab_dat         : out    vl_logic
    );
end I2C;
