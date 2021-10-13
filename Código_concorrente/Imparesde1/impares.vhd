----Impares de '1's //
library ieee;
use ieee.std_logic_1164.all;

entity impares is 
port( bits_entrada: in STD_LOGIC_VECTOR (3 downto 0);
		saida: out STD_LOGIC );
end impares;

architecture arch of impares is

begin 
	saida <= (bits_entrada(0) xor bits_entrada(1)) xor (bits_entrada(2) xor bits_entrada(3));
end arch;