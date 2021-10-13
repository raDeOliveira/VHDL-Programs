-- Joga Dado //
library ieee;
use ieee.std_logic_1164.all; 

entity jogadado is
port(
    clk, reset : in std_logic;
    joga : in std_logic;
    s_OUT: out std_logic_vector(6 downto 0));
end jogadado;

architecture arch of jogadado is
    type stateMoore_type is (zero, um, dois, tres, quatro, cinco, seis); 
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
	 
	 --moore machine	 
 process(stateMoore_reg, joga)
	 begin
	 stateMoore_next <= stateMoore_reg;
		 case stateMoore_reg is
				when zero =>
				if joga = '1' then  
					stateMoore_next <= um;
				else
					stateMoore_next <= zero;
					s_OUT <= "0001000";
				end if;
				
				when um =>
				if joga = '1' then
					stateMoore_next <= dois;
				else
					stateMoore_next <= um;
					s_OUT <= "1000001";
				end if;
				
				when dois =>
				if joga = '1' then
					stateMoore_next <= tres;
				else
					stateMoore_next <= dois;
					s_OUT <= "1001001";
				end if;
				
				when tres =>
				if joga = '1' then
					stateMoore_next <= quatro;
				else
					stateMoore_next <= tres;
					s_OUT <= "1010101";
				end if;
				
				when quatro =>
				if joga = '1' then
					stateMoore_next <= cinco;
				else
					stateMoore_next <= quatro;
					s_OUT <= "1011101";
				end if;
				
				when cinco =>
				if joga = '1' then
					stateMoore_next <= seis;
				else
					stateMoore_next <= cinco;
					s_OUT <= "1110111";
				end if;
				
				when seis =>
				if joga = '0' then
					stateMoore_next <= zero;
				else
					stateMoore_next <= seis;
					s_OUT <= "0001000";
				end if;
				
		end case; 
    end process;  
end arch;