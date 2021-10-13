-- Verifica Moore//
library ieee;
use ieee.std_logic_1164.all; 

entity verificaMoore2 is
port(	clk, start : in std_logic;
		saida_moore: buffer std_logic;
		saida_mealy: out std_logic);
end verificaMoore2;

architecture arch of verificaMoore2 is
    type stateMoore_type is (zero, um); 
    signal stateMoore_reg, stateMoore_next : stateMoore_type;
	 
	 type stateMealy_type is (zero, um);
    signal stateMealy_reg, stateMealy_next : stateMealy_type;

----------
-- moore--
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then 
            stateMoore_reg <= stateMoore_next;
        else
            null;
        end if; 
    end process;

 process(stateMoore_reg, start)
     begin
     stateMoore_next <= stateMoore_reg;
         case stateMoore_reg is
               when zero =>
					if start = '1' then
					  stateMoore_next <= um;
					  saida_moore <= '1';
					end if;
					
					when um =>
					if start = '1' then
						stateMoore_next <= zero;
						saida_moore <= '0';
					end if;
					
            end case;
        end process;
		 end arch;