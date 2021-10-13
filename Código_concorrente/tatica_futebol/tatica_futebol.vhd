-- Tatica Futebol//
library ieee;
use ieee.std_logic_1164.all; 

entity tatica_futebol is
port(	ataque0, ataque1: in std_logic;
		meio_campo0, meio_campo1: in std_logic;
		defesa0, defesa1: in std_logic;
		saida: out std_logic);
end tatica_futebol;

architecture arch of tatica_futebol is

begin	
	saida <= ((ataque0) xor (ataque1)) and
				((meio_campo0) xor (meio_campo1)) and
				((defesa0) xor (defesa1));
	
end arch;