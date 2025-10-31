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
-- CREATED		"Fri Oct 24 13:21:14 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Multiplicador2x2 IS 
	PORT
	(
		A1 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		P3 :  OUT  STD_LOGIC;
		P2 :  OUT  STD_LOGIC;
		P1 :  OUT  STD_LOGIC;
		P0 :  OUT  STD_LOGIC
	);
END Multiplicador2x2;

ARCHITECTURE bdf_type OF Multiplicador2x2 IS 

COMPONENT sumador_completo
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_6 <= '0';



b2v_inst : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 Cin => SYNTHESIZED_WIRE_6,
		 S => P1,
		 Cout => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_1 <= A0 AND B1;


SYNTHESIZED_WIRE_4 <= B1 AND A1;



b2v_inst7 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_6,
		 B => SYNTHESIZED_WIRE_4,
		 Cin => SYNTHESIZED_WIRE_5,
		 S => P2,
		 Cout => P3);


P0 <= B0 AND A0;


SYNTHESIZED_WIRE_0 <= B0 AND A1;


END bdf_type;