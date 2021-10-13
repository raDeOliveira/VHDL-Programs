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

-- DATE "05/28/2020 18:35:15"

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

ENTITY 	mooreReconfiguravel IS
    PORT (
	clk : IN std_logic;
	entrada : IN std_logic_vector(2 DOWNTO 0);
	saida_moore : OUT std_logic_vector(1 DOWNTO 0)
	);
END mooreReconfiguravel;

-- Design Ports Information
-- saida_moore[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_moore[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mooreReconfiguravel IS
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
SIGNAL ww_entrada : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_saida_moore : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \present_state.tres~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_state.um~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_state.dois~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \saida_moore[0]$latch~combout\ : std_logic;
SIGNAL \saida_moore[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_entrada[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_saida_moore[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_moore[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_present_state.tres~q\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \ALT_INV_present_state.um~q\ : std_logic;
SIGNAL \ALT_INV_present_state.dois~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_entrada <= entrada;
saida_moore <= ww_saida_moore;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada[2]~input_o\ <= NOT \entrada[2]~input_o\;
\ALT_INV_entrada[1]~input_o\ <= NOT \entrada[1]~input_o\;
\ALT_INV_entrada[0]~input_o\ <= NOT \entrada[0]~input_o\;
\ALT_INV_saida_moore[1]$latch~combout\ <= NOT \saida_moore[1]$latch~combout\;
\ALT_INV_saida_moore[0]$latch~combout\ <= NOT \saida_moore[0]$latch~combout\;
\ALT_INV_present_state.tres~q\ <= NOT \present_state.tres~q\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\ALT_INV_present_state.um~q\ <= NOT \present_state.um~q\;
\ALT_INV_present_state.dois~q\ <= NOT \present_state.dois~q\;

-- Location: IOOBUF_X89_Y9_N22
\saida_moore[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_moore[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_moore(0));

-- Location: IOOBUF_X89_Y9_N5
\saida_moore[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_moore[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_moore(1));

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

-- Location: IOIBUF_X89_Y9_N38
\entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LABCELL_X88_Y9_N21
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( !\entrada[0]~input_o\ & ( \present_state.dois~q\ & ( (\entrada[1]~input_o\ & !\entrada[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[1]~input_o\,
	datad => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_entrada[0]~input_o\,
	dataf => \ALT_INV_present_state.dois~q\,
	combout => \Selector1~2_combout\);

-- Location: LABCELL_X88_Y9_N36
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \present_state.tres~q\ & ( \present_state.um~q\ & ( (\entrada[1]~input_o\ & (!\entrada[2]~input_o\ & ((\present_state.dois~q\) # (\entrada[0]~input_o\)))) ) ) ) # ( !\present_state.tres~q\ & ( \present_state.um~q\ & ( 
-- (!\entrada[0]~input_o\ & (\entrada[1]~input_o\ & (\present_state.dois~q\ & !\entrada[2]~input_o\))) ) ) ) # ( \present_state.tres~q\ & ( !\present_state.um~q\ & ( (!\entrada[2]~input_o\ & (((\entrada[1]~input_o\ & \present_state.dois~q\)) # 
-- (\entrada[0]~input_o\))) ) ) ) # ( !\present_state.tres~q\ & ( !\present_state.um~q\ & ( (!\entrada[2]~input_o\ & ((!\entrada[0]~input_o\ & (\entrada[1]~input_o\ & \present_state.dois~q\)) # (\entrada[0]~input_o\ & (!\entrada[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000000010101110000000000000010000000000001001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[0]~input_o\,
	datab => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_present_state.dois~q\,
	datad => \ALT_INV_entrada[2]~input_o\,
	datae => \ALT_INV_present_state.tres~q\,
	dataf => \ALT_INV_present_state.um~q\,
	combout => \Selector1~1_combout\);

-- Location: FF_X88_Y9_N23
\present_state.tres\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~2_combout\,
	ena => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.tres~q\);

-- Location: LABCELL_X88_Y9_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \present_state.tres~q\ & ( \entrada[0]~input_o\ & ( (!\entrada[1]~input_o\) # (\entrada[2]~input_o\) ) ) ) # ( !\present_state.tres~q\ & ( \entrada[0]~input_o\ ) ) # ( \present_state.tres~q\ & ( !\entrada[0]~input_o\ ) ) # ( 
-- !\present_state.tres~q\ & ( !\entrada[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datac => \ALT_INV_entrada[1]~input_o\,
	datae => \ALT_INV_present_state.tres~q\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X88_Y9_N44
\present_state.um\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	ena => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.um~q\);

-- Location: LABCELL_X88_Y9_N54
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \present_state.dois~q\ & ( \entrada[0]~input_o\ & ( (!\entrada[1]~input_o\) # ((!\present_state.tres~q\) # (\entrada[2]~input_o\)) ) ) ) # ( !\present_state.dois~q\ & ( \entrada[0]~input_o\ & ( (!\present_state.um~q\ & 
-- (!\entrada[1]~input_o\ & !\entrada[2]~input_o\)) ) ) ) # ( \present_state.dois~q\ & ( !\entrada[0]~input_o\ & ( (!\entrada[1]~input_o\) # (\entrada[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011111100111110000000100000001111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.um~q\,
	datab => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_entrada[2]~input_o\,
	datad => \ALT_INV_present_state.tres~q\,
	datae => \ALT_INV_present_state.dois~q\,
	dataf => \ALT_INV_entrada[0]~input_o\,
	combout => \Selector2~0_combout\);

-- Location: FF_X88_Y9_N56
\present_state.dois\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_state.dois~q\);

-- Location: LABCELL_X88_Y9_N48
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \present_state.dois~q\ & ( (!\entrada[2]~input_o\ & ((!\entrada[1]~input_o\ & (\entrada[0]~input_o\ & !\present_state.um~q\)) # (\entrada[1]~input_o\ & (!\entrada[0]~input_o\ & \present_state.um~q\)))) ) ) # ( 
-- !\present_state.dois~q\ & ( (!\entrada[2]~input_o\ & (\entrada[0]~input_o\ & (!\entrada[1]~input_o\ $ (\present_state.um~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000001000001000000000100000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada[2]~input_o\,
	datab => \ALT_INV_entrada[1]~input_o\,
	datac => \ALT_INV_entrada[0]~input_o\,
	datad => \ALT_INV_present_state.um~q\,
	dataf => \ALT_INV_present_state.dois~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X88_Y9_N27
\saida_moore[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_moore[0]$latch~combout\ = ( \saida_moore[0]$latch~combout\ & ( \Selector5~0_combout\ & ( !\present_state.dois~q\ ) ) ) # ( !\saida_moore[0]$latch~combout\ & ( \Selector5~0_combout\ & ( !\present_state.dois~q\ ) ) ) # ( 
-- \saida_moore[0]$latch~combout\ & ( !\Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_present_state.dois~q\,
	datae => \ALT_INV_saida_moore[0]$latch~combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \saida_moore[0]$latch~combout\);

-- Location: LABCELL_X88_Y9_N0
\saida_moore[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_moore[1]$latch~combout\ = ( \saida_moore[1]$latch~combout\ & ( \Selector5~0_combout\ & ( \present_state.um~q\ ) ) ) # ( !\saida_moore[1]$latch~combout\ & ( \Selector5~0_combout\ & ( \present_state.um~q\ ) ) ) # ( \saida_moore[1]$latch~combout\ & ( 
-- !\Selector5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_present_state.um~q\,
	datae => \ALT_INV_saida_moore[1]$latch~combout\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \saida_moore[1]$latch~combout\);

-- Location: LABCELL_X57_Y23_N0
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


