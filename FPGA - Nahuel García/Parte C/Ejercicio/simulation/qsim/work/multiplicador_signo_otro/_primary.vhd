library verilog;
use verilog.vl_types.all;
entity multiplicador_signo_otro is
    port(
        r0              : out    vl_logic;
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        B0              : in     vl_logic;
        B1              : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        r3              : out    vl_logic
    );
end multiplicador_signo_otro;
