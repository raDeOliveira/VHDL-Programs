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

-- DATE "05/07/2020 18:25:37"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mooremachine IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	level : IN std_logic;
	saida : OUT std_logic_vector(2 DOWNTO 0)
	);
END mooremachine;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- level	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mooremachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_level : std_logic;
SIGNAL ww_saida : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \level~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \prox_estado.A4_100~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \estado.A4~q\ : std_logic;
SIGNAL \prox_estado.A0_124~combout\ : std_logic;
SIGNAL \estado.A0~0_combout\ : std_logic;
SIGNAL \estado.A0~q\ : std_logic;
SIGNAL \prox_estado.A1_118~combout\ : std_logic;
SIGNAL \estado.A1~q\ : std_logic;
SIGNAL \prox_estado.A2_112~combout\ : std_logic;
SIGNAL \estado.A2~q\ : std_logic;
SIGNAL \prox_estado.A3_106~combout\ : std_logic;
SIGNAL \estado.A3~q\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \saida[0]$latch~combout\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \saida[1]$latch~combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \saida[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_level~input_o\ : std_logic;
SIGNAL \ALT_INV_prox_estado.A0_124~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.A4_100~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.A2_112~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.A3_106~combout\ : std_logic;
SIGNAL \ALT_INV_prox_estado.A1_118~combout\ : std_logic;
SIGNAL \ALT_INV_saida[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_estado.A0~q\ : std_logic;
SIGNAL \ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ALT_INV_estado.A4~q\ : std_logic;
SIGNAL \ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_estado.A2~q\ : std_logic;
SIGNAL \ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.A3~q\ : std_logic;
SIGNAL \ALT_INV_estado.A1~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_level <= level;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_level~input_o\ <= NOT \level~input_o\;
\ALT_INV_prox_estado.A0_124~combout\ <= NOT \prox_estado.A0_124~combout\;
\ALT_INV_prox_estado.A4_100~combout\ <= NOT \prox_estado.A4_100~combout\;
\ALT_INV_prox_estado.A2_112~combout\ <= NOT \prox_estado.A2_112~combout\;
\ALT_INV_prox_estado.A3_106~combout\ <= NOT \prox_estado.A3_106~combout\;
\ALT_INV_prox_estado.A1_118~combout\ <= NOT \prox_estado.A1_118~combout\;
\ALT_INV_saida[2]$latch~combout\ <= NOT \saida[2]$latch~combout\;
\ALT_INV_saida[1]$latch~combout\ <= NOT \saida[1]$latch~combout\;
\ALT_INV_saida[0]$latch~combout\ <= NOT \saida[0]$latch~combout\;
\ALT_INV_estado.A0~q\ <= NOT \estado.A0~q\;
\ALT_INV_saida~2_combout\ <= NOT \saida~2_combout\;
\ALT_INV_estado.A4~q\ <= NOT \estado.A4~q\;
\ALT_INV_saida~1_combout\ <= NOT \saida~1_combout\;
\ALT_INV_estado.A2~q\ <= NOT \estado.A2~q\;
\ALT_INV_saida~0_combout\ <= NOT \saida~0_combout\;
\ALT_INV_estado.A3~q\ <= NOT \estado.A3~q\;
\ALT_INV_estado.A1~q\ <= NOT \estado.A1~q\;

-- Location: IOOBUF_X89_Y37_N22
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]$latch~combout\,
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
	i => \saida[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X89_Y36_N5
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOIBUF_X89_Y37_N38
\level~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_level,
	o => \level~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y37_N9
\prox_estado.A4_100\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.A4_100~combout\ = ( \level~input_o\ & ( \prox_estado.A4_100~combout\ & ( \estado.A3~q\ ) ) ) # ( !\level~input_o\ & ( \prox_estado.A4_100~combout\ ) ) # ( \level~input_o\ & ( !\prox_estado.A4_100~combout\ & ( \estado.A3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A3~q\,
	datae => \ALT_INV_level~input_o\,
	dataf => \ALT_INV_prox_estado.A4_100~combout\,
	combout => \prox_estado.A4_100~combout\);

-- Location: IOIBUF_X89_Y37_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y37_N11
\estado.A4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.A4_100~combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \level~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.A4~q\);

-- Location: LABCELL_X88_Y37_N42
\prox_estado.A0_124\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.A0_124~combout\ = ( \prox_estado.A0_124~combout\ & ( (!\level~input_o\) # (\estado.A4~q\) ) ) # ( !\prox_estado.A0_124~combout\ & ( (\level~input_o\ & \estado.A4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_level~input_o\,
	datad => \ALT_INV_estado.A4~q\,
	dataf => \ALT_INV_prox_estado.A0_124~combout\,
	combout => \prox_estado.A0_124~combout\);

-- Location: LABCELL_X88_Y37_N15
\estado.A0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \estado.A0~0_combout\ = ( !\prox_estado.A0_124~combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_prox_estado.A0_124~combout\,
	combout => \estado.A0~0_combout\);

-- Location: FF_X88_Y37_N17
\estado.A0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \estado.A0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \level~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.A0~q\);

-- Location: LABCELL_X88_Y37_N18
\prox_estado.A1_118\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.A1_118~combout\ = ( \estado.A0~q\ & ( (\prox_estado.A1_118~combout\ & !\level~input_o\) ) ) # ( !\estado.A0~q\ & ( (\level~input_o\) # (\prox_estado.A1_118~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_prox_estado.A1_118~combout\,
	datad => \ALT_INV_level~input_o\,
	dataf => \ALT_INV_estado.A0~q\,
	combout => \prox_estado.A1_118~combout\);

-- Location: FF_X88_Y37_N20
\estado.A1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.A1_118~combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \level~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.A1~q\);

-- Location: LABCELL_X88_Y37_N30
\prox_estado.A2_112\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.A2_112~combout\ = ( \prox_estado.A2_112~combout\ & ( (!\level~input_o\) # (\estado.A1~q\) ) ) # ( !\prox_estado.A2_112~combout\ & ( (\estado.A1~q\ & \level~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A1~q\,
	datad => \ALT_INV_level~input_o\,
	dataf => \ALT_INV_prox_estado.A2_112~combout\,
	combout => \prox_estado.A2_112~combout\);

-- Location: FF_X88_Y37_N32
\estado.A2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.A2_112~combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \level~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.A2~q\);

-- Location: LABCELL_X88_Y37_N39
\prox_estado.A3_106\ : cyclonev_lcell_comb
-- Equation(s):
-- \prox_estado.A3_106~combout\ = ( \level~input_o\ & ( \prox_estado.A3_106~combout\ & ( \estado.A2~q\ ) ) ) # ( !\level~input_o\ & ( \prox_estado.A3_106~combout\ ) ) # ( \level~input_o\ & ( !\prox_estado.A3_106~combout\ & ( \estado.A2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A2~q\,
	datae => \ALT_INV_level~input_o\,
	dataf => \ALT_INV_prox_estado.A3_106~combout\,
	combout => \prox_estado.A3_106~combout\);

-- Location: FF_X88_Y37_N41
\estado.A3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \prox_estado.A3_106~combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \level~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.A3~q\);

-- Location: LABCELL_X88_Y37_N51
\saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = ( \estado.A1~q\ ) # ( !\estado.A1~q\ & ( \estado.A3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A3~q\,
	dataf => \ALT_INV_estado.A1~q\,
	combout => \saida~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\saida[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[0]$latch~combout\ = ( \saida[0]$latch~combout\ & ( \saida~0_combout\ & ( !\level~input_o\ ) ) ) # ( \saida[0]$latch~combout\ & ( !\saida~0_combout\ ) ) # ( !\saida[0]$latch~combout\ & ( !\saida~0_combout\ & ( \level~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_level~input_o\,
	datae => \ALT_INV_saida[0]$latch~combout\,
	dataf => \ALT_INV_saida~0_combout\,
	combout => \saida[0]$latch~combout\);

-- Location: LABCELL_X88_Y37_N24
\saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = ( \estado.A2~q\ ) # ( !\estado.A2~q\ & ( \estado.A1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A1~q\,
	dataf => \ALT_INV_estado.A2~q\,
	combout => \saida~1_combout\);

-- Location: LABCELL_X88_Y37_N21
\saida[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[1]$latch~combout\ = ( \saida~1_combout\ & ( (\saida[1]$latch~combout\) # (\level~input_o\) ) ) # ( !\saida~1_combout\ & ( (!\level~input_o\ & \saida[1]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_level~input_o\,
	datad => \ALT_INV_saida[1]$latch~combout\,
	dataf => \ALT_INV_saida~1_combout\,
	combout => \saida[1]$latch~combout\);

-- Location: LABCELL_X88_Y37_N33
\saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = ( \estado.A4~q\ ) # ( !\estado.A4~q\ & ( \estado.A3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_estado.A3~q\,
	dataf => \ALT_INV_estado.A4~q\,
	combout => \saida~2_combout\);

-- Location: LABCELL_X88_Y37_N0
\saida[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida[2]$latch~combout\ = ( \saida[2]$latch~combout\ & ( \saida~2_combout\ ) ) # ( !\saida[2]$latch~combout\ & ( \saida~2_combout\ & ( \level~input_o\ ) ) ) # ( \saida[2]$latch~combout\ & ( !\saida~2_combout\ & ( !\level~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_level~input_o\,
	datae => \ALT_INV_saida[2]$latch~combout\,
	dataf => \ALT_INV_saida~2_combout\,
	combout => \saida[2]$latch~combout\);

-- Location: LABCELL_X48_Y18_N0
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


