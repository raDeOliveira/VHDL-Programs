-- Parque Estacionamento //
library ieee;
use ieee.std_logic_1164.all;
entity recuperacao is

port(
    clk : in std_logic;
    in1 : in std_logic_vector (1 downto 0);
--    00  Não entrou nem saiu qualquer carro
--    01  Saiu um carro e não entrou nenhum carro
--    10  Entrou um carro mas não saiu nenhum carro
--    11  Entrou um carro e também saiu um carro

    verde : out std_logic;
--		parque de estacionamento livre
	 vermelho : out std_logic;
--		parque de estacionamento cheio

	 saida_moore : out std_logic_vector(3 downto 0));
end recuperacao;

architecture arch of recuperacao is 
    type stateMoore_type is (carro1, carro2, carro3, carro4, carro5); 
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
            when carro1 => 
				 if (in1 = "10") then 
					saida_moore <= "0001";
					verde <= '1';--parque livre com 4 lugares disponiveis
					vermelho <= '0';
					next_state <= carro2; 
				 end if;
					 
            when carro2 =>  
				 if (in1 = "10") then 
					saida_moore <= "0010";
					verde <= '1';--parque livre com 3 lugares disponiveis
					vermelho <= '0';
					next_state <= carro3; 
				 elsif (in1 = "01") then 
					next_state <= carro1; 
					verde <= '1';--parque continua livre 
					vermelho <= '0';
				 end if;
					 
				 when carro3 => 
				 if (in1 = "10") then 
					saida_moore <= "0011";
					verde <= '1';--parque livre com 2 lugares disponiveis
					vermelho <= '0';
					next_state <= carro4; 
				 elsif (in1 = "01") then 
					  next_state <= carro2;
					  verde <= '1';--parque continua livre 
					  vermelho <= '0';
				 end if;
				 
				 when carro4 => 
				 if (in1 = "10") then 
					saida_moore <= "0100";
					next_state <= carro5; 
					verde <= '1';--parque livre com 1 lugar disponivel
					vermelho <= '0';
				 elsif (in1 = "01") then 
					  next_state <= carro3;
					  verde <= '1'; --parque continua livre 
					  vermelho <= '0';
				 end if;
				 
				 when carro5 => 
				 if (in1 = "10") then 
					saida_moore <= "0101";
					next_state <= carro5;
					vermelho <= '1';-- parque cheio
					verde <= '0';
				 elsif (in1 = "01") then 
					  next_state <= carro4;
					  verde <= '1';--parque continua livre 
					  vermelho <= '0';
				 end if;
					 
        end case; 
    end process;  
end arch;