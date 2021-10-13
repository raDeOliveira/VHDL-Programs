-- exercicio 5 // "BEEP"
library ieee;
use ieee.std_logic_1164.all;
entity Beep is
	port (estadoA: IN std_logic := '0';
			estadoB: IN std_logic := '0';
			beep: OUT std_logic);
			
end beep;
architecture SINAL of beep is
begin
	verifica: process (estadoA, estadoB) begin
		if (rising_edge(estadoA)) and (estadoB <= '1') then
		beep <= '1';
			else
			beep <= '0';
		end if;
	end process;
end SINAL;
end;