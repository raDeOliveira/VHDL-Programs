--Trabalho prático PSD
library IEEE;
use IEEE.std_logic_1164.all;
entity exercicioMUX is
-- sinais input/output
port(
  a_IN	: in std_logic_vector(5 downto 0);
  sel		: in std_logic_vector(2 downto 0);
  enable	: in std_logic;
  enable1: in std_logic;
  b_OUT	: out std_logic);
end exercicioMUX;
architecture tp1 of exercicioMUX is
begin
-- inicio processo
	process(a_IN, sel, enable, enable1)
		begin
		-- código sequencial
			if(enable = '0') and (enable1 = '1')then
				case sel is
					when"000" => b_OUT <= a_IN(0);
					when"001" => b_OUT <= a_IN(1);
					when"010" => b_OUT <= a_IN(2);
					when"011" => b_OUT <= a_IN(3);
					when"100" => b_OUT <= a_IN(4);
					when"101" => b_OUT <= a_IN(5);
					when others => b_OUT <= 'Z';
				end case;
			else
			-- alta impedância
				b_OUT <= 'Z';
			end if;
	end process p_mux;
end tp1;