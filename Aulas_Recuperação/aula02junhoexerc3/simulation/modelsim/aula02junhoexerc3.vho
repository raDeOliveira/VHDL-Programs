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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "06/04/2020 18:32:22"

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

ENTITY 	aula02junhoexerc3 IS
    PORT (
	elementos : IN std_logic_vector(5 DOWNTO 0);
	saida : OUT std_logic
	);
END aula02junhoexerc3;

-- Design Ports Information
-- elementos[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- elementos[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- elementos[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- elementos[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- elementos[5]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- elementos[0]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF aula02junhoexerc3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_elementos : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_saida : std_logic;
SIGNAL \elementos[1]~input_o\ : std_logic;
SIGNAL \elementos[2]~input_o\ : std_logic;
SIGNAL \elementos[3]~input_o\ : std_logic;
SIGNAL \elementos[4]~input_o\ : std_logic;
SIGNAL \elementos[5]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \elementos[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_elementos[0]~input_o\ : std_logic;

BEGIN

ww_elementos <= elementos;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_elementos[0]~input_o\ <= NOT \elementos[0]~input_o\;

-- Location: IOOBUF_X89_Y6_N22
\saida~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_elementos[0]~input_o\,
	devoe => ww_devoe,
	o => ww_saida);

-- Location: IOIBUF_X89_Y6_N38
\elementos[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(0),
	o => \elementos[0]~input_o\);

-- Location: IOIBUF_X68_Y81_N35
\elementos[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(1),
	o => \elementos[1]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\elementos[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(2),
	o => \elementos[2]~input_o\);

-- Location: IOIBUF_X30_Y81_N18
\elementos[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(3),
	o => \elementos[3]~input_o\);

-- Location: IOIBUF_X40_Y81_N52
\elementos[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(4),
	o => \elementos[4]~input_o\);

-- Location: IOIBUF_X64_Y81_N1
\elementos[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_elementos(5),
	o => \elementos[5]~input_o\);

-- Location: LABCELL_X85_Y71_N3
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


