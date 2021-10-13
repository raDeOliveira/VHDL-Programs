-- Verifica Moore//
library ieee;
use ieee.std_logic_1164.all; 

entity verificamoore3 is
port(	clk, start : in std_logic;
		saida_moore: buffer std_logic;
		saida_mealy: out std_logic);
end verificamoore3;

architecture arch of verificamoore3 is
    type stateMoore_type is (zero, um); 
    signal stateMoore_reg, stateMoore_next : stateMoore_type;
	 
	 type stateMealy_type is (zero, um);
    signal stateMealy_reg, stateMealy_next : stateMealy_type;

---------
--mealy--
begin
    process(clk, start)
    begin
			if (start = '1') then 
            stateMealy_reg <= zero;
        elsif (clk'event and clk = '1') then
            stateMealy_reg <= stateMealy_next;
        else
            null;
        end if; 
    end process;
	 
 process(stateMealy_reg)
 begin 
	  stateMealy_next <= stateMealy_reg;
	  case stateMealy_reg is 
			when zero =>
				if saida_moore = '1' then
					  stateMealy_next <= um;
					  saida_mealy <= '1';
				end if;
				
			when um =>
				if saida_moore = '0' then
					stateMealy_next <= zero;
				  saida_mealy <= '0';
				end if;
	  end case; 
 end process;
end arch; 