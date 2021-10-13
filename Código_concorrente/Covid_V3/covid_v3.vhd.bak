--covid
library ieee;
use ieee.std_logic_1164.all;
--sinais I/O
entity covid is
port(	a : in std_logic;
		b : in std_logic;
		c : in std_logic;
		d : in std_logic;
		led0 : out std_logic;
		led1 : out std_logic;
		led2 : out std_logic);
end covid;
architecture teste of covid is

begin
		led0 <= (not a and not b and not c and not d);
		
		led1 <= (not a and not b and not c and d) or (not a and not b and c and not d) or (not a and b and not c and not d) or (a and not b and not c and not d);
		led1 <= (not a and not b and c and d) or (not a and b and not c and d) or (not a and b and c and not d);
		
		led2 <= (a and c and d) or (a and b and d) or (a and b and c and not d) or (a and b and c and d);