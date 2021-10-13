-- aula 26/03/2020 PSD - Alarme
library ieee;
use ieee.std_logic_1164.all;

entity alarme is
	port (s0, s1, s2, s3: in std_logic;
			clk : in std_logic;
			saida: out std_logic);
end alarme;

architecture arch of alarme is

begin
process (clk) is
begin
		if (clk'event and clk = '1')then
			if (s0 = '0') and	(s1 = '0') and (s2 = '0') and (s3 = '0') then
				saida <= '1';
			else
				saida <= '0';
			end if;
		end if;
	end process;
end arch;