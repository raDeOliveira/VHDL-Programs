-- display 7 segmentos
library ieee;
use ieee.std_logic_1164.all;

--entidade
entity display7 is

port( en0, en1, en2, en3: in std_logic;
		a, b, c, d, e, f, g: out std_logic);
		
end display7;

--arquitectura
architecture arch of display7 is

begin
	a <= en0 or en2 or (en1 and en3) or (not en1 and not en3);
	b <= (not en1) or (not en2 and not en3) or (en2 and en3);
	c <= en1 or en2 or en3;
	d <= (not en1 and not en3) or (en2 and not en3) or (en1 and not en2 and en3) or (not en1 and en2) or en0;
	e <= (not en1 and not en3) or (en2 and not en3);
	f <= en0 or (not en2 and not en3) or (en1 and not en2) or (en1 and not en3);
	g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
end arch;