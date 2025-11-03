library verilog;
use verilog.vl_types.all;
entity Inter_Integrated_Circuit_vlg_check_tst is
    port(
        ack             : in     vl_logic;
        hab_dat         : in     vl_logic;
        hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Inter_Integrated_Circuit_vlg_check_tst;
