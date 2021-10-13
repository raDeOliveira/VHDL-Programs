-- amostras ADN
library ieee;
use ieee.std_logic_1164.all;
--sinais
entity ADN is
port(	a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		d: in std_logic;
		e: in std_logic;
		a2: in std_logic;
		b2: in std_logic;
		c2: in std_logic;
		d2: in std_logic;
		e2: in std_logic;
		b_out : out std_logic;
		b2_out : out std_logic;
		b3_out : out std_logic;
		b4_out : out std_logic;
		b5_out : out std_logic);
		
end ADN;
architecture teste of ADN is
	
	begin
			b_out  <= (a and a2);
			b2_out <= (b and b2);
			b3_out <= (c and c2);
			b4_out <= (d and d2);
			b5_out <= (e and e2);
	end teste;