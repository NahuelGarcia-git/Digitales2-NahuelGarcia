library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Direccion_7bits is
  Port (D : out STD_LOGIC_VECTOR (6 downto 0));   --Necesito generar un vector para luego asignarle el valor que quiera
  end entity;
architecture comportamiento of Direccion_7bits is
 begin
  D <="0100011";             -- Agrego la direccion, utilizo el ejemplo de la teoria
 end architecture;