library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sumador_testbench is
end entity;
--Defino la arquitectura del testbench
architecture comportamiento of sumador_testbench is
  component Sumador_Completo --Delaracion del componente (lo que quiero simular).
  Port (A : in std_logic;
       B : in std_logic;
		 Cin : in std_logic;
		 S : out std_logic;
		 Cout : out std_logic);
  end component; 
  --Señales de entrada y salida
   signal A_tb : std_logic := '0';    -- Asigno el valor a la señal.
	signal B_tb : std_logic := '0';
	signal Cin_tb : std_logic := '0';
   signal S_tb : std_logic;           -- A las salidas no les asigno valor porque justamente son salidas.
	signal Cout_tb : std_logic; 
	constant tiempodelay : time := 10 ns; -- Lo defino acá por si lo cambio en otro momento
	begin                           
	-- Unidad bajo prueba(Unit Under Test).
	-- El port map es de mapeo o conexión,conecta los pines del programa con los de la simulacion. 
	uut:Sumador_Completo 
		Port map( 
		A => A_tb,
		B => B_tb,
		Cin => Cin_tb,
		S => S_tb,
		Cout => Cout_tb);
--La señal que yo llamé A_tb en mi testbench debe ser conectada directamente al puerto A de mi Sumador Completo.
--En el testbench escribo A_tb <= '1';
--El port map (A => A_tb),transfiere el valor '1'inmediatamente al puerto A del circuito Sumador_Completo.
	
-- Proceso que genera las señales de entrada (estímulos)
    stimulus_process : process
	  begin
	  -- Caso 0: A=0 B=0 Cin=0 -> S=0 Cout=0
        A_tb <= '0'; B_tb <= '0'; Cin_tb <= '0';
        wait for tiempodelay;
	  -- Caso 1: A=0 B=0 Cin=1 -> S=1 Cout=0
	     A_tb <= '0'; B_tb <= '0'; Cin_tb <= '1';
		  wait for tiempodelay;
	  -- Caso 2: A=0 B=1 Cin=0 -> S=1 Cout=0
	     A_tb <= '0'; B_tb <= '1'; Cin_tb <= '0';
		  wait for tiempodelay;
	  -- Caso 3: A=0 B=1 Cin=1 -> S=0 Cout=1
	     A_tb <= '0'; B_tb <= '1'; Cin_tb <= '1';
		  wait for tiempodelay;
	  -- Caso 4: A=1 B=0 Cin=0 -> S=1 Cout=0
	     A_tb <= '1'; B_tb <= '0'; Cout_tb <= '0';
	  -- Caso 5: A=1 B=0 Cin=1 -> S=0 Cout=1
	     A_tb <= '1'; B_tb <= '0'; Cin_tb <= '1';
		  wait for tiempodelay;
	  -- Caso 6: A=1 B=1 Cin=0 -> S=0 Cout=1
	     A_tb <= '1'; B_tb <='1'; Cin_tb <='0';
		  wait for tiempodelay;
	  -- Caso 7: A=1 B=1 Cin=1 -> S=1 Cout=1
	     A_tb <= '1'; B_tb <= '1'; Cout_tb <= '1';
		  wait for tiempodelay;
        
		  wait;
    end process;

end architecture;