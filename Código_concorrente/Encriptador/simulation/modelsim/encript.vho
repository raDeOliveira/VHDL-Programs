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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "06/04/2020 08:05:23"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	encript IS
    PORT (
	palavra : IN std_logic_vector(2 DOWNTO 0);
	saida : OUT std_logic
	);
END encript;

-- Design Ports Information
-- saida	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- palavra[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- palavra[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- palavra[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF encript IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_palavra : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \palavra[0]~input_o\ : std_logic;
SIGNAL \palavra[1]~input_o\ : std_logic;
SIGNAL \palavra[2]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_palavra[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_palavra[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_palavra[0]~input_o\ : std_logic;

BEGIN

ww_palavra <= palavra;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_palavra[2]~input_o\ <= NOT \palavra[2]~input_o\;
\ALT_INV_palavra[1]~input_o\ <= NOT \palavra[1]~input_o\;
\ALT_INV_palavra[0]~input_o\ <= NOT \palavra[0]~input_o\;

-- Location: IOOBUF_X4_Y0_N19
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~0_combout\,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X4_Y0_N1
\palavra[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_palavra(0),
	o => \palavra[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\palavra[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_palavra(1),
	o => \palavra[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\palavra[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_palavra(2),
	o => \palavra[2]~input_o\);

-- Location: LABCELL_X4_Y1_N30
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \palavra[2]~input_o\ ) # ( !\palavra[2]~input_o\ & ( (\palavra[1]~input_o\) # (\palavra[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_palavra[0]~input_o\,
	datac => \ALT_INV_palavra[1]~input_o\,
	dataf => \ALT_INV_palavra[2]~input_o\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X19_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


