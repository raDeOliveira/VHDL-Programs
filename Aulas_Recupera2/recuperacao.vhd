-- Sequencia 3 //
library ieee;
use ieee.std_logic_1164.all; 

entity recuperacao is
port(
    clk : in std_logic;
	 sequencia1 : in std_logic_vector(1 downto 0);
    sequencia : in std_logic_vector(2 downto 0);
    DETETA: out std_logic );
end recuperacao;

architecture arch of recuperacao is 
    type stateMealy_type is (um, dois, tres, quatro);
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
        DETETA <= '0';
		  
        case present_state is 
				when um => 
				if (sequencia = "001") then
					if (sequencia1 = "00") then --sequencia desejada "001"
					next_state <= dois; --passa para proximo estado
					DETETA <= '1'; --sinaliza saida a um
				 end if;
					end if;

				when dois =>
				if (sequencia = "010") then
					if (sequencia1 = "00") then --sequencia desejada "010"
					next_state <= tres; --passa para proximo estado
					DETETA <= '1'; --sinaliza saida a um
				end if;
					end if;
				
				when tres =>
				if (sequencia = "100") then
					if(sequencia1 = "00") then --sequencia desejada "100"
					next_state <= quatro; --passa para proximo estado
					DETETA <= '1'; --sinaliza saida a um
				
				else
					next_state <= um; --retorn ao primeiro estado
					DETETA <= '0'; --sinaliza saida a zero
				end if;
					end if;

				when others => null;
        end case;
    end process;
end arch; 



------------------------------------------------
-----------outra forma de codigo----------------
------------------------------------------------

---- Sequencia 2 //
--library ieee;
--use ieee.std_logic_1164.all; 
--
--entity recuperacao is
--port(
--    clk : in std_logic;
--    sequencia : in std_logic_vector(1 downto 0);
--    SINALIZA: out std_logic );
--end recuperacao;
--
--architecture arch of recuperacao is 
--    type stateMealy_type is (um, dois, tres);
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
--        SINALIZA <= '0';
--		  
--        case present_state is 
--				when um => 
--				if sequencia = "10" then --deteta sequencia desejada "10"
--					next_state <= dois; --passa para proximo estado
--					SINALIZA <= '1'; --saida sinalizada a um
--				end if;
--				
--				when dois => 
--				if sequencia = "11" then --deteta sequencia desejada "10"
--					next_state <= tres; --passa para proximo estado
--					SINALIZA <= '1'; --saida sinalizada a um
--
--				else
--					next_state <= um; --retorna para primeiro estado
--					SINALIZA <= '0'; --sinaliza saida a zero
--				end if;
--				
--				when others => null;
--        end case;
--    end process;
--end arch; 