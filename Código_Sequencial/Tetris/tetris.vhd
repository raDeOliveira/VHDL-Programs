-- Tetris //
library ieee;
use ieee.std_logic_1164.all;

entity tetris is
port (branco: IN bit_vector(3 downto 0);
		preto: IN bit_vector(3 downto 0);
		flag: buffer boolean := false);
end tetris;

architecture arch of tetris is

begin
	process (branco, preto, flag)
		begin
		
			if branco(0) = '1' and preto(0) = '1' then
				flag <= true;
			else
				flag <= false;
			end if;
			
			if branco(1) = '1' and preto(1) = '1' then
				flag <= true;
			else
				flag <= false;
			end if;
			
			if branco(2) = '1' and preto(2) = '1' then
				flag <= true;
			else
				flag <= false;
			end if;
			
			if branco(3) = '1' and preto(3) = '1' then
				flag <= true;
			else
				flag <= false;
			end if;
			
	end process;
end arch;