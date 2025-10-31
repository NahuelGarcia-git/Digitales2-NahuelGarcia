library verilog;
use verilog.vl_types.all;
entity multiplicador_mod_ca2_vlg_check_tst is
    port(
        R_ca2           : in     vl_logic_vector(3 downto 0);
        R_mod           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplicador_mod_ca2_vlg_check_tst;
