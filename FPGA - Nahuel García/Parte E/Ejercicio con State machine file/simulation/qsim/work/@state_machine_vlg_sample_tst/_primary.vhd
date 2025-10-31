library verilog;
use verilog.vl_types.all;
entity State_machine_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end State_machine_vlg_sample_tst;
