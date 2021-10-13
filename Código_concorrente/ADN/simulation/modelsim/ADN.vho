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

-- DATE "04/23/2020 18:09:21"

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

ENTITY 	ADN IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	d : IN std_logic;
	e : IN std_logic;
	a2 : IN std_logic;
	b2 : IN std_logic;
	c2 : IN std_logic;
	d2 : IN std_logic;
	e2 : IN std_logic;
	b_out : OUT std_logic;
	b2_out : OUT std_logic;
	b3_out : OUT std_logic;
	b4_out : OUT std_logic;
	b5_out : OUT std_logic
	);
END ADN;

-- Design Ports Information
-- b_out	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2_out	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3_out	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4_out	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5_out	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a2	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e2	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ADN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_a2 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_e2 : std_logic;
SIGNAL ww_b_out : std_logic;
SIGNAL ww_b2_out : std_logic;
SIGNAL ww_b3_out : std_logic;
SIGNAL ww_b4_out : std_logic;
SIGNAL ww_b5_out : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \a2~input_o\ : std_logic;
SIGNAL \b_out~0_combout\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b2_out~0_combout\ : std_logic;
SIGNAL \c2~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b3_out~0_combout\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \b4_out~0_combout\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \e2~input_o\ : std_logic;
SIGNAL \b5_out~0_combout\ : std_logic;
SIGNAL \ALT_INV_e2~input_o\ : std_logic;
SIGNAL \ALT_INV_e~input_o\ : std_logic;
SIGNAL \ALT_INV_d2~input_o\ : std_logic;
SIGNAL \ALT_INV_d~input_o\ : std_logic;
SIGNAL \ALT_INV_c2~input_o\ : std_logic;
SIGNAL \ALT_INV_c~input_o\ : std_logic;
SIGNAL \ALT_INV_b2~input_o\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a2~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_c <= c;
ww_d <= d;
ww_e <= e;
ww_a2 <= a2;
ww_b2 <= b2;
ww_c2 <= c2;
ww_d2 <= d2;
ww_e2 <= e2;
b_out <= ww_b_out;
b2_out <= ww_b2_out;
b3_out <= ww_b3_out;
b4_out <= ww_b4_out;
b5_out <= ww_b5_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_e2~input_o\ <= NOT \e2~input_o\;
\ALT_INV_e~input_o\ <= NOT \e~input_o\;
\ALT_INV_d2~input_o\ <= NOT \d2~input_o\;
\ALT_INV_d~input_o\ <= NOT \d~input_o\;
\ALT_INV_c2~input_o\ <= NOT \c2~input_o\;
\ALT_INV_c~input_o\ <= NOT \c~input_o\;
\ALT_INV_b2~input_o\ <= NOT \b2~input_o\;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a2~input_o\ <= NOT \a2~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;

-- Location: IOOBUF_X4_Y0_N19
\b_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b_out);

-- Location: IOOBUF_X6_Y0_N36
\b2_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b2_out);

-- Location: IOOBUF_X56_Y0_N53
\b3_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b3_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b3_out);

-- Location: IOOBUF_X28_Y0_N53
\b4_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b4_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b4_out);

-- Location: IOOBUF_X30_Y0_N19
\b5_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b5_out~0_combout\,
	devoe => ww_devoe,
	o => ww_b5_out);

-- Location: IOIBUF_X4_Y0_N1
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\a2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a2,
	o => \a2~input_o\);

-- Location: LABCELL_X4_Y1_N30
\b_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b_out~0_combout\ = ( \a2~input_o\ & ( \a~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_a~input_o\,
	dataf => \ALT_INV_a2~input_o\,
	combout => \b_out~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\b2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: LABCELL_X4_Y1_N39
\b2_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2_out~0_combout\ = ( \b~input_o\ & ( \b2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_b2~input_o\,
	combout => \b2_out~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\c2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2,
	o => \c2~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: LABCELL_X56_Y1_N30
\b3_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b3_out~0_combout\ = ( \c~input_o\ & ( \c2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_c2~input_o\,
	datae => \ALT_INV_c~input_o\,
	combout => \b3_out~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\d2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\d~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: MLABCELL_X28_Y1_N0
\b4_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b4_out~0_combout\ = ( \d~input_o\ & ( \d2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_d2~input_o\,
	dataf => \ALT_INV_d~input_o\,
	combout => \b4_out~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\e~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\e2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e2,
	o => \e2~input_o\);

-- Location: LABCELL_X30_Y1_N33
\b5_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b5_out~0_combout\ = ( \e2~input_o\ & ( \e~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_e~input_o\,
	datae => \ALT_INV_e2~input_o\,
	combout => \b5_out~0_combout\);

-- Location: LABCELL_X56_Y55_N0
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


