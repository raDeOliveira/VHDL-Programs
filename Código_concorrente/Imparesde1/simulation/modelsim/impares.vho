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

-- DATE "06/04/2020 08:32:34"

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

ENTITY 	impares IS
    PORT (
	bits_entrada : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic
	);
END impares;

-- Design Ports Information
-- saida	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[0]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF impares IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bits_entrada : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \bits_entrada[2]~input_o\ : std_logic;
SIGNAL \bits_entrada[3]~input_o\ : std_logic;
SIGNAL \bits_entrada[0]~input_o\ : std_logic;
SIGNAL \bits_entrada[1]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_bits_entrada[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_bits_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_bits_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_bits_entrada[0]~input_o\ : std_logic;

BEGIN

ww_bits_entrada <= bits_entrada;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bits_entrada[3]~input_o\ <= NOT \bits_entrada[3]~input_o\;
\ALT_INV_bits_entrada[2]~input_o\ <= NOT \bits_entrada[2]~input_o\;
\ALT_INV_bits_entrada[1]~input_o\ <= NOT \bits_entrada[1]~input_o\;
\ALT_INV_bits_entrada[0]~input_o\ <= NOT \bits_entrada[0]~input_o\;

-- Location: IOOBUF_X6_Y0_N19
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

-- Location: IOIBUF_X4_Y0_N35
\bits_entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(2),
	o => \bits_entrada[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\bits_entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(3),
	o => \bits_entrada[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\bits_entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(0),
	o => \bits_entrada[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\bits_entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(1),
	o => \bits_entrada[1]~input_o\);

-- Location: LABCELL_X4_Y1_N0
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \bits_entrada[1]~input_o\ & ( !\bits_entrada[2]~input_o\ $ (!\bits_entrada[3]~input_o\ $ (!\bits_entrada[0]~input_o\)) ) ) # ( !\bits_entrada[1]~input_o\ & ( !\bits_entrada[2]~input_o\ $ (!\bits_entrada[3]~input_o\ $ 
-- (\bits_entrada[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_bits_entrada[2]~input_o\,
	datab => \ALT_INV_bits_entrada[3]~input_o\,
	datac => \ALT_INV_bits_entrada[0]~input_o\,
	dataf => \ALT_INV_bits_entrada[1]~input_o\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X33_Y69_N3
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


