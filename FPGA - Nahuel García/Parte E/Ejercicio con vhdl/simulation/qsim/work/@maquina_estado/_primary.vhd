library verilog;
use verilog.vl_types.all;
entity Maquina_estado is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        z               : out    vl_logic_vector(3 downto 0)
    );
end Maquina_estado;
