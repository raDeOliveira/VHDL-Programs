-- exercicio 5 // "BEEP"
library ieee;
use ieee.std_logic_1164.all;

entity beep is
	port (estado0, estado1: IN std_logic;
			beep: OUT std_logic);			
end beep;

architecture arch of beep is

begin
process (estado0, estado1)
	begin
		if(estado0 <= '1') and (estado1 <= '1') then
			beep <= '1';
		else
			beep <= '0';
		end if;
	end process;
end arch;