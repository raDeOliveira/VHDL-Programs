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

-- DATE "04/23/2020 20:00:00"

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

ENTITY 	trama IS
    PORT (
	trama : IN std_logic_vector(2 DOWNTO 0);
	saida : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END trama;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trama[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trama[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trama[2]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trama IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_trama : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \trama[0]~input_o\ : std_logic;
SIGNAL \trama[1]~input_o\ : std_logic;
SIGNAL \trama[2]~input_o\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \saida~3_combout\ : std_logic;
SIGNAL \saida~4_combout\ : std_logic;
SIGNAL \saida~5_combout\ : std_logic;
SIGNAL \ALT_INV_trama[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_trama[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_trama[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_saida~0_combout\ : std_logic;

BEGIN

ww_trama <= trama;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_trama[2]~input_o\ <= NOT \trama[2]~input_o\;
\ALT_INV_trama[0]~input_o\ <= NOT \trama[0]~input_o\;
\ALT_INV_trama[1]~input_o\ <= NOT \trama[1]~input_o\;
\ALT_INV_saida~0_combout\ <= NOT \saida~0_combout\;

-- Location: IOOBUF_X89_Y38_N22
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X89_Y37_N5
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X89_Y35_N45
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X89_Y37_N22
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~3_combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X89_Y35_N62
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X89_Y36_N5
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~4_combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X89_Y37_N56
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida~5_combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOIBUF_X89_Y36_N38
\trama[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trama(0),
	o => \trama[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\trama[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trama(1),
	o => \trama[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\trama[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trama(2),
	o => \trama[2]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \trama[2]~input_o\ ) # ( !\trama[2]~input_o\ & ( (\trama[1]~input_o\) # (\trama[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111100111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trama[0]~input_o\,
	datac => \ALT_INV_trama[1]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X88_Y36_N9
\saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = ( !\trama[2]~input_o\ & ( (\trama[1]~input_o\ & !\trama[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_trama[1]~input_o\,
	datac => \ALT_INV_trama[0]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~1_combout\);

-- Location: LABCELL_X88_Y36_N42
\saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = ( \trama[2]~input_o\ & ( (!\trama[0]~input_o\ & !\trama[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trama[0]~input_o\,
	datac => \ALT_INV_trama[1]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~2_combout\);

-- Location: LABCELL_X88_Y36_N51
\saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~3_combout\ = ( !\trama[2]~input_o\ & ( (\trama[1]~input_o\ & \trama[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_trama[1]~input_o\,
	datac => \ALT_INV_trama[0]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~3_combout\);

-- Location: LABCELL_X88_Y36_N24
\saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~4_combout\ = ( \trama[2]~input_o\ & ( (\trama[0]~input_o\ & !\trama[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_trama[0]~input_o\,
	datac => \ALT_INV_trama[1]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~4_combout\);

-- Location: LABCELL_X88_Y36_N3
\saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~5_combout\ = ( \trama[2]~input_o\ & ( (\trama[1]~input_o\ & \trama[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_trama[1]~input_o\,
	datac => \ALT_INV_trama[0]~input_o\,
	datae => \ALT_INV_trama[2]~input_o\,
	combout => \saida~5_combout\);

-- Location: MLABCELL_X59_Y1_N3
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


