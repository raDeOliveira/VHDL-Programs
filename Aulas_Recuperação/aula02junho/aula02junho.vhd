--
library IEEE;
use IEEE.std_logic_1164.all;

entity aula02junho is
-- sinais input/output
port(
  sensor: in std_logic;
  saida_porta: out std_logic);
end aula02junho;

architecture arch of aula02junho is

begin
process (sensor)
	begin
		if(sensor = '1')then --sensor ativo
			saida_porta <= '0'; --porta fechada
		else
			saida_porta <= '1'; --porta aberta
		end if;
	end process;
end arch;
