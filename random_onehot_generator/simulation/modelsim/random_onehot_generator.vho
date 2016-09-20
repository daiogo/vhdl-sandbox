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

-- DATE "08/10/2016 00:12:48"

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

ENTITY 	random_onehot_generator IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	onehot : OUT std_logic_vector(7 DOWNTO 0)
	);
END random_onehot_generator;

-- Design Ports Information
-- onehot[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[5]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[6]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- onehot[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF random_onehot_generator IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_onehot : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \onehot[0]~output_o\ : std_logic;
SIGNAL \onehot[1]~output_o\ : std_logic;
SIGNAL \onehot[2]~output_o\ : std_logic;
SIGNAL \onehot[3]~output_o\ : std_logic;
SIGNAL \onehot[4]~output_o\ : std_logic;
SIGNAL \onehot[5]~output_o\ : std_logic;
SIGNAL \onehot[6]~output_o\ : std_logic;
SIGNAL \onehot[7]~output_o\ : std_logic;
SIGNAL \generator|count[0]~7_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \generator|count~1_combout\ : std_logic;
SIGNAL \generator|count~2_combout\ : std_logic;
SIGNAL \generator|count[5]~3_combout\ : std_logic;
SIGNAL \generator|count[6]~8_combout\ : std_logic;
SIGNAL \generator|count[7]~9_combout\ : std_logic;
SIGNAL \generator|feedback~0_combout\ : std_logic;
SIGNAL \generator|feedback~q\ : std_logic;
SIGNAL \generator|count[1]~4_combout\ : std_logic;
SIGNAL \generator|count~0_combout\ : std_logic;
SIGNAL \onehot~0_combout\ : std_logic;
SIGNAL \onehot~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \onehot~2_combout\ : std_logic;
SIGNAL \onehot~3_combout\ : std_logic;
SIGNAL \onehot~4_combout\ : std_logic;
SIGNAL \onehot~5_combout\ : std_logic;
SIGNAL \onehot~6_combout\ : std_logic;
SIGNAL \onehot~7_combout\ : std_logic;
SIGNAL \onehot~8_combout\ : std_logic;
SIGNAL \onehot~9_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \onehot~11_combout\ : std_logic;
SIGNAL \onehot~10_combout\ : std_logic;
SIGNAL \onehot~12_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \onehot~13_combout\ : std_logic;
SIGNAL \onehot~14_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \onehot~15_combout\ : std_logic;
SIGNAL \onehot~16_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \generator|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_onehot~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
onehot <= ww_onehot;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_onehot~16_combout\ <= NOT \onehot~16_combout\;
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;

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

-- Location: IOOBUF_X0_Y12_N23
\onehot[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan6~0_combout\,
	devoe => ww_devoe,
	o => \onehot[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\onehot[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \onehot~2_combout\,
	devoe => ww_devoe,
	o => \onehot[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\onehot[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \onehot~7_combout\,
	devoe => ww_devoe,
	o => \onehot[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\onehot[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \onehot~9_combout\,
	devoe => ww_devoe,
	o => \onehot[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\onehot[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \onehot~12_combout\,
	devoe => ww_devoe,
	o => \onehot[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\onehot[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \onehot~14_combout\,
	devoe => ww_devoe,
	o => \onehot[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\onehot[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_onehot~16_combout\,
	devoe => ww_devoe,
	o => \onehot[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\onehot[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \onehot[7]~output_o\);

-- Location: LCCOMB_X2_Y12_N24
\generator|count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count[0]~7_combout\ = !\generator|feedback~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|feedback~q\,
	combout => \generator|count[0]~7_combout\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X2_Y12_N25
\generator|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count[0]~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(0));

-- Location: LCCOMB_X2_Y12_N6
\generator|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count~1_combout\ = \generator|feedback~q\ $ (\generator|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|feedback~q\,
	datad => \generator|count\(0),
	combout => \generator|count~1_combout\);

-- Location: FF_X2_Y12_N7
\generator|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(2));

-- Location: LCCOMB_X2_Y12_N0
\generator|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count~2_combout\ = \generator|feedback~q\ $ (\generator|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|feedback~q\,
	datad => \generator|count\(2),
	combout => \generator|count~2_combout\);

-- Location: FF_X2_Y12_N1
\generator|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(4));

-- Location: LCCOMB_X2_Y12_N20
\generator|count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count[5]~3_combout\ = !\generator|count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \generator|count\(4),
	combout => \generator|count[5]~3_combout\);

-- Location: FF_X2_Y12_N21
\generator|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count[5]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(5));

-- Location: LCCOMB_X2_Y12_N10
\generator|count[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count[6]~8_combout\ = !\generator|count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \generator|count\(5),
	combout => \generator|count[6]~8_combout\);

-- Location: FF_X2_Y12_N11
\generator|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count[6]~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(6));

-- Location: LCCOMB_X2_Y12_N16
\generator|count[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count[7]~9_combout\ = !\generator|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \generator|count\(6),
	combout => \generator|count[7]~9_combout\);

-- Location: FF_X2_Y12_N17
\generator|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count[7]~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(7));

-- Location: LCCOMB_X2_Y12_N30
\generator|feedback~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|feedback~0_combout\ = (\rst~input_o\ & ((\generator|count\(7)))) # (!\rst~input_o\ & (\generator|feedback~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \generator|feedback~q\,
	datad => \generator|count\(7),
	combout => \generator|feedback~0_combout\);

-- Location: FF_X2_Y12_N31
\generator|feedback\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|feedback~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|feedback~q\);

-- Location: LCCOMB_X2_Y12_N18
\generator|count[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count[1]~4_combout\ = !\generator|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \generator|count\(0),
	combout => \generator|count[1]~4_combout\);

-- Location: FF_X2_Y12_N19
\generator|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count[1]~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(1));

-- Location: LCCOMB_X2_Y12_N4
\generator|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \generator|count~0_combout\ = \generator|feedback~q\ $ (\generator|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|feedback~q\,
	datad => \generator|count\(1),
	combout => \generator|count~0_combout\);

-- Location: FF_X2_Y12_N5
\generator|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \generator|count~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \generator|count\(3));

-- Location: LCCOMB_X2_Y12_N2
\onehot~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~0_combout\ = (!\generator|count\(4) & (\generator|count\(3) & (!\generator|count\(2) & \generator|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(4),
	datab => \generator|count\(3),
	datac => \generator|count\(2),
	datad => \generator|count\(1),
	combout => \onehot~0_combout\);

-- Location: LCCOMB_X1_Y12_N28
\onehot~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~1_combout\ = (\generator|count\(6) & !\generator|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|count\(6),
	datad => \generator|count\(7),
	combout => \onehot~1_combout\);

-- Location: LCCOMB_X1_Y12_N6
\LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\generator|count\(5)) # (((\onehot~0_combout\ & !\generator|count\(0))) # (!\onehot~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onehot~0_combout\,
	datab => \generator|count\(0),
	datac => \generator|count\(5),
	datad => \onehot~1_combout\,
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\onehot~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~2_combout\ = (\onehot~1_combout\ & ((\onehot~0_combout\ & (!\generator|count\(0) & !\generator|count\(5))) # (!\onehot~0_combout\ & ((\generator|count\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onehot~0_combout\,
	datab => \generator|count\(0),
	datac => \generator|count\(5),
	datad => \onehot~1_combout\,
	combout => \onehot~2_combout\);

-- Location: LCCOMB_X2_Y12_N26
\onehot~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~3_combout\ = (!\generator|count\(4) & (\generator|count\(3) & !\generator|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(4),
	datab => \generator|count\(3),
	datac => \generator|count\(2),
	combout => \onehot~3_combout\);

-- Location: LCCOMB_X2_Y12_N12
\onehot~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~4_combout\ = (!\generator|count\(5) & (((\generator|count\(0) & !\generator|count\(1))) # (!\onehot~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datab => \onehot~3_combout\,
	datac => \generator|count\(0),
	datad => \generator|count\(1),
	combout => \onehot~4_combout\);

-- Location: LCCOMB_X1_Y12_N22
\onehot~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~5_combout\ = (!\generator|count\(6) & !\generator|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|count\(6),
	datad => \generator|count\(7),
	combout => \onehot~5_combout\);

-- Location: LCCOMB_X1_Y12_N20
\onehot~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~6_combout\ = (\generator|count\(5) & (\generator|count\(6) & !\generator|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datac => \generator|count\(6),
	datad => \generator|count\(7),
	combout => \onehot~6_combout\);

-- Location: LCCOMB_X1_Y12_N26
\onehot~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~7_combout\ = (\onehot~0_combout\ & ((\onehot~6_combout\) # ((\onehot~4_combout\ & \onehot~5_combout\)))) # (!\onehot~0_combout\ & (\onehot~4_combout\ & (\onehot~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onehot~0_combout\,
	datab => \onehot~4_combout\,
	datac => \onehot~5_combout\,
	datad => \onehot~6_combout\,
	combout => \onehot~7_combout\);

-- Location: LCCOMB_X2_Y12_N22
\onehot~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~8_combout\ = (\generator|count\(5) & (\generator|count\(3) & (!\generator|count\(4) & !\generator|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datab => \generator|count\(3),
	datac => \generator|count\(4),
	datad => \generator|count\(2),
	combout => \onehot~8_combout\);

-- Location: LCCOMB_X1_Y12_N16
\onehot~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~9_combout\ = (!\onehot~8_combout\ & (!\generator|count\(6) & (!\onehot~4_combout\ & !\generator|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onehot~8_combout\,
	datab => \generator|count\(6),
	datac => \onehot~4_combout\,
	datad => \generator|count\(7),
	combout => \onehot~9_combout\);

-- Location: LCCOMB_X2_Y12_N28
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\generator|count\(2) & ((\generator|count\(0)) # (!\generator|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(0),
	datab => \generator|count\(2),
	datac => \generator|count\(1),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X1_Y12_N4
\onehot~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~11_combout\ = (!\LessThan2~0_combout\ & (!\generator|count\(4) & \generator|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \generator|count\(4),
	datad => \generator|count\(3),
	combout => \onehot~11_combout\);

-- Location: LCCOMB_X1_Y12_N10
\onehot~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~10_combout\ = (!\generator|count\(5) & (\generator|count\(6) & \generator|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datac => \generator|count\(6),
	datad => \generator|count\(7),
	combout => \onehot~10_combout\);

-- Location: LCCOMB_X1_Y12_N30
\onehot~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~12_combout\ = (\onehot~8_combout\ & ((\onehot~5_combout\) # ((!\onehot~11_combout\ & \onehot~10_combout\)))) # (!\onehot~8_combout\ & (!\onehot~11_combout\ & ((\onehot~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onehot~8_combout\,
	datab => \onehot~11_combout\,
	datac => \onehot~5_combout\,
	datad => \onehot~10_combout\,
	combout => \onehot~12_combout\);

-- Location: LCCOMB_X2_Y12_N14
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\generator|count\(4)) # (((\generator|count\(2) & !\generator|count\(1))) # (!\generator|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(4),
	datab => \generator|count\(3),
	datac => \generator|count\(2),
	datad => \generator|count\(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X1_Y12_N12
\onehot~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~13_combout\ = (\generator|count\(6) & \generator|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \generator|count\(6),
	datad => \generator|count\(7),
	combout => \onehot~13_combout\);

-- Location: LCCOMB_X1_Y12_N14
\onehot~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~14_combout\ = (\onehot~13_combout\ & ((\generator|count\(5) & ((\LessThan1~0_combout\))) # (!\generator|count\(5) & (\onehot~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datab => \onehot~11_combout\,
	datac => \LessThan1~0_combout\,
	datad => \onehot~13_combout\,
	combout => \onehot~14_combout\);

-- Location: LCCOMB_X2_Y12_N8
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\generator|count\(0) & (\generator|count\(2) & (!\generator|count\(5) & !\generator|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(0),
	datab => \generator|count\(2),
	datac => \generator|count\(5),
	datad => \generator|count\(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\generator|count\(6)) # ((!\generator|count\(5) & ((\generator|count\(4)) # (!\generator|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datab => \generator|count\(4),
	datac => \generator|count\(6),
	datad => \generator|count\(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y12_N18
\onehot~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~15_combout\ = (\generator|count\(7) & ((\LessThan0~0_combout\) # (\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generator|count\(7),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \onehot~15_combout\);

-- Location: LCCOMB_X1_Y12_N0
\onehot~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \onehot~16_combout\ = ((\generator|count\(6) & ((\LessThan1~0_combout\) # (!\generator|count\(5))))) # (!\onehot~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \generator|count\(5),
	datab => \generator|count\(6),
	datac => \LessThan1~0_combout\,
	datad => \onehot~15_combout\,
	combout => \onehot~16_combout\);

-- Location: LCCOMB_X1_Y12_N2
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~0_combout\) # (\LessThan0~1_combout\)) # (!\generator|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \generator|count\(7),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

ww_onehot(0) <= \onehot[0]~output_o\;

ww_onehot(1) <= \onehot[1]~output_o\;

ww_onehot(2) <= \onehot[2]~output_o\;

ww_onehot(3) <= \onehot[3]~output_o\;

ww_onehot(4) <= \onehot[4]~output_o\;

ww_onehot(5) <= \onehot[5]~output_o\;

ww_onehot(6) <= \onehot[6]~output_o\;

ww_onehot(7) <= \onehot[7]~output_o\;
END structure;


