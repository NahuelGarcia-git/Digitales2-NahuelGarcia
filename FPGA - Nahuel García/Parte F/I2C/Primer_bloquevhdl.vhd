-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sun Nov 02 14:49:55 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Primer_bloque IS 
	PORT
	(
		scl :  IN  STD_LOGIC;
		hab_dir :  IN  STD_LOGIC;
		sda :  IN  STD_LOGIC;
		soy :  OUT  STD_LOGIC;
		fin_dir :  OUT  STD_LOGIC
	);
END Primer_bloque;

ARCHITECTURE bdf_type OF Primer_bloque IS 

COMPONENT lpm_compare0
	PORT(dataa : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter0
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_shiftreg0
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



b2v_Comparador : lpm_compare0
PORT MAP(dataa => SYNTHESIZED_WIRE_0,
		 aeb => soy);


b2v_Contador_modulo7 : lpm_counter0
PORT MAP(clock => SYNTHESIZED_WIRE_3,
		 cout => fin_dir);


SYNTHESIZED_WIRE_3 <= hab_dir AND scl;


b2v_Registro_7bits : lpm_shiftreg0
PORT MAP(clock => SYNTHESIZED_WIRE_3,
		 shiftin => sda,
		 q => SYNTHESIZED_WIRE_0);


END bdf_type;