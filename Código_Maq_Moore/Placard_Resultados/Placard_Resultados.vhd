--Placard resultados //
library IEEE;
USE ieee.std_logic_1164.all;

ENTITY Placard_Resultados is
PORT (
      clock: IN STD_LOGIC;
      estados: IN STD_LOGIC_VECTOR(5 downto 0) := "000011";
      reset: IN STD_LOGIC;
      PONTO: IN STD_LOGIC;
      PONTUACAO1, PONTUACAO0: OUT STD_LOGIC_VECTOR(2 DOWNTO 0):="000");
END Placard_Resultados;

Architecture PLACA of Placard_Resultados is
   type ESTADO is (ZERO, UM, DOIS, TRES, QUATRO, CINCO, SEIS);
    SIGNAL ESTADO0, ESTADO1 : ESTADO;

BEGIN 
  PROCESS (clock, reset, PONTO) 
  BEGIN 

    IF (reset = '1') THEN
        ESTADO0 <= ZERO;
        PONTUACAO0<="000";

		  --moore machine
    ELSIF rising_edge(clock) THEN
        CASE ESTADO0 IS
            WHEN ZERO => 
                IF PONTO='1' THEN 
                    ESTADO0 <= UM;
                    PONTUACAO0<="001";
                END IF;
                
            WHEN UM => 
                IF PONTO='1' THEN 
                    ESTADO0 <= DOIS;
                    PONTUACAO0<="010";
                END IF;
					 
            WHEN DOIS => 
                IF PONTO='1' THEN
                    IF ESTADOS(2) = '1' THEN
                        ESTADO0 <= TRES;
                        PONTUACAO0<="011";
                    END IF;
                END IF;
					 
            WHEN TRES =>
                IF ESTADOS(3) = '1' THEN
                    IF PONTO='1' THEN 
                        ESTADO0 <= QUATRO;
                        PONTUACAO0<="100";
                    END IF;
                END IF;
					 
            WHEN QUATRO => 
                IF ESTADOS(4) = '1' THEN
                    IF PONTO='1' THEN 
                        ESTADO0 <= CINCO;
                        PONTUACAO0<="101";
                    END IF;
                END IF;
					 
            WHEN CINCO => 
                IF ESTADOS(5) = '1' THEN
                    IF PONTO='1' THEN 
                        ESTADO0 <= SEIS;
                        PONTUACAO0<="110";
                    END IF;
                END IF; 
                
            WHEN SEIS => 
                IF PONTO='1' THEN 
                    ESTADO0 <= ZERO; 
                    PONTUACAO0<="000";
                END IF; 
        END CASE; 
        
    END IF; 
  END PROCESS;

-- estado 2
  PROCESS (clock, reset, PONTO) 
BEGIN

    IF (reset = '1') THEN
        ESTADO1 <= ZERO;
        PONTUACAO1<="000";
 
    ELSIF rising_edge(clock) THEN
        CASE ESTADO1 IS
            WHEN ZERO => 
                IF PONTO='1' THEN 
                    ESTADO1 <= UM;
                    PONTUACAO1<="001";
                END IF;
                
            WHEN UM => 
                IF PONTO='1' THEN 
                    ESTADO1 <= DOIS;
                    PONTUACAO1<="010";
                END IF;
					 
            WHEN DOIS => 
                    IF ESTADOS(2) = '1' THEN
                IF PONTO='1' THEN
                        ESTADO1 <= TRES;
                        PONTUACAO1<="011";
                    END IF;
                END IF;
					 
            WHEN TRES =>
                    IF PONTO='1' THEN 
                IF ESTADOS(3) = '1' THEN
                        ESTADO1 <= QUATRO;
                        PONTUACAO1<="100";
                    END IF;
                END IF;
					 
            WHEN QUATRO => 
                    IF PONTO='1' THEN 
                IF ESTADOS(4) = '1' THEN
                        ESTADO1 <= CINCO;
                        PONTUACAO1<="101";
                    END IF;
                END IF;
					 
            WHEN CINCO => 
                    IF PONTO='1' THEN 
                IF ESTADOS(5) = '1' THEN
                        ESTADO1 <= SEIS;
                        PONTUACAO1<="110";
                    END IF;
                END IF; 
                
            WHEN SEIS => 
                IF PONTO='1' THEN 
--                    ESTADO1 <= ZERO; 
--                    PONTUACAO1<="000";
                END IF; 
        END CASE; 
    END IF; 
  END PROCESS;
END PLACA;