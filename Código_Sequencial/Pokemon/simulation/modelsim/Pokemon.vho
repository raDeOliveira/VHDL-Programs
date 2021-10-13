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

-- DATE "05/21/2020 19:06:46"

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

ENTITY 	Pokemon IS
    PORT (
	jogador1 : IN std_logic;
	jogador2 : IN std_logic;
	pk_Win : OUT std_logic;
	pk_Tie : OUT std_logic
	);
END Pokemon;

-- Design Ports Information
-- pk_Win	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pk_Tie	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogador1	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- jogador2	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pokemon IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_jogador1 : std_logic;
SIGNAL ww_jogador2 : std_logic;
SIGNAL ww_pk_Win : std_logic;
SIGNAL ww_pk_Tie : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \jogador1~input_o\ : std_logic;
SIGNAL \jogador2~input_o\ : std_logic;
SIGNAL \pokemon~0_combout\ : std_logic;
SIGNAL \pokemon~1_combout\ : std_logic;
SIGNAL \ALT_INV_jogador2~input_o\ : std_logic;
SIGNAL \ALT_INV_jogador1~input_o\ : std_logic;
SIGNAL \ALT_INV_pokemon~1_combout\ : std_logic;

BEGIN

ww_jogador1 <= jogador1;
ww_jogador2 <= jogador2;
pk_Win <= ww_pk_Win;
pk_Tie <= ww_pk_Tie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_jogador2~input_o\ <= NOT \jogador2~input_o\;
\ALT_INV_jogador1~input_o\ <= NOT \jogador1~input_o\;
\ALT_INV_pokemon~1_combout\ <= NOT \pokemon~1_combout\;

-- Location: IOOBUF_X6_Y0_N53
\pk_Win~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pokemon~0_combout\,
	devoe => ww_devoe,
	o => ww_pk_Win);

-- Location: IOOBUF_X6_Y0_N19
\pk_Tie~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pokemon~1_combout\,
	devoe => ww_devoe,
	o => ww_pk_Tie);

-- Location: IOIBUF_X6_Y0_N1
\jogador1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogador1,
	o => \jogador1~input_o\);

-- Location: IOIBUF_X6_Y0_N35
\jogador2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_jogador2,
	o => \jogador2~input_o\);

-- Location: MLABCELL_X6_Y1_N30
\pokemon~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pokemon~0_combout\ = ( !\jogador2~input_o\ & ( \jogador1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_jogador1~input_o\,
	dataf => \ALT_INV_jogador2~input_o\,
	combout => \pokemon~0_combout\);

-- Location: MLABCELL_X6_Y1_N39
\pokemon~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pokemon~1_combout\ = ( \jogador2~input_o\ & ( !\jogador1~input_o\ ) ) # ( !\jogador2~input_o\ & ( \jogador1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_jogador1~input_o\,
	dataf => \ALT_INV_jogador2~input_o\,
	combout => \pokemon~1_combout\);

-- Location: LABCELL_X10_Y25_N3
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


