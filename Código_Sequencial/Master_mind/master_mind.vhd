-- MasterMind PSD
library ieee;
use ieee.std_logic_1164.all;

entity master_mind is
	port (ja_pino0, ja_pino1, ja_pino2, ja_pino3, ja_pino4: IN std_logic;-- variáveis entrada
			jb_pino0, jb_pino1, jb_pino2, jb_pino3, jb_pino4: IN std_logic;
			led0, led1, led2, led3, led4: OUT std_logic;-- sinais saida
			flag: out boolean);-- lógico
			
end master_mind;

architecture arch of master_mind is

begin
process (ja_pino0, ja_pino1, ja_pino2, ja_pino3, ja_pino4, jb_pino0, jb_pino1, jb_pino2, jb_pino3, jb_pino4)
	begin
		if(ja_pino0 = jb_pino0)then
			flag <= true;
			led0 <= '1';
		else
			flag <= false;
			led0 <= '1';
		end if;
		
		if(ja_pino1 = jb_pino1) then
			flag <= true;
			led1 <= '1';
		else
			flag <= false;
			led1 <= '0';
		end if;
		
		if(ja_pino2 = jb_pino2) then
			flag <= true;
			led2 <= '1';
		else
			flag <= false;
			led2 <= '0';
		end if;
		
		if(ja_pino3 = jb_pino3) then
			flag <= true;
			led3 <= '1';
		else
			flag <= false;
			led3 <= '0';
		end if;
		
		if(ja_pino4 = jb_pino4)then
			flag <= true;
			led4 <= '1';
		else
			flag <= false;
			led4 <= '0';
		end if;
		
	end process;
end arch;