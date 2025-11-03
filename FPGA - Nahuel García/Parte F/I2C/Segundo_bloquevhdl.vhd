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
-- CREATED		"Sun Nov 02 14:54:31 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Segundo_bloque IS 
	PORT
	(
		hab_dat :  IN  STD_LOGIC;
		scl :  IN  STD_LOGIC;
		sda :  IN  STD_LOGIC;
		fin_dato :  OUT  STD_LOGIC
	);
END Segundo_bloque;

ARCHITECTURE bdf_type OF Segundo_bloque IS 

COMPONENT lpm_counter1
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_shiftreg1
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_Contador_modulo8 : lpm_counter1
PORT MAP(clock => SYNTHESIZED_WIRE_2,
		 cout => fin_dato);


SYNTHESIZED_WIRE_2 <= hab_dat AND scl;


b2v_Registro_8bits : lpm_shiftreg1
PORT MAP(clock => SYNTHESIZED_WIRE_2,
		 shiftin => sda);


END bdf_type;