-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/14/2020 14:44:17"
                                                            
-- Vhdl Test Bench template for design  :  MUX
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_vhd_tst IS
END MUX_vhd_tst;
ARCHITECTURE MUX_arch OF MUX_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a_IN : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL b_OUT : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL enable1 : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT MUX
	PORT (
	a_IN : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	b_OUT : OUT STD_LOGIC;
	enable : IN STD_LOGIC;
	enable1 : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX
	PORT MAP (
-- list connections between master ports and signals
	a_IN => a_IN,
	b_OUT => b_OUT,
	enable => enable,
	enable1 => enable1,
	sel => sel
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END MUX_arch;
