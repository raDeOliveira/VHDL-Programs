-- Encriptador //
library ieee;
use ieee.std_logic_1164.all;

entity encript is
port(	palavra : in std_logic_vector(2 downto 0);
		saida : out std_logic);
end encript;

architecture arch of encript is
signal p1, p2, p3 : std_logic;

begin
	p1 <= palavra(2) or palavra(1) or palavra(0);
	p2 <= palavra(2) and palavra(1) and palavra(0);
	p3 <= palavra(2) xor palavra(1);
	
	saida <= (p1) or (p2) or (p3);
	
end arch;