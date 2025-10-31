library verilog;
use verilog.vl_types.all;
entity multiplicador_mod_ca2 is
    port(
        A_in            : in     vl_logic_vector(1 downto 0);
        B_in            : in     vl_logic_vector(1 downto 0);
        R_mod           : out    vl_logic_vector(3 downto 0);
        R_ca2           : out    vl_logic_vector(3 downto 0)
    );
end multiplicador_mod_ca2;
