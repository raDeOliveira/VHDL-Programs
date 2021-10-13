--LAN Computadores //
library ieee;
use ieee.std_logic_1164.all; 

entity lancomputadores is
port(
    clk : in std_logic;
    in1, in2, in3 : in std_logic;
    alertaPC1, alertaPC2, alertaPC3 : buffer std_logic;
	 outPCalert : out std_logic_vector (2 downto 0);
	 mealyOut, mealyOut2, mealyOut3 : out std_logic_vector (3 downto 0));
end lancomputadores;

--arch computadores
architecture arch of lancomputadores is 
    type stateMealy_type is (a, b, c, d);--pc1
    signal presentState, nextState : stateMealy_type;
	 
	 type stateMealy2_type is (a, b, c, d);--pc2
    signal presentStatePC2, nextStatePC2 : stateMealy2_type;
	 
	 type stateMealy3_type is (a, b, c, d);--pc3
    signal presentStatePC3, nextStatePC3 : stateMealy3_type;
    
begin   
    process(clk)
    begin
        if (clk'event and clk = '1') then 
            presentState <= nextState;
				presentStatePC2 <= nextStatePC2;
				presentStatePC3 <= nextStatePC3;
        else
            null;
        end if; 
    end process;

	 --compuatdor 1
    process(presentState, in1)
    begin 
        nextState <= presentState; 
		  alertaPC1 <= '0';
		  
        case presentState is 
            when a =>
					 alertaPC1 <= '0';
					 
                if in1 = '1' then
                    nextState <= b;
                    mealyOut <= "0001";
						  
					 elsif in1 = '0' then
						  nextState <= a;
                end if;
					 
				when b =>
					 alertaPC1 <= '0';
					 
                if in1 = '0' then
                    nextState <= c;
                    mealyOut <= "0010";
						  
					 elsif in1 = '1' then
						  nextState <= a;
                end if;
					 
				when c =>
					 alertaPC1 <= '0';
					 
                if in1 = '1' then
                    nextState <= d;
                    mealyOut <= "0010";
						  
					 elsif in1 = '0' then
						  nextState <= a;
                end if;
					 
				when d =>
					 alertaPC1 <= '0';
					 
                if in1 = '0' then
                    nextState <= a;
                    mealyOut <= "1010";
						  alertaPC1 <= '1';
						  
					 elsif in1 = '1' then
						  nextState <= a;
                end if;
					 
				when others => 
					 null;
					 
        end case; 
    end process;
	 
	 --compuatdor 2
	 process(presentStatePC2, in2)
    begin 
        nextStatePC2 <= presentStatePC2; 
		  alertaPC2 <= '0';
		  
        case presentStatePC2 is 
            when a =>
					 alertaPC2 <= '0';
					 
                if in2 = '1' then
                    nextStatePC2 <= b;
                    mealyOut2 <= "0001";
						  
					 elsif in2 = '0' then
						  nextStatePC2 <= a;
                end if;
					 
				when b =>
					 alertaPC2 <= '0';
					 
                if in2 = '0' then
                    nextStatePC2 <= c;
                    mealyOut2 <= "0010";
						  
					 elsif in2 = '1' then
						  nextStatePC2 <= a;
                end if;
					 
				when c =>
					 alertaPC2 <= '0';
					 
                if in2 = '1' then
                    nextStatePC2 <= d;
                    mealyOut2 <= "0010";
						  
					 elsif in2 = '0' then
						  nextStatePC2 <= a;
                end if;
					 
				when d =>
					 alertaPC2 <= '0';
					 
                if in2 = '0' then
                    nextStatePC2 <= a;
                    mealyOut2 <= "1010";
						  alertaPC2 <= '1';
						  
					 elsif in2 = '1' then
						  nextStatePC2 <= a;
                end if;
					 
				when others => 
					 null;
					 
        end case; 
    end process;
	 
	 --compuatdor 3
	 process(presentStatePC3, in3)
    begin 
        nextStatePC3 <= presentStatePC3; 
		  alertaPC3 <= '0';
		  
        case presentStatePC3 is 
            when a =>
					 alertaPC3 <= '0';
					 
                if in3 = '1' then
                    nextStatePC3 <= b;
                    mealyOut3 <= "0001";
						  
					 elsif in3 = '0' then
						  nextStatePC3 <= a;
                end if;
					 
				when b =>
					 alertaPC3 <= '0';
					 
                if in3 = '0' then
                    nextStatePC3 <= c;
                    mealyOut3 <= "0010";
						  
					 elsif in3 = '1' then
						  nextStatePC3 <= a;
                end if;
					 
				when c =>
					 alertaPC3 <= '0';
					 
                if in3 = '1' then
                    nextStatePC3 <= d;
                    mealyOut3 <= "0010";
						  
					 elsif in3 = '0' then
						  nextStatePC3 <= a;
                end if;
					 
				when d =>
					 alertaPC3 <= '0';
					 
                if in3 = '0' then
                    nextStatePC3 <= a;
                    mealyOut3 <= "1010";
						  alertaPC3 <= '1';
						  
					 elsif in3 = '1' then
						  nextStatePC3 <= a;
                end if;
					 
				when others => 
					 null;
					 
        end case; 
    end process;
	 
	 --testa saidas
	 outPCalert(0) <= '1' when (alertaPC1 = '1' and alertaPC1 = '0' and alertaPC1 = '0') else
						'0';
						
	 outPCalert(1) <= '1' when (alertaPC1 = '0' and alertaPC1 = '1' and alertaPC1 = '0') else
						'0';
						
	 outPCalert(2) <= '1' when (alertaPC1 = '0' and alertaPC1 = '0' and alertaPC1 = '1') else
						'0';
	 
	 
end arch;