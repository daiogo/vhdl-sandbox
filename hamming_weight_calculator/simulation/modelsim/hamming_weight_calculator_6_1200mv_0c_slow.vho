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

-- DATE "07/06/2016 02:08:47"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hamming_weight_calculator IS
    PORT (
	hwc_in : IN std_logic_vector(6 DOWNTO 0);
	hwc_led_out : OUT std_logic_vector(3 DOWNTO 0);
	hwc_ssd_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END hamming_weight_calculator;

-- Design Ports Information
-- hwc_led_out[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_led_out[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_led_out[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_led_out[3]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[5]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_ssd_out[6]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[1]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hwc_in[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hamming_weight_calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hwc_in : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hwc_led_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hwc_ssd_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \hwc_calculator|ones[4][2]~4_combout\ : std_logic;
SIGNAL \hwc_in[3]~input_o\ : std_logic;
SIGNAL \hwc_led_out[0]~output_o\ : std_logic;
SIGNAL \hwc_led_out[1]~output_o\ : std_logic;
SIGNAL \hwc_led_out[2]~output_o\ : std_logic;
SIGNAL \hwc_led_out[3]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[0]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[1]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[2]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[3]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[4]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[5]~output_o\ : std_logic;
SIGNAL \hwc_ssd_out[6]~output_o\ : std_logic;
SIGNAL \hwc_in[4]~input_o\ : std_logic;
SIGNAL \hwc_in[6]~input_o\ : std_logic;
SIGNAL \hwc_in[5]~input_o\ : std_logic;
SIGNAL \hwc_in[2]~input_o\ : std_logic;
SIGNAL \hwc_in[0]~input_o\ : std_logic;
SIGNAL \hwc_in[1]~input_o\ : std_logic;
SIGNAL \hwc_calculator|ones[3][0]~0_combout\ : std_logic;
SIGNAL \hwc_calculator|integer_out[0]~0_combout\ : std_logic;
SIGNAL \hwc_calculator|ones[3][1]~1_combout\ : std_logic;
SIGNAL \hwc_calculator|ones[5][1]~2_combout\ : std_logic;
SIGNAL \hwc_calculator|ones[5][0]~3_combout\ : std_logic;
SIGNAL \hwc_calculator|integer_out[1]~1_combout\ : std_logic;
SIGNAL \hwc_calculator|ones[5][2]~5_combout\ : std_logic;
SIGNAL \hwc_calculator|ones[5][2]~6_combout\ : std_logic;
SIGNAL \hwc_calculator|integer_out[2]~2_combout\ : std_logic;
SIGNAL \hwc_calculator|integer_out[3]~3_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[0]~0_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[1]~1_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[2]~2_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[3]~3_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[4]~4_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[5]~5_combout\ : std_logic;
SIGNAL \hwc_ssd|decimal_out[6]~6_combout\ : std_logic;
SIGNAL \hwc_ssd|ALT_INV_decimal_out[0]~0_combout\ : std_logic;

BEGIN

ww_hwc_in <= hwc_in;
hwc_led_out <= ww_hwc_led_out;
hwc_ssd_out <= ww_hwc_ssd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\hwc_ssd|ALT_INV_decimal_out[0]~0_combout\ <= NOT \hwc_ssd|decimal_out[0]~0_combout\;

-- Location: LCCOMB_X1_Y11_N10
\hwc_calculator|ones[4][2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[4][2]~4_combout\ = (\hwc_in[3]~input_o\ & (\hwc_in[2]~input_o\ & (\hwc_in[0]~input_o\ & \hwc_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[3]~input_o\,
	datab => \hwc_in[2]~input_o\,
	datac => \hwc_in[0]~input_o\,
	datad => \hwc_in[1]~input_o\,
	combout => \hwc_calculator|ones[4][2]~4_combout\);

-- Location: IOIBUF_X0_Y6_N8
\hwc_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(3),
	o => \hwc_in[3]~input_o\);

-- Location: IOOBUF_X0_Y9_N16
\hwc_led_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_calculator|integer_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \hwc_led_out[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\hwc_led_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_calculator|integer_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hwc_led_out[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\hwc_led_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_calculator|integer_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \hwc_led_out[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\hwc_led_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_calculator|integer_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \hwc_led_out[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\hwc_ssd_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|ALT_INV_decimal_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\hwc_ssd_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\hwc_ssd_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\hwc_ssd_out[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\hwc_ssd_out[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\hwc_ssd_out[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[5]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\hwc_ssd_out[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hwc_ssd|decimal_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \hwc_ssd_out[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\hwc_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(4),
	o => \hwc_in[4]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\hwc_in[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(6),
	o => \hwc_in[6]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\hwc_in[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(5),
	o => \hwc_in[5]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\hwc_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(2),
	o => \hwc_in[2]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\hwc_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(0),
	o => \hwc_in[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\hwc_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hwc_in(1),
	o => \hwc_in[1]~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\hwc_calculator|ones[3][0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[3][0]~0_combout\ = \hwc_in[3]~input_o\ $ (\hwc_in[2]~input_o\ $ (\hwc_in[0]~input_o\ $ (\hwc_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[3]~input_o\,
	datab => \hwc_in[2]~input_o\,
	datac => \hwc_in[0]~input_o\,
	datad => \hwc_in[1]~input_o\,
	combout => \hwc_calculator|ones[3][0]~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\hwc_calculator|integer_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|integer_out[0]~0_combout\ = \hwc_in[4]~input_o\ $ (\hwc_in[6]~input_o\ $ (\hwc_in[5]~input_o\ $ (\hwc_calculator|ones[3][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[4]~input_o\,
	datab => \hwc_in[6]~input_o\,
	datac => \hwc_in[5]~input_o\,
	datad => \hwc_calculator|ones[3][0]~0_combout\,
	combout => \hwc_calculator|integer_out[0]~0_combout\);

-- Location: LCCOMB_X1_Y11_N12
\hwc_calculator|ones[3][1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[3][1]~1_combout\ = (\hwc_in[3]~input_o\ & ((\hwc_in[2]~input_o\ & ((!\hwc_in[1]~input_o\) # (!\hwc_in[0]~input_o\))) # (!\hwc_in[2]~input_o\ & ((\hwc_in[0]~input_o\) # (\hwc_in[1]~input_o\))))) # (!\hwc_in[3]~input_o\ & 
-- ((\hwc_in[2]~input_o\ & ((\hwc_in[0]~input_o\) # (\hwc_in[1]~input_o\))) # (!\hwc_in[2]~input_o\ & (\hwc_in[0]~input_o\ & \hwc_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[3]~input_o\,
	datab => \hwc_in[2]~input_o\,
	datac => \hwc_in[0]~input_o\,
	datad => \hwc_in[1]~input_o\,
	combout => \hwc_calculator|ones[3][1]~1_combout\);

-- Location: LCCOMB_X1_Y11_N22
\hwc_calculator|ones[5][1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[5][1]~2_combout\ = \hwc_calculator|ones[3][1]~1_combout\ $ (((\hwc_in[4]~input_o\ & ((\hwc_calculator|ones[3][0]~0_combout\) # (\hwc_in[5]~input_o\))) # (!\hwc_in[4]~input_o\ & (\hwc_calculator|ones[3][0]~0_combout\ & 
-- \hwc_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[4]~input_o\,
	datab => \hwc_calculator|ones[3][0]~0_combout\,
	datac => \hwc_in[5]~input_o\,
	datad => \hwc_calculator|ones[3][1]~1_combout\,
	combout => \hwc_calculator|ones[5][1]~2_combout\);

-- Location: LCCOMB_X1_Y11_N24
\hwc_calculator|ones[5][0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[5][0]~3_combout\ = \hwc_in[4]~input_o\ $ (\hwc_in[5]~input_o\ $ (\hwc_calculator|ones[3][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[4]~input_o\,
	datac => \hwc_in[5]~input_o\,
	datad => \hwc_calculator|ones[3][0]~0_combout\,
	combout => \hwc_calculator|ones[5][0]~3_combout\);

-- Location: LCCOMB_X2_Y10_N24
\hwc_calculator|integer_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|integer_out[1]~1_combout\ = \hwc_calculator|ones[5][1]~2_combout\ $ (((\hwc_in[6]~input_o\ & \hwc_calculator|ones[5][0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[6]~input_o\,
	datab => \hwc_calculator|ones[5][1]~2_combout\,
	datac => \hwc_calculator|ones[5][0]~3_combout\,
	combout => \hwc_calculator|integer_out[1]~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\hwc_calculator|ones[5][2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[5][2]~5_combout\ = (\hwc_in[4]~input_o\ & ((\hwc_in[5]~input_o\) # (\hwc_calculator|ones[3][0]~0_combout\))) # (!\hwc_in[4]~input_o\ & (\hwc_in[5]~input_o\ & \hwc_calculator|ones[3][0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[4]~input_o\,
	datac => \hwc_in[5]~input_o\,
	datad => \hwc_calculator|ones[3][0]~0_combout\,
	combout => \hwc_calculator|ones[5][2]~5_combout\);

-- Location: LCCOMB_X1_Y11_N6
\hwc_calculator|ones[5][2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|ones[5][2]~6_combout\ = \hwc_calculator|ones[4][2]~4_combout\ $ (((\hwc_calculator|ones[5][2]~5_combout\ & \hwc_calculator|ones[3][1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[4][2]~4_combout\,
	datab => \hwc_calculator|ones[5][2]~5_combout\,
	datad => \hwc_calculator|ones[3][1]~1_combout\,
	combout => \hwc_calculator|ones[5][2]~6_combout\);

-- Location: LCCOMB_X1_Y11_N0
\hwc_calculator|integer_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|integer_out[2]~2_combout\ = \hwc_calculator|ones[5][2]~6_combout\ $ (((\hwc_calculator|ones[5][1]~2_combout\ & (\hwc_calculator|ones[5][0]~3_combout\ & \hwc_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_calculator|integer_out[2]~2_combout\);

-- Location: LCCOMB_X1_Y11_N18
\hwc_calculator|integer_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_calculator|integer_out[3]~3_combout\ = (\hwc_calculator|ones[5][1]~2_combout\ & (\hwc_calculator|ones[5][0]~3_combout\ & (\hwc_in[6]~input_o\ & \hwc_calculator|ones[5][2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_calculator|integer_out[3]~3_combout\);

-- Location: LCCOMB_X2_Y10_N26
\hwc_ssd|decimal_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[0]~0_combout\ = (\hwc_calculator|ones[5][1]~2_combout\ & ((\hwc_in[6]~input_o\ $ (!\hwc_calculator|ones[5][0]~3_combout\)) # (!\hwc_calculator|ones[5][2]~6_combout\))) # (!\hwc_calculator|ones[5][1]~2_combout\ & 
-- ((\hwc_calculator|ones[5][2]~6_combout\) # ((\hwc_in[6]~input_o\ & \hwc_calculator|ones[5][0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_in[6]~input_o\,
	datab => \hwc_calculator|ones[5][1]~2_combout\,
	datac => \hwc_calculator|ones[5][0]~3_combout\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[0]~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\hwc_ssd|decimal_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[1]~1_combout\ = (\hwc_calculator|ones[5][1]~2_combout\ & ((\hwc_calculator|ones[5][0]~3_combout\ & (!\hwc_in[6]~input_o\)) # (!\hwc_calculator|ones[5][0]~3_combout\ & ((\hwc_in[6]~input_o\) # 
-- (!\hwc_calculator|ones[5][2]~6_combout\))))) # (!\hwc_calculator|ones[5][1]~2_combout\ & (!\hwc_calculator|ones[5][2]~6_combout\ & ((\hwc_calculator|ones[5][0]~3_combout\) # (\hwc_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[1]~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\hwc_ssd|decimal_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[2]~2_combout\ = (\hwc_calculator|ones[5][0]~3_combout\ & (((\hwc_calculator|ones[5][1]~2_combout\ & !\hwc_calculator|ones[5][2]~6_combout\)) # (!\hwc_in[6]~input_o\))) # (!\hwc_calculator|ones[5][0]~3_combout\ & ((\hwc_in[6]~input_o\) 
-- # ((!\hwc_calculator|ones[5][1]~2_combout\ & \hwc_calculator|ones[5][2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[2]~2_combout\);

-- Location: LCCOMB_X1_Y11_N8
\hwc_ssd|decimal_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[3]~3_combout\ = (\hwc_calculator|ones[5][1]~2_combout\ & ((\hwc_calculator|ones[5][0]~3_combout\ & (\hwc_in[6]~input_o\ $ (\hwc_calculator|ones[5][2]~6_combout\))) # (!\hwc_calculator|ones[5][0]~3_combout\ & (\hwc_in[6]~input_o\ & 
-- \hwc_calculator|ones[5][2]~6_combout\)))) # (!\hwc_calculator|ones[5][1]~2_combout\ & ((\hwc_calculator|ones[5][0]~3_combout\ & (!\hwc_in[6]~input_o\ & !\hwc_calculator|ones[5][2]~6_combout\)) # (!\hwc_calculator|ones[5][0]~3_combout\ & 
-- (\hwc_in[6]~input_o\ $ (\hwc_calculator|ones[5][2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[3]~3_combout\);

-- Location: LCCOMB_X1_Y11_N2
\hwc_ssd|decimal_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[4]~4_combout\ = (!\hwc_calculator|ones[5][2]~6_combout\ & ((\hwc_calculator|ones[5][1]~2_combout\ & (!\hwc_calculator|ones[5][0]~3_combout\ & !\hwc_in[6]~input_o\)) # (!\hwc_calculator|ones[5][1]~2_combout\ & 
-- (\hwc_calculator|ones[5][0]~3_combout\ & \hwc_in[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[4]~4_combout\);

-- Location: LCCOMB_X1_Y11_N20
\hwc_ssd|decimal_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[5]~5_combout\ = (\hwc_calculator|ones[5][2]~6_combout\ & (\hwc_calculator|ones[5][1]~2_combout\ $ (((\hwc_calculator|ones[5][0]~3_combout\) # (\hwc_in[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[5]~5_combout\);

-- Location: LCCOMB_X1_Y11_N14
\hwc_ssd|decimal_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \hwc_ssd|decimal_out[6]~6_combout\ = (\hwc_calculator|ones[5][0]~3_combout\ & (!\hwc_calculator|ones[5][2]~6_combout\ & (\hwc_calculator|ones[5][1]~2_combout\ $ (!\hwc_in[6]~input_o\)))) # (!\hwc_calculator|ones[5][0]~3_combout\ & 
-- (!\hwc_calculator|ones[5][1]~2_combout\ & (\hwc_in[6]~input_o\ $ (\hwc_calculator|ones[5][2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hwc_calculator|ones[5][1]~2_combout\,
	datab => \hwc_calculator|ones[5][0]~3_combout\,
	datac => \hwc_in[6]~input_o\,
	datad => \hwc_calculator|ones[5][2]~6_combout\,
	combout => \hwc_ssd|decimal_out[6]~6_combout\);

ww_hwc_led_out(0) <= \hwc_led_out[0]~output_o\;

ww_hwc_led_out(1) <= \hwc_led_out[1]~output_o\;

ww_hwc_led_out(2) <= \hwc_led_out[2]~output_o\;

ww_hwc_led_out(3) <= \hwc_led_out[3]~output_o\;

ww_hwc_ssd_out(0) <= \hwc_ssd_out[0]~output_o\;

ww_hwc_ssd_out(1) <= \hwc_ssd_out[1]~output_o\;

ww_hwc_ssd_out(2) <= \hwc_ssd_out[2]~output_o\;

ww_hwc_ssd_out(3) <= \hwc_ssd_out[3]~output_o\;

ww_hwc_ssd_out(4) <= \hwc_ssd_out[4]~output_o\;

ww_hwc_ssd_out(5) <= \hwc_ssd_out[5]~output_o\;

ww_hwc_ssd_out(6) <= \hwc_ssd_out[6]~output_o\;
END structure;


