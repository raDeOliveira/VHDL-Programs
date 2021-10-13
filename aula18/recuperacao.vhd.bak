---- Sequencia //
--library ieee;
--use ieee.std_logic_1164.all; 
--
--entity recuperacao is
--port(
--    clk : in std_logic;
--    sequencia : in std_logic_vector(2 downto 0);
--    saida_mealy: out std_logic );
--end recuperacao;
--
--architecture arch of recuperacao is 
--    type stateMealy_type is (um, dois);
--    signal present_state, next_state : stateMealy_type;
--    
--begin   
--    process(clk)
--    begin
--        if (clk'event and clk = '1') then
--            present_state <= next_state;
--        else
--            null;
--        end if; 
--    end process;
--	 
--    ----------
--    -- Mealy--
--    process(present_state)
--    begin 
--        next_state <= present_state;
--        saida_mealy <= '0';
--		  
--        case present_state is 
--				when um => 
--				if sequencia = "000" then --se sequencia for "000"
--					next_state <= dois; --passa para proximo estado
--					saida_mealy <= '0'; --saida zero
--				 end if;
--
--				when dois =>
--				if sequencia = "010" then --se sequencia for "010"
--					next_state <= tres; --passa para proximo estado
--					saida_mealy <= '0'; --saida zero
--					
--				elsif sequencia = "110" then --sequencia DETETADA
--					next_state <= um; --retorna para primeiro estado
--					saida_mealy <= '1'; --sinaliza a DETECÇÃO com saida a um
--				end if;
--				
--				when others => null;
--        end case;
--    end process;
--end arch; 
--------------------------------------------------------
-----------------forma mais simples---------------------
--------------------------------------------------------

-- Sequencia //
library ieee;
use ieee.std_logic_1164.all; 

entity recuperacao is
port(
    clk : in std_logic;
    sequencia : in std_logic_vector(2 downto 0);
    saida_mealy: out std_logic );
end recuperacao;

architecture arch of recuperacao is 
    type stateMealy_type is (um, dois);
    signal present_state, next_state : stateMealy_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then
            present_state <= next_state;
        else
            null;
        end if; 
    end process;
	 
    ----------
    -- Mealy--
    process(present_state)
    begin 
        next_state <= present_state;
        saida_mealy <= '0';
		  
        case present_state is 
				when um => 
				if sequencia = "110" then --deteta sequencia desejada "110"
					next_state <= dois; 
					saida_mealy <= '1'; --saida sinalizada a um
				

				else
					next_state <= um; 
					saida_mealy <= '0'; --sinaliza saida a zero
				end if;
				
				when others => null;
        end case;
    end process;
end arch; 