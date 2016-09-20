-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "08/30/2016 01:13:18"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	tflipflop IS
    PORT (
	clk : IN std_logic;
	d : IN std_logic;
	enable : IN std_logic;
	d_and_enable : BUFFER std_logic;
	q : BUFFER std_logic
	);
END tflipflop;

-- Design Ports Information
-- d_and_enable	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF tflipflop IS
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
SIGNAL ww_d : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_d_and_enable : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \d_and_enable~output_o\ : std_logic;
SIGNAL \q~output_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \d_and_enable~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \q~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_d <= d;
ww_enable <= enable;
d_and_enable <= ww_d_and_enable;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y26_N16
\d_and_enable~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d_and_enable~0_combout\,
	devoe => ww_devoe,
	o => \d_and_enable~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\q~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~reg0_q\,
	devoe => ww_devoe,
	o => \q~output_o\);

-- Location: IOIBUF_X0_Y25_N15
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: LCCOMB_X1_Y26_N16
\d_and_enable~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d_and_enable~0_combout\ = (\enable~input_o\ & \d~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \d~input_o\,
	combout => \d_and_enable~0_combout\);

-- Location: IOIBUF_X0_Y26_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y26_N14
\q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q~0_combout\ = \q~reg0_q\ $ (((\enable~input_o\ & \d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \q~reg0_q\,
	datad => \d~input_o\,
	combout => \q~0_combout\);

-- Location: FF_X1_Y26_N15
\q~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q~reg0_q\);

ww_d_and_enable <= \d_and_enable~output_o\;

ww_q <= \q~output_o\;
END structure;


