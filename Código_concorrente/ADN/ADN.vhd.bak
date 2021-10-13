-- amostras ADN
library ieee;
use ieee.std_logic_1164.all;
--sinais
entity  is ADN
port(	a : in std_logic_vector (4 downto 0);
		a2 : in std_logic_vector(4 downto 0);
		b_out : out std_logic);
end ;
architecture teste of ADN is
	
	begin
			b_out <= (a = "10000") and (a2 = "00001");
			b_out <= (a = "01000") and (a2 = "00010");
			b_out <= (a = "00100") and (a2 = "00100");
	end teste;
end;