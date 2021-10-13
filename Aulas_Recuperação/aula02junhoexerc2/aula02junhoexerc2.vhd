-- PSD // exercicios
library ieee;
use ieee.std_logic_1164.all;

entity aula02junhoexerc2 is
port (clk: in std_logic;
      saida: OUT std_logic);
            
end aula02junhoexerc2;

architecture arch of aula02junhoexerc2 is

begin
    process (clk)
	 begin
		if (clk = '1') then
			saida <= '1';
		else
			saida <= '0';
       end if;
    end process;
end arch;