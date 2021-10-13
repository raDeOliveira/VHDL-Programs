-- PSD // exercicios
library ieee;
use ieee.std_logic_1164.all;

entity aula02junhoexerc3 is
port (elementos: in std_logic_vector (5 downto 0);
      saida: OUT std_logic);
            
end aula02junhoexerc3;

architecture arch of aula02junhoexerc3 is

begin
    saida <= not elementos(0);
end arch;