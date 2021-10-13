-- Controlopessoas //
library ieee;
use ieee.std_logic_1164.all;
entity controlo_pessoas is

port(
    clk : in std_logic;
    in1 : in std_logic_vector (1 downto 0);
--    00  Não entrou nem saiu qualquer pessoa
--    01  Saiu uma pessoa e não entrou ninguém
--    10  Entrou uma pessoa mas não saiu ninguém
--    11  Entrou uma pessoa e também saiu uma pessoa
    saida_moore: out std_logic_vector (6 downto 0) );
end controlo_pessoas;

architecture arch of controlo_pessoas is 
    
    type stateMoore_type is (p1, p2, p3, p4, p5, p6); 
    signal present_state, next_state : stateMoore_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then
            present_state <= next_state;
        else
            null;
        end if; 
    end process;
	 
	 ---------------------
    -- Máquina de Moore--
    process(present_state, in1)
     begin 
        next_state <= present_state; 
        
        case present_state is 
            when p1 => 
				 saida_moore <= "1111110";
				 if (in1 = "10") then 
					  next_state <= p2; 
				 end if;
					 
            when p2 => 
				 saida_moore <= "0110000"; 
				 if (in1 = "10") then 
					  next_state <= p3; 
				 elsif (in1 = "01") then 
					  next_state <= p1; 
				 end if;
					 
				 when p3 => 
				 saida_moore <= "1101101"; 
				 if (in1 = "10") then 
					  next_state <= p4; 
				 elsif (in1 = "01") then 
					  next_state <= p2;
				 end if;
				 
				 when p4 => 
				 saida_moore <= "1111001"; 
				 if (in1 = "10") then 
					  next_state <= p5; 
				 elsif (in1 = "01") then 
					  next_state <= p3; 
				 end if;
				 
				 when p5 => 
				 saida_moore <= "0110011"; 
				 if (in1 = "10") then 
					  next_state <= p6; 
				 elsif (in1 = "01") then 
					  next_state <= p4; 
				 end if;
					 
				 when p6 => 
				 saida_moore <= "1011011"; 
				 if (in1 = "01") then 
					  next_state <= p5; 
				 end if;
					 
        end case; 
    end process;  
end arch;