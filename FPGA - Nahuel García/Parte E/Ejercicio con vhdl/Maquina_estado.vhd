library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Maquina_estado is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        x     : in  STD_LOGIC;
        z     : out STD_LOGIC_VECTOR (3 downto 0) -- Salida de 4 bits.
    );
end entity;

architecture comportamiento of Maquina_estado is
    type estado_tipo is (estado_A, estado_B, estado_C, estado_D, estado_E, estado_F, estado_G); --Defino los estados
    signal presente_estado : estado_tipo; -- El estado actual
    signal siguiente_estado : estado_tipo; -- El estado siguiente

begin
    process (clk, reset)
    begin
        if reset = '1' then
            presente_estado <= estado_A; --Asigno a "A" como estado inicial
        elsif falling_edge(clk) then      --Asigno el flanco
            presente_estado <= siguiente_estado;
        end if;
    end process;
	 
    process (presente_estado, x)   --Defino las transiciones
    begin
        siguiente_estado <= presente_estado;
        case presente_estado is

            when estado_A =>
                if x = '0' then
                    siguiente_estado <= estado_B;
                elsif x = '1' then
                    siguiente_estado <= estado_E;
                end if;

            when estado_B =>
                siguiente_estado <= estado_C; 
                
            when estado_C =>
                if x = '0' then
                    siguiente_estado <= estado_D;
                elsif x = '1' then
                    siguiente_estado <= estado_G;
                end if;
                
            when estado_D =>
                siguiente_estado <= estado_A;
                
            when estado_E =>
                siguiente_estado <= estado_F;
					 
            when estado_F =>
                siguiente_estado <= estado_C;
                
            when estado_G =>
                siguiente_estado <= estado_A;

            when others =>
                siguiente_estado <= estado_A; -- Estado seguro

        end case;
    end process;
    
    process (presente_estado, x)   --Defino la salida para cada caso
    begin
        z <= (others => '0');

        case presente_estado is
		  
            when estado_A =>
                if x = '0' then
                    z <= "0110"; -- A -> B
                elsif x = '1' then
                    z <= "1000"; -- A -> E
                else
                    z <= (others => '0');
                end if;

            when estado_B =>
                z <= "1111"; 
                
            when estado_C =>
                if x = '0' then
                    z <= "1001"; -- C -> D
                elsif x = '1' then
                    z <= "1110"; -- C -> G
                end if;
                
            when estado_D =>
                z <= "0000"; -- D -> A
                
            when estado_E =>
                z <= "1100"; -- E -> F
                
            when estado_F =>
                z <= "1111"; -- F -> C 
                
            when estado_G =>
                z <= "0000"; -- G -> A

            when others =>
                z <= (others => 'Z'); --Alta impedancida para los que no estan definidos

        end case;
    end process;

end architecture;