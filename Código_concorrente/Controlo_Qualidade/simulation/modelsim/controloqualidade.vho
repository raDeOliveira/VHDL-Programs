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

-- DATE "04/30/2020 19:01:02"

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

ENTITY 	controloqualidade IS
    PORT (
	bits_entrada : IN std_logic_vector(7 DOWNTO 0);
	bits_entrada2 : IN std_logic_vector(7 DOWNTO 0);
	led_verde : OUT std_logic;
	led_vermelho : OUT std_logic
	);
END controloqualidade;

-- Design Ports Information
-- bits_entrada[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[2]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[4]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[4]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[5]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_verde	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_vermelho	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bits_entrada2[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controloqualidade IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bits_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bits_entrada2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_verde : std_logic;
SIGNAL ww_led_vermelho : std_logic;
SIGNAL \bits_entrada[1]~input_o\ : std_logic;
SIGNAL \bits_entrada[2]~input_o\ : std_logic;
SIGNAL \bits_entrada[3]~input_o\ : std_logic;
SIGNAL \bits_entrada[4]~input_o\ : std_logic;
SIGNAL \bits_entrada[5]~input_o\ : std_logic;
SIGNAL \bits_entrada[6]~input_o\ : std_logic;
SIGNAL \bits_entrada[7]~input_o\ : std_logic;
SIGNAL \bits_entrada2[1]~input_o\ : std_logic;
SIGNAL \bits_entrada2[2]~input_o\ : std_logic;
SIGNAL \bits_entrada2[3]~input_o\ : std_logic;
SIGNAL \bits_entrada2[4]~input_o\ : std_logic;
SIGNAL \bits_entrada2[5]~input_o\ : std_logic;
SIGNAL \bits_entrada2[6]~input_o\ : std_logic;
SIGNAL \bits_entrada2[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \bits_entrada2[0]~input_o\ : std_logic;
SIGNAL \bits_entrada[0]~input_o\ : std_logic;
SIGNAL \led_verde~0_combout\ : std_logic;
SIGNAL \ALT_INV_bits_entrada2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_bits_entrada[0]~input_o\ : std_logic;

BEGIN

ww_bits_entrada <= bits_entrada;
ww_bits_entrada2 <= bits_entrada2;
led_verde <= ww_led_verde;
led_vermelho <= ww_led_vermelho;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_bits_entrada2[0]~input_o\ <= NOT \bits_entrada2[0]~input_o\;
\ALT_INV_bits_entrada[0]~input_o\ <= NOT \bits_entrada[0]~input_o\;

-- Location: IOOBUF_X28_Y0_N2
\led_verde~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \led_verde~0_combout\,
	devoe => ww_devoe,
	o => ww_led_verde);

-- Location: IOOBUF_X28_Y81_N53
\led_vermelho~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_led_vermelho);

-- Location: IOIBUF_X28_Y0_N35
\bits_entrada2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(0),
	o => \bits_entrada2[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\bits_entrada[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(0),
	o => \bits_entrada[0]~input_o\);

-- Location: MLABCELL_X28_Y1_N0
\led_verde~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led_verde~0_combout\ = ( \bits_entrada2[0]~input_o\ & ( \bits_entrada[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_bits_entrada2[0]~input_o\,
	dataf => \ALT_INV_bits_entrada[0]~input_o\,
	combout => \led_verde~0_combout\);

-- Location: IOIBUF_X50_Y0_N58
\bits_entrada[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(1),
	o => \bits_entrada[1]~input_o\);

-- Location: IOIBUF_X88_Y81_N53
\bits_entrada[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(2),
	o => \bits_entrada[2]~input_o\);

-- Location: IOIBUF_X66_Y81_N92
\bits_entrada[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(3),
	o => \bits_entrada[3]~input_o\);

-- Location: IOIBUF_X72_Y0_N18
\bits_entrada[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(4),
	o => \bits_entrada[4]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\bits_entrada[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(5),
	o => \bits_entrada[5]~input_o\);

-- Location: IOIBUF_X76_Y81_N1
\bits_entrada[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(6),
	o => \bits_entrada[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\bits_entrada[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada(7),
	o => \bits_entrada[7]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\bits_entrada2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(1),
	o => \bits_entrada2[1]~input_o\);

-- Location: IOIBUF_X72_Y81_N1
\bits_entrada2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(2),
	o => \bits_entrada2[2]~input_o\);

-- Location: IOIBUF_X76_Y81_N18
\bits_entrada2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(3),
	o => \bits_entrada2[3]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\bits_entrada2[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(4),
	o => \bits_entrada2[4]~input_o\);

-- Location: IOIBUF_X26_Y81_N41
\bits_entrada2[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(5),
	o => \bits_entrada2[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\bits_entrada2[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(6),
	o => \bits_entrada2[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\bits_entrada2[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bits_entrada2(7),
	o => \bits_entrada2[7]~input_o\);

-- Location: LABCELL_X45_Y24_N3
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


