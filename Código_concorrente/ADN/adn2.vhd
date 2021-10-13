--código adn 2
library ieee;
use ieee.std_logic_1164.all;
entity adn2 is
port (a1, a2, b1, b2, c1, c2, d1, d2, e1, e2 : in std_logic;
		o1, o2, o3, o4, o5 : out std_logic);
end adn2;

architecture teste of adn2 is
begin
	o1 <= a1 and a2;
	o2 <= b1 and b2;
	o3 <= c1 and c2;
	o4 <= d1 and d2;
	o5 <= e1 and e2;
end teste;