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

-- DATE "08/30/2016 02:05:16"

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

ENTITY 	synchronous_counter IS
    PORT (
	clk : IN std_logic;
	count : OUT std_logic_vector(3 DOWNTO 0)
	);
END synchronous_counter;

-- Design Ports Information
-- count[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF synchronous_counter IS
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
SIGNAL ww_count : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tff_array:1:tff1:tff|q~0_combout\ : std_logic;
SIGNAL \tff_array:1:tff1:tff|q~q\ : std_logic;
SIGNAL \tff_array:2:tffx:tff|q~0_combout\ : std_logic;
SIGNAL \tff_array:2:tffx:tff|q~q\ : std_logic;
SIGNAL \tff_array:4:tffN:tff|q~0_combout\ : std_logic;
SIGNAL \tff_array:4:tffN:tff|q~q\ : std_logic;
SIGNAL \tff_array:3:tffx:tff|q~0_combout\ : std_logic;
SIGNAL \tff_array:3:tffx:tff|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y2_N2
\count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff_array:4:tffN:tff|q~q\,
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff_array:3:tffx:tff|q~q\,
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff_array:2:tffx:tff|q~q\,
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tff_array:1:tff1:tff|q~q\,
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N2
\tff_array:1:tff1:tff|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tff_array:1:tff1:tff|q~0_combout\ = !\tff_array:1:tff1:tff|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tff_array:1:tff1:tff|q~q\,
	combout => \tff_array:1:tff1:tff|q~0_combout\);

-- Location: FF_X1_Y2_N3
\tff_array:1:tff1:tff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tff_array:1:tff1:tff|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff_array:1:tff1:tff|q~q\);

-- Location: LCCOMB_X1_Y2_N12
\tff_array:2:tffx:tff|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tff_array:2:tffx:tff|q~0_combout\ = \tff_array:2:tffx:tff|q~q\ $ (\tff_array:1:tff1:tff|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tff_array:2:tffx:tff|q~q\,
	datad => \tff_array:1:tff1:tff|q~q\,
	combout => \tff_array:2:tffx:tff|q~0_combout\);

-- Location: FF_X1_Y2_N13
\tff_array:2:tffx:tff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tff_array:2:tffx:tff|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff_array:2:tffx:tff|q~q\);

-- Location: LCCOMB_X1_Y2_N16
\tff_array:4:tffN:tff|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tff_array:4:tffN:tff|q~0_combout\ = \tff_array:4:tffN:tff|q~q\ $ (((\tff_array:3:tffx:tff|q~q\ & (\tff_array:1:tff1:tff|q~q\ & \tff_array:2:tffx:tff|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tff_array:3:tffx:tff|q~q\,
	datab => \tff_array:1:tff1:tff|q~q\,
	datac => \tff_array:4:tffN:tff|q~q\,
	datad => \tff_array:2:tffx:tff|q~q\,
	combout => \tff_array:4:tffN:tff|q~0_combout\);

-- Location: FF_X1_Y2_N17
\tff_array:4:tffN:tff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tff_array:4:tffN:tff|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff_array:4:tffN:tff|q~q\);

-- Location: LCCOMB_X1_Y2_N6
\tff_array:3:tffx:tff|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tff_array:3:tffx:tff|q~0_combout\ = \tff_array:3:tffx:tff|q~q\ $ (((\tff_array:1:tff1:tff|q~q\ & \tff_array:2:tffx:tff|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tff_array:1:tff1:tff|q~q\,
	datac => \tff_array:3:tffx:tff|q~q\,
	datad => \tff_array:2:tffx:tff|q~q\,
	combout => \tff_array:3:tffx:tff|q~0_combout\);

-- Location: FF_X1_Y2_N7
\tff_array:3:tffx:tff|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tff_array:3:tffx:tff|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tff_array:3:tffx:tff|q~q\);

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;
END structure;


