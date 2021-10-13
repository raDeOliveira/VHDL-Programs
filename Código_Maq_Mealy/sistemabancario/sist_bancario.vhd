-- Sist bancario
library ieee;
use ieee.std_logic_1164.all; 

entity sistemabancario is
port(
    clk : in std_logic;
    sequencia : in std_logic_vector(3 downto 0);
    alarme: out std_logic );
end sistemabancario;

architecture arch of sistemabancario is 
    type stateMealy_type is (um, dois, tres);
    signal present_state, next_state : stateMealy_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then
            present_state <= next_state;
        else
            null;
        end if; 
    end process;
    
    -- Mealy
    process(present_state)
    begin 
        next_state <= present_state;
        
        alarme <= '0';
        case present_state is 
            when um => 
				 if sequencia = "1001" then
					  next_state <= dois;
					  alarme <= '1';
					  
				 elsif sequencia = "1000" then
					  next_state <= tres;
					  alarme <= '1';
				 else
					next_state <= um;
					alarme <= '0';
				end if;
				when others => null;
        end case;
    end process;
end arch; 