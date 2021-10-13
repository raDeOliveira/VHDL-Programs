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

-- DATE "04/16/2020 18:15:45"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX IS
    PORT (
	a_IN : IN std_logic_vector(5 DOWNTO 0);
	sel : IN std_logic_vector(2 DOWNTO 0);
	enable : IN std_logic;
	enable1 : IN std_logic;
	b_OUT : OUT std_logic
	);
END MUX;

-- Design Ports Information
-- b_OUT	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[4]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[2]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_IN[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable1	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a_IN : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_enable1 : std_logic;
SIGNAL ww_b_OUT : std_logic;
SIGNAL \b_OUT~output_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \a_IN[0]~input_o\ : std_logic;
SIGNAL \a_IN[2]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \a_IN[3]~input_o\ : std_logic;
SIGNAL \a_IN[1]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \a_IN[4]~input_o\ : std_logic;
SIGNAL \a_IN[5]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \enable1~input_o\ : std_logic;
SIGNAL \b_OUT~1_combout\ : std_logic;

BEGIN

ww_a_IN <= a_IN;
ww_sel <= sel;
ww_enable <= enable;
ww_enable1 <= enable1;
b_OUT <= ww_b_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y24_N9
\b_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~3_combout\,
	oe => \b_OUT~1_combout\,
	devoe => ww_devoe,
	o => \b_OUT~output_o\);

-- Location: IOIBUF_X1_Y24_N8
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\a_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(0),
	o => \a_IN[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\a_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(2),
	o => \a_IN[2]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LCCOMB_X8_Y23_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & ((\a_IN[2]~input_o\))) # (!\sel[1]~input_o\ & (\a_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[0]~input_o\,
	datab => \a_IN[0]~input_o\,
	datac => \a_IN[2]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X5_Y24_N8
\a_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(3),
	o => \a_IN[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\a_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(1),
	o => \a_IN[1]~input_o\);

-- Location: LCCOMB_X8_Y23_N12
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\ & ((\a_IN[3]~input_o\) # ((!\sel[0]~input_o\)))) # (!\Mux0~1_combout\ & (((\sel[0]~input_o\ & \a_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \a_IN[3]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \a_IN[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: IOIBUF_X0_Y23_N1
\a_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(4),
	o => \a_IN[4]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\a_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_IN(5),
	o => \a_IN[5]~input_o\);

-- Location: LCCOMB_X8_Y23_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & ((\a_IN[5]~input_o\))) # (!\sel[0]~input_o\ & (\a_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_IN[4]~input_o\,
	datab => \a_IN[5]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X13_Y24_N22
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: LCCOMB_X8_Y23_N22
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\sel[2]~input_o\ & ((\Mux0~0_combout\))) # (!\sel[2]~input_o\ & (\Mux0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~0_combout\,
	datad => \sel[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X0_Y21_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\enable1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable1,
	o => \enable1~input_o\);

-- Location: LCCOMB_X8_Y23_N0
\b_OUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_OUT~1_combout\ = (!\enable~input_o\ & (\enable1~input_o\ & ((!\sel[2]~input_o\) # (!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \sel[1]~input_o\,
	datac => \enable1~input_o\,
	datad => \sel[2]~input_o\,
	combout => \b_OUT~1_combout\);

ww_b_OUT <= \b_OUT~output_o\;
END structure;


