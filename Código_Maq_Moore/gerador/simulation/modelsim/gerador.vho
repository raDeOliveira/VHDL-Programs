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

-- DATE "06/04/2020 08:11:57"

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

ENTITY 	gerador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	GERA : IN std_logic;
	Moore_ot : OUT std_logic
	);
END gerador;

-- Design Ports Information
-- Moore_ot	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GERA	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gerador IS
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
SIGNAL ww_GERA : std_logic;
SIGNAL ww_Moore_ot : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \GERA~input_o\ : std_logic;
SIGNAL \stateMoore_reg~0_combout\ : std_logic;
SIGNAL \stateMoore_reg~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \stateMoore_reg~q\ : std_logic;
SIGNAL \Moore_ot$latch~combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_GERA~input_o\ : std_logic;
SIGNAL \ALT_INV_Moore_ot$latch~combout\ : std_logic;
SIGNAL \ALT_INV_stateMoore_reg~0_combout\ : std_logic;
SIGNAL \ALT_INV_stateMoore_reg~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_GERA <= GERA;
Moore_ot <= ww_Moore_ot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_GERA~input_o\ <= NOT \GERA~input_o\;
\ALT_INV_Moore_ot$latch~combout\ <= NOT \Moore_ot$latch~combout\;
\ALT_INV_stateMoore_reg~0_combout\ <= NOT \stateMoore_reg~0_combout\;
\ALT_INV_stateMoore_reg~q\ <= NOT \stateMoore_reg~q\;

-- Location: IOOBUF_X4_Y0_N2
\Moore_ot~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Moore_ot$latch~combout\,
	devoe => ww_devoe,
	o => ww_Moore_ot);

-- Location: IOIBUF_X4_Y0_N52
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\GERA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GERA,
	o => \GERA~input_o\);

-- Location: LABCELL_X4_Y1_N24
\stateMoore_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateMoore_reg~0_combout\ = ( !\GERA~input_o\ & ( \stateMoore_reg~q\ ) ) # ( \GERA~input_o\ & ( !\stateMoore_reg~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_GERA~input_o\,
	dataf => \ALT_INV_stateMoore_reg~q\,
	combout => \stateMoore_reg~0_combout\);

-- Location: LABCELL_X4_Y1_N51
\stateMoore_reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateMoore_reg~feeder_combout\ = \stateMoore_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stateMoore_reg~0_combout\,
	combout => \stateMoore_reg~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X4_Y1_N53
stateMoore_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stateMoore_reg~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateMoore_reg~q\);

-- Location: LABCELL_X4_Y1_N57
\Moore_ot$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \Moore_ot$latch~combout\ = ( \Moore_ot$latch~combout\ & ( \GERA~input_o\ ) ) # ( \Moore_ot$latch~combout\ & ( !\GERA~input_o\ & ( \stateMoore_reg~q\ ) ) ) # ( !\Moore_ot$latch~combout\ & ( !\GERA~input_o\ & ( \stateMoore_reg~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateMoore_reg~q\,
	datae => \ALT_INV_Moore_ot$latch~combout\,
	dataf => \ALT_INV_GERA~input_o\,
	combout => \Moore_ot$latch~combout\);

-- Location: LABCELL_X85_Y52_N3
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


