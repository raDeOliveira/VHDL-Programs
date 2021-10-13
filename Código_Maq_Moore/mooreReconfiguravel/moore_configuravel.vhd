library ieee;
use ieee.std_logic_1164.all; 
--Moore configurável //

entity aula_09junho is
port(
    Clk         : in std_logic;
    start       : in std_logic;
    outMoore 	 : out std_logic_vector (1 downto 0));
end aula_09junho;

architecture arch of aula_09junho is 
    
    type state_type is (a, b, c);
    signal PresentState, NextState: state_type;
    
begin
   Clock: process(Clk)
   begin
        if (Clk'event and Clk = '1') then
            PresentState <= NextState;
        else
            null;
      end if; 
    end process;
	 
-- moore machine
 mooreMachine: process(PresentState)
 begin
  NextState <= PresentState;
  case PresentState is
  
	when a =>
		 if start = '1' then
			  NextState <= a;
			  outMoore <= "00";
		 end if;
		 
	when b =>
		 if start = '1' then
			  NextState <= b;
			  outMoore <= "01";
		 end if;
		 
	when c =>
		 if start = '1' then
			  NextState <= c;
			  outMoore <= "10";
		 elsif start = '0' then
			  NextState <= a;
		 end if;
	when others => null;  
  end case; 
 end process;
end arch;