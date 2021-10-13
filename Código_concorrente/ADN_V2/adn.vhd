-- amostras ADN
library ieee;
use ieee.std_logic_1164.all;

--sinais
entity adn is
port(	a : in std_logic_vector (4 downto 0);
		a2 : in std_logic_vector(4 downto 0);
		b_out : out std_logic);
end adn;

architecture teste of adn is
signal p1, p2, p3: std_logic;
	
begin

	p1 <= a(4) and a2(1);
	p2 <= a(3) and a2(2);
	p3 <= a(2) and a2(3);
	
	b_out <= (p1) or (p2) or (p3);
end teste;