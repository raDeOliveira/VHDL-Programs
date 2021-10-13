-- moore perp //
Library ieee;
use ieee.std_logic_1164.all;

Entity moore_perp is
Port( clk, rst : in std_logic;
        s0, s1, s2 : out std_logic);
End moore_perp;

architecture teste of moore_perp is
type stateMoore_type is (zero, one, two); 
signal stateMoore_reg, stateMoore_next : stateMoore_type;

begin

process(clk, rst)
begin
    if (rst = '1') then
        stateMoore_reg <= zero;
    elsif (clk'event and clk = '1') then
        stateMoore_reg <= stateMoore_next;
    else 
        null;
    end if;
end process;

process(stateMoore_reg)
begin 
        stateMoore_next <= stateMoore_reg; 
        case stateMoore_reg is 
            when zero => 
                    s0 <= '1';
                    s1 <= '0';
                    s2 <= '0';
               stateMoore_next <= one;
            when one =>
                    s0 <= '0';
                    s1 <= '1';
                    s2 <= '0';
                    stateMoore_next <= two; 
            when two =>
                    s0 <= '0';
                    s1 <= '0';
                    s2 <= '1';
               stateMoore_next <= zero;
        end case; 
    end process;  
end teste;