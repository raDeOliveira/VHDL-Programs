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

-- DATE "05/27/2020 07:44:03"

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

ENTITY 	verificamoore IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	saida_moore : BUFFER std_logic;
	saida_mealy : OUT std_logic
	);
END verificamoore;

-- Design Ports Information
-- saida_moore	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_mealy	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF verificamoore IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_saida_moore : std_logic;
SIGNAL ww_saida_mealy : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \stateMoore_reg~feeder_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stateMoore_reg~q\ : std_logic;
SIGNAL \stateMealy_reg~0_combout\ : std_logic;
SIGNAL \stateMealy_reg~q\ : std_logic;
SIGNAL \saida_mealy~0_combout\ : std_logic;
SIGNAL \saida_mealy$latch~combout\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_saida_mealy$latch~combout\ : std_logic;
SIGNAL \ALT_INV_saida_mealy~0_combout\ : std_logic;
SIGNAL \ALT_INV_stateMealy_reg~q\ : std_logic;
SIGNAL \ALT_INV_stateMoore_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start <= start;
saida_moore <= ww_saida_moore;
saida_mealy <= ww_saida_mealy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_saida_mealy$latch~combout\ <= NOT \saida_mealy$latch~combout\;
\ALT_INV_saida_mealy~0_combout\ <= NOT \saida_mealy~0_combout\;
\ALT_INV_stateMealy_reg~q\ <= NOT \stateMealy_reg~q\;
\ALT_INV_stateMoore_reg~q\ <= NOT \stateMoore_reg~q\;

-- Location: IOOBUF_X89_Y38_N22
\saida_moore~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_stateMoore_reg~q\,
	devoe => ww_devoe,
	o => ww_saida_moore);

-- Location: IOOBUF_X89_Y38_N39
\saida_mealy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_mealy$latch~combout\,
	devoe => ww_devoe,
	o => ww_saida_mealy);

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

-- Location: LABCELL_X88_Y38_N45
\stateMoore_reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateMoore_reg~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \stateMoore_reg~feeder_combout\);

-- Location: IOIBUF_X89_Y38_N4
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X88_Y38_N47
stateMoore_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \stateMoore_reg~feeder_combout\,
	clrn => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateMoore_reg~q\);

-- Location: LABCELL_X88_Y38_N18
\stateMealy_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateMealy_reg~0_combout\ = ( !\stateMoore_reg~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_stateMoore_reg~q\,
	combout => \stateMealy_reg~0_combout\);

-- Location: FF_X88_Y38_N20
stateMealy_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \stateMealy_reg~0_combout\,
	clrn => \ALT_INV_start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateMealy_reg~q\);

-- Location: LABCELL_X88_Y38_N57
\saida_mealy~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_mealy~0_combout\ = ( !\stateMoore_reg~q\ & ( \stateMealy_reg~q\ ) ) # ( \stateMoore_reg~q\ & ( !\stateMealy_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_stateMoore_reg~q\,
	dataf => \ALT_INV_stateMealy_reg~q\,
	combout => \saida_mealy~0_combout\);

-- Location: LABCELL_X88_Y38_N30
\saida_mealy$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \saida_mealy$latch~combout\ = ( \saida_mealy~0_combout\ & ( \stateMealy_reg~q\ & ( \saida_mealy$latch~combout\ ) ) ) # ( \saida_mealy~0_combout\ & ( !\stateMealy_reg~q\ & ( \saida_mealy$latch~combout\ ) ) ) # ( !\saida_mealy~0_combout\ & ( 
-- !\stateMealy_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_saida_mealy$latch~combout\,
	datae => \ALT_INV_saida_mealy~0_combout\,
	dataf => \ALT_INV_stateMealy_reg~q\,
	combout => \saida_mealy$latch~combout\);

-- Location: LABCELL_X55_Y79_N0
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


