library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity multiplicador_testbench is
end entity;

architecture comportamiento of multiplicador_testbench is
    component multiplicador_signo_vhd
    Port (
        A0    : in STD_LOGIC;
        A1    : in STD_LOGIC;
        B1    : in STD_LOGIC;
        B0    : in STD_LOGIC;
        clock : in STD_LOGIC;
        r0    : out STD_LOGIC;
        r1    : out STD_LOGIC;
        r2    : out STD_LOGIC;
        r3    : out STD_LOGIC
    );
    end component;
	 
    signal clk_tb, A1_tb, A0_tb, B1_tb, B0_tb : std_logic := '0';
    signal R3_tb, R2_tb, R1_tb, R0_tb : std_logic;
    constant tiempodelay : time := 30 ns;
    
begin
    uut: multiplicador_signo_vhd Port map (
        clock => clk_tb,
        A1    => A1_tb,
        A0    => A0_tb,
        B1    => B1_tb,
        B0    => B0_tb,
        r3    => R3_tb,
        r2    => R2_tb,
        r1    => R1_tb,
        r0    => R0_tb
    );
    stimulus_process : process
	  begin
        wait for tiempodelay; 
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '0'; wait for tiempodelay ;
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '1'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '0'; wait for tiempodelay;
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '1'; wait for tiempodelay;


        wait;
    end process;
	 end architecture;