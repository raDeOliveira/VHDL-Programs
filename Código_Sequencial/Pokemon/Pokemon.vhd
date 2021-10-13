-- Pokemon//
library ieee;
use ieee.std_logic_1164.all; 

entity Pokemon is
port(	jogador1, jogador2: in std_logic;
		pk_Win, pk_Tie: out std_logic);
end Pokemon;

architecture arch of Pokemon is
begin
	pokemon: process(jogador1, jogador2)
	begin
			if(jogador1 > jogador2) then
				Pk_Win <= '1';
				else
				pk_Win <= '0';
			end if;
			
			if (jogador1 < jogador2) then
				pk_Win <= '1';
				else
				pk_Win <= '0';
			end if;
			
			if (jogador1 = jogador2) then
				pk_Tie <= '1';
			else
				pk_Tie <= '0';
			end if;
			
		end process;
	end arch;