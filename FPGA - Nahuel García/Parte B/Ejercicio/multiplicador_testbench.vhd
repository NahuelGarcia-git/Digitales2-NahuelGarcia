library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplicador_testbench is
end entity;
--Defino la arquitectura del testbench
architecture comportamiento of multiplicador_testbench is
  component Multiplicador2x2 --Delaracion del componente (lo que quiero simular).
  Port (A0 : in std_logic;
        A1 : in std_logic;
        B1 : in std_logic;
		  B0 : in std_logic;
        P3 : out std_logic;
		  P2 : out std_logic;
        P1 : out std_logic;
        P0 : out std_logic);
  end component; 
  --Señales de entrada y salida
   signal A1_tb : std_logic := '0';    -- Asigno el valor a la señal.
	signal A0_tb : std_logic := '0';
   signal B1_tb : std_logic := '0';
	signal B0_tb : std_logic := '0';
   signal P3_tb: std_logic;           -- A las salidas no les asigno valor porque justamente son salidas.
	signal P2_tb: std_logic;
	signal P1_tb: std_logic;
	signal P0_tb: std_logic;
	constant tiempodelay : time := 30 ns; -- Lo defino acá por si lo cambio en otro momento
	begin                           
	-- Unidad bajo prueba(Unit Under Test).
	-- El port map es de mapeo o conexión,conecta los pines del programa con los de la simulacion. 
	uut:Multiplicador2x2 
		Port map( 
		A1 => A1_tb,
		A0 => A0_tb,
		B1 => B1_tb,
		B0 => B0_tb,
		P3 => P3_tb,
		P2 => P2_tb,
		P1 => P1_tb,
		P0 => P0_tb);
    stimulus_process : process
	  begin
	  -- Caso 0: 
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 1:
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 2: 
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '0';
        wait for tiempodelay;
     -- Caso 3: 
        A1_tb <= '0'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '1';
        wait for tiempodelay;
     -- Caso 4: 
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 5: 
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 6: 
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 7: 
        A1_tb <= '0'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 8: 
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 9: 
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '0'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 10: 
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 11: 
        A1_tb <= '1'; A0_tb <= '0'; B1_tb <= '1'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 12: 
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 13: 
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '0'; B0_tb <= '1';
        wait for tiempodelay;
	  -- Caso 14: 
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '0';
        wait for tiempodelay;
	  -- Caso 15: 
        A1_tb <= '1'; A0_tb <= '1'; B1_tb <= '1'; B0_tb <= '1';
        wait for tiempodelay;
        
		  wait;
    end process;

end architecture;