-- exercicio 5 // "BEEP"
library ieee;
use ieee.std_logic_1164.all;

entity beep_clock is
	port (estadoA: IN std_logic;
			estadoB: IN std_logic;
			beep: OUT std_logic);
end beep_clock;

architecture arch of beep_clock is

begin
process (estadoA, estadoB)
	begin
		if (rising_edge(estadoA)) = (rising_edge(estadob))then
			beep <= '1';
		elsif if (falling_edge(estadoA)) = (falling_edge(estadob))then
			beep <= '0';
		end if;
	end process;
end arch;