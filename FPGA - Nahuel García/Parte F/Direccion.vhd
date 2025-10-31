library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity direccion is
  Port (D : out STD_LOGIC_VECTOR (6 downto 0));   --Necesito generar un vector para luego asignarle el valor que quiera
  end entity;
architecture comportamiento of direccion is
 begin
  D <="1111111";             -- Agrego la direccion, me conviene que sea 1111111 porque es mas facil de graficar
 end architecture;