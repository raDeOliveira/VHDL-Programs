-- Gerador //
library ieee;
use ieee.std_logic_1164.all; 

entity gerador is
port(
    clk, reset : in std_logic;
    GERA : in std_logic;
    Moore_ot: out std_logic 
);
end gerador;

architecture arch of gerador is 
    type stateMoore_type is (zero, um); 
    signal stateMoore_reg, stateMoore_next : stateMoore_type;
    
begin   
    process(clk, reset)
    begin
        if (reset = '1') then 
            stateMoore_reg <= zero;
        elsif (clk'event and clk = '1') then 
            stateMoore_reg <= stateMoore_next;
        else
            null;
        end if; 
    end process;
	 
process(stateMoore_reg, GERA)
begin     
	  stateMoore_next <= stateMoore_reg; 
	  case stateMoore_reg is 
			when zero =>   
				 if GERA = '1' then  
					  stateMoore_next <= um; 
				 else 
					  stateMoore_next <= zero;
							  Moore_ot <= '0';
				 end if; 
			when um =>  
				 if GERA = '1' then 
					  stateMoore_next <= zero; 
				 else 
					  stateMoore_next <= um;
							  Moore_ot <= '1'; 
				 end if; 
        end case; 
    end process;  
end arch;