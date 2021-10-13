-- exercicioMUX
library ieee;
use ieee.std_logic_1164.all;

entity exercicioMUX is
port (mux_i: in std_logic_vector(3 downto 0);
		mux2_i: in std_logic_vector(3 downto 0);
		sel: in std_logic_vector(1 downto 0));
end exercicioMUX;

architecture arch of exercicioMUX is
	signal mux_sinal: std_logic;
	
begin
	mux_process: process mux_i, mux2_i, sel
	
	begin
		case sel is
			when "00" => mux_sinal <= mux_i(0); mux2_i(0);
			when "01" => mux_sinal <= mux_i(1); mux2_i(1);
			when "10" => mux_sinal <= mux_i(2); mux2_i(2);
			when "11" => mux_sinal <= mux_i(3); mux2_i(3);
			when others => mux_sinal <= 'Z';
		end case;
		
	end process mux_process;
end arch;