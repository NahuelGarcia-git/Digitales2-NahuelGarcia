library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador_Completo is
 Port (A : in std_logic;
       B : in std_logic;
		 Cin : in std_logic;
		 S : out std_logic;
		 Cout : out std_logic);
end entity;

architecture comportamiento of Sumador_Completo is
signal cxor : std_logic;
signal cand1 : std_logic;
signal cand2 : std_logic;
signal cand3 : std_logic;
begin
 cxor <= (B xor Cin);
 cand1 <= (B and Cin);
 cand2 <= (B and A);
 cand3 <= (A and Cin);
 S <= (A xor cxor);
 Cout <= (cand1 or cand2 or cand3);
end architecture;