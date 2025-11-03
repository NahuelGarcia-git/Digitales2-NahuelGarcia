library verilog;
use verilog.vl_types.all;
entity Inter_Integrated_Circuit_vlg_sample_tst is
    port(
        scl             : in     vl_logic;
        sda             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Inter_Integrated_Circuit_vlg_sample_tst;
