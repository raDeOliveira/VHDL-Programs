---- controloqualidade // PSD
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity controloqualidade is
port (
    corPrincipal: in std_logic_vector(7 downto 0);
    corSecundaria: in std_logic_vector(7 downto 0);     
    saida: out std_logic :='0');
end controloqualidade;

architecture qual OF controloqualidade is
    signal temp : std_logic_vector(7 downto 0);
begin
    temp <=  not (corPrincipal(0) xor corSecundaria(0)) &
             not (corPrincipal(1) xor corSecundaria(1)) &
             not (corPrincipal(2) xor corSecundaria(2)) &
             not (corPrincipal(3) xor corSecundaria(3)) &
             not (corPrincipal(4) xor corSecundaria(4)) &
             not (corPrincipal(5) xor corSecundaria(5)) &
             not (corPrincipal(6) xor corSecundaria(6)) &
             not (corPrincipal(7) xor corSecundaria(7));
    
    saida <= '1' when (temp = "11111110") or
                      (temp = "11111101") or
                      (temp = "11111011") or
                      (temp = "11110111") or
                      (temp = "11101111") or
                      (temp = "11011111") or
                      (temp = "10111111") or
                      (temp = "01111111") or
                      (temp = "11111111");
end qual;