library verilog;
use verilog.vl_types.all;
entity I2C_vlg_check_tst is
    port(
        ack             : in     vl_logic;
        hab_dat         : in     vl_logic;
        hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end I2C_vlg_check_tst;
