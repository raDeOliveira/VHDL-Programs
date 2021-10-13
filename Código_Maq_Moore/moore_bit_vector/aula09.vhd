library ieee;
use ieee.std_logic_1164.all; 
--Moore configurável //

entity aula09 is
port(	clk, start : in std_logic;
		s1, s2, s3: out bit_vector (1 downto 0));
end aula09;

architecture arch of aula09 is
    type stateMoore_type is (zero, um, dois); 
    signal stateMoore_reg, stateMoore_next : stateMoore_type;

----------
-- moore--
begin   
    process(clk, start)
    begin
        if (start = '1') then 
            stateMoore_reg <= zero;
        elsif (clk'event and clk = '1') then 
            stateMoore_reg <= stateMoore_next;
        else
            null;
        end if; 
    end process;

 process(stateMoore_reg)
     begin
     stateMoore_next <= stateMoore_reg;
         case stateMoore_reg is
			
				when zero =>
				stateMoore_next <= um;
					s1 <= "11";
					s2 <= "00";
					s3 <= "00";
				
				when um =>
				stateMoore_next <= dois;
					s1 <= "00";
					s2 <= "11";
					s3 <= "00";
				
				when dois =>
				stateMoore_next <= zero;
					s1 <= "00";
					s2 <= "00";
					s3 <= "11";
			end case;
			
		end process;
end arch;