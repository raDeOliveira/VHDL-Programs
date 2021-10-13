-- Slot Machine//
library ieee;
use ieee.std_logic_1164.all; 

entity slotMachine is
port(
    clk_zero, clk_um, clk_dois, start : in std_logic;
    s_OUT_zero: out std_logic_vector(2 downto 0);
	 s_OUT_um: out std_logic_vector(2 downto 0);
	 s_OUT_dois: out std_logic_vector(2 downto 0);
	 s_OUT_resultado: out std_logic);
end slotMachine;

architecture arch of slotMachine is
    type stateMoore_type is (zero, um, dois); 
    signal stateMoore_reg, stateMoore_next : stateMoore_type;

--
--máquina um	 
begin   
    process(clk_zero, start)
    begin
        if (start = '1') then 
            stateMoore_reg <= zero;
        elsif (clk0'event and clk0 = '1') then 
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
					s_OUT_zero <= "001";
				end if;
				
				when um =>
				if start = '1' then
					stateMoore_next <= dois;
					s_OUT_zero <= "010";
				end if;
					
				when dois =>
				if start = '1' then
					stateMoore_next <= tres;
					s_OUT_zero <= "111";
				end if;
			end case;
		end process;

--
--máquina dois
begin   
    process(clk_um, start)
    begin
        if (start = '1') then 
            stateMoore_reg <= zero;
        elsif (clk0'event and clk0 = '1') then 
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
					stateMoore_next <= um
					s_OUT_zero <= "001";
				end if;
				
				when um =>
				if start = '1' then
					stateMoore_next <= dois
					s_OUT_zero <= "010";
				end if;
				
				when dois =>
				if start = '1' then
					stateMoore_next <= tres
					s_OUT_zero <= "111";
				end if;
			end case;
		end process;
	
--
--máquina tres
begin   
    process(clk_um, start)
    begin
        if (start = '1') then 
            stateMoore_reg <= zero;
        elsif (clk0'event and clk0 = '1') then 
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
					stateMoore_next <= um
					s_OUT_zero <= "001";
				end if;
				
				when um =>
				if start = '1' then
					stateMoore_next <= dois
					s_OUT_zero <= "010";
				end if;
				
				when dois =>
				if start = '1' then
					stateMoore_next <= tres
					s_OUT_zero <= "111";
				end if;
			end case;
		end process;
		
--resultado final
	if (s_OUT_zero = s_OUT_um = s_OUT_dois) then
		s_OUT_resultado = '1';
	else
		s_OUT_resultado = '0';
end arch;