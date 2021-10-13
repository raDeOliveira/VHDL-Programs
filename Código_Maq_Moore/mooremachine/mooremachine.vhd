-- Moore // contador
library ieee;
use ieee.std_logic_1164.all; 

entity mooremachine is
	port( clk, reset: in std_logic;
			saida: buffer bit_vector(2 downto 0);
			en0, en1, en2, en3: in std_logic;
			a, b, c, d, e, f, g: out std_logic);
end mooremachine;

architecture arch of mooremachine is

begin   
    process(clk, reset)
    begin
        if (reset = '1') then -- passa p/ estado zero
            saida <= "000";
			elsif (clk'event and clk = '1') then
			case saida is
				when "000" => saida <= "001"; --um
					b <= (not en1) or (not en2 and not en3) or (en2 and en3);
					c <= en1 or en2 or en3;
				when "001" => saida <= "010"; --dois
					a <= en0 or en2 or (en1 and en3) or (not en1 and not en3);
					b <= (not en1) or (not en2 and not en3) or (en2 and en3);
					d <= (not en1 and not en3) or (en2 and not en3) or (en1 and not en2 and en3) or (not en1 and en2) or en0;
					e <= (not en1 and not en3) or (en2 and not en3);
					g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
				when "010" => saida <= "011"; --três
					a <= en0 or en2 or (en1 and en3) or (not en1 and not en3);
					b <= (not en1) or (not en2 and not en3) or (en2 and en3);
					c <= en1 or en2 or en3;
					d <= (not en1 and not en3) or (en2 and not en3) or (en1 and not en2 and en3) or (not en1 and en2) or en0;
					g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
				when "011" => saida <= "100"; --quatro
					b <= (not en1) or (not en2 and not en3) or (en2 and en3);
					c <= en1 or en2 or en3;
					f <= en0 or (not en2 and not en3) or (en1 and not en2) or (en1 and not en3);
					g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
				when "100" => saida <= "001"; --cinco
					a <= en0 or en2 or (en1 and en3) or (not en1 and not en3);
					c <= en1 or en2 or en3;
					d <= (not en1 and not en3) or (en2 and not en3) or (en1 and not en2 and en3) or (not en1 and en2) or en0;
					f <= en0 or (not en2 and not en3) or (en1 and not en2) or (en1 and not en3);
					g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
				when "101" => saida <= "000"; -- zero
					a <= en0 or en2 or (en1 and en3) or (not en1 and not en3);
					b <= (not en1) or (not en2 and not en3) or (en2 and en3);
					c <= en1 or en2 or en3;
					d <= (not en1 and not en3) or (en2 and not en3) or (en1 and not en2 and en3) or (not en1 and en2) or en0;
					e <= (not en1 and not en3) or (en2 and not en3);
					f <= en0 or (not en2 and not en3) or (en1 and not en2) or (en1 and not en3);
					g <= en0 or (en1 and not en2) or ( not en1 and en2) or (en2 and not en3);
				when others => saida <= "000";
			end case;
				
		end if;
	end process;
end arch;

