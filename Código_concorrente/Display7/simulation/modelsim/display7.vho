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

-- DATE "04/30/2020 13:58:44"

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

ENTITY 	display7 IS
    PORT (
	en0 : IN std_logic;
	en1 : IN std_logic;
	en2 : IN std_logic;
	en3 : IN std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic
	);
END display7;

-- Design Ports Information
-- a	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en1	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en3	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en0	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en2	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en0 : std_logic;
SIGNAL ww_en1 : std_logic;
SIGNAL ww_en2 : std_logic;
SIGNAL ww_en3 : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \en2~input_o\ : std_logic;
SIGNAL \en1~input_o\ : std_logic;
SIGNAL \en0~input_o\ : std_logic;
SIGNAL \en3~input_o\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \b~0_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \d~0_combout\ : std_logic;
SIGNAL \d~1_combout\ : std_logic;
SIGNAL \f~0_combout\ : std_logic;
SIGNAL \g~0_combout\ : std_logic;
SIGNAL \ALT_INV_en2~input_o\ : std_logic;
SIGNAL \ALT_INV_en0~input_o\ : std_logic;
SIGNAL \ALT_INV_en3~input_o\ : std_logic;
SIGNAL \ALT_INV_en1~input_o\ : std_logic;

BEGIN

ww_en0 <= en0;
ww_en1 <= en1;
ww_en2 <= en2;
ww_en3 <= en3;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_en2~input_o\ <= NOT \en2~input_o\;
\ALT_INV_en0~input_o\ <= NOT \en0~input_o\;
\ALT_INV_en3~input_o\ <= NOT \en3~input_o\;
\ALT_INV_en1~input_o\ <= NOT \en1~input_o\;

-- Location: IOOBUF_X89_Y37_N39
\a~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \a~0_combout\,
	devoe => ww_devoe,
	o => ww_a);

-- Location: IOOBUF_X89_Y36_N5
\b~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b~0_combout\,
	devoe => ww_devoe,
	o => ww_b);

-- Location: IOOBUF_X89_Y35_N96
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c~0_combout\,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOOBUF_X89_Y37_N5
\d~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~0_combout\,
	devoe => ww_devoe,
	o => ww_d);

-- Location: IOOBUF_X89_Y35_N62
\e~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \d~1_combout\,
	devoe => ww_devoe,
	o => ww_e);

-- Location: IOOBUF_X89_Y37_N56
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \f~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOOBUF_X89_Y37_N22
\g~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \g~0_combout\,
	devoe => ww_devoe,
	o => ww_g);

-- Location: IOIBUF_X89_Y36_N21
\en2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en2,
	o => \en2~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\en1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en1,
	o => \en1~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\en0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en0,
	o => \en0~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\en3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en3,
	o => \en3~input_o\);

-- Location: LABCELL_X88_Y37_N30
\a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \a~0_combout\ = ( \en0~input_o\ & ( \en3~input_o\ ) ) # ( !\en0~input_o\ & ( \en3~input_o\ & ( (\en1~input_o\) # (\en2~input_o\) ) ) ) # ( \en0~input_o\ & ( !\en3~input_o\ ) ) # ( !\en0~input_o\ & ( !\en3~input_o\ & ( (!\en1~input_o\) # (\en2~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111111111111111101011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en2~input_o\,
	datac => \ALT_INV_en1~input_o\,
	datae => \ALT_INV_en0~input_o\,
	dataf => \ALT_INV_en3~input_o\,
	combout => \a~0_combout\);

-- Location: LABCELL_X88_Y37_N36
\b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b~0_combout\ = ( \en3~input_o\ & ( (!\en1~input_o\) # (\en2~input_o\) ) ) # ( !\en3~input_o\ & ( (!\en2~input_o\) # (!\en1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en2~input_o\,
	datac => \ALT_INV_en1~input_o\,
	dataf => \ALT_INV_en3~input_o\,
	combout => \b~0_combout\);

-- Location: LABCELL_X88_Y37_N15
\c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c~0_combout\ = ( \en3~input_o\ ) # ( !\en3~input_o\ & ( (!\en2~input_o\) # (\en1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111111111111111111111010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en1~input_o\,
	datad => \ALT_INV_en2~input_o\,
	datae => \ALT_INV_en3~input_o\,
	combout => \c~0_combout\);

-- Location: LABCELL_X88_Y37_N51
\d~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~0_combout\ = ( \en0~input_o\ & ( \en3~input_o\ ) ) # ( !\en0~input_o\ & ( \en3~input_o\ & ( !\en1~input_o\ $ (!\en2~input_o\) ) ) ) # ( \en0~input_o\ & ( !\en3~input_o\ ) ) # ( !\en0~input_o\ & ( !\en3~input_o\ & ( (!\en1~input_o\) # (\en2~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111111111111111111101010101101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en1~input_o\,
	datad => \ALT_INV_en2~input_o\,
	datae => \ALT_INV_en0~input_o\,
	dataf => \ALT_INV_en3~input_o\,
	combout => \d~0_combout\);

-- Location: LABCELL_X88_Y37_N24
\d~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \d~1_combout\ = ( !\en3~input_o\ & ( (!\en1~input_o\) # (\en2~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101000000000000000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en2~input_o\,
	datac => \ALT_INV_en1~input_o\,
	datae => \ALT_INV_en3~input_o\,
	combout => \d~1_combout\);

-- Location: LABCELL_X88_Y37_N0
\f~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \f~0_combout\ = ( \en0~input_o\ & ( \en3~input_o\ ) ) # ( !\en0~input_o\ & ( \en3~input_o\ & ( (!\en2~input_o\ & \en1~input_o\) ) ) ) # ( \en0~input_o\ & ( !\en3~input_o\ ) ) # ( !\en0~input_o\ & ( !\en3~input_o\ & ( (!\en2~input_o\) # (\en1~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111111111111111111100001010000010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en2~input_o\,
	datac => \ALT_INV_en1~input_o\,
	datae => \ALT_INV_en0~input_o\,
	dataf => \ALT_INV_en3~input_o\,
	combout => \f~0_combout\);

-- Location: LABCELL_X88_Y37_N9
\g~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \g~0_combout\ = ( \en0~input_o\ & ( \en3~input_o\ ) ) # ( !\en0~input_o\ & ( \en3~input_o\ & ( !\en1~input_o\ $ (!\en2~input_o\) ) ) ) # ( \en0~input_o\ & ( !\en3~input_o\ ) ) # ( !\en0~input_o\ & ( !\en3~input_o\ & ( (\en2~input_o\) # (\en1~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111101010101101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en1~input_o\,
	datad => \ALT_INV_en2~input_o\,
	datae => \ALT_INV_en0~input_o\,
	dataf => \ALT_INV_en3~input_o\,
	combout => \g~0_combout\);

-- Location: MLABCELL_X72_Y19_N0
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


