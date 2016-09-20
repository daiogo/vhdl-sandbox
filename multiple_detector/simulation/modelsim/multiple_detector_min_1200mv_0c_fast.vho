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

-- DATE "07/06/2016 01:09:52"

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

ENTITY 	multiple_detector IS
    PORT (
	a : IN std_logic_vector(4 DOWNTO 0);
	b : IN std_logic_vector(4 DOWNTO 0);
	multiple : OUT std_logic;
	invalid_input : OUT std_logic
	);
END multiple_detector;

-- Design Ports Information
-- multiple	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- invalid_input	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiple_detector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_multiple : std_logic;
SIGNAL ww_invalid_input : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \multiple~output_o\ : std_logic;
SIGNAL \invalid_input~output_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[6]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(29 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
multiple <= ww_multiple;
invalid_input <= ww_invalid_input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X1_Y26_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))))) # (!\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)) # (!\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\b[1]~input_o\ & ((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (!\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # (!\b[1]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X1_Y26_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ $ (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X1_Y25_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ $ (\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # (!\b[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\b[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X1_Y25_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X1_Y25_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ $ (\b[4]~input_o\ $ (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # (!\b[4]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ & (!\b[4]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X1_Y25_N26
\Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\b[3]~input_o\) # (((\b[4]~input_o\) # (\b[2]~input_o\)) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[4]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X1_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\a[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\) # ((!\a[4]~input_o\ & \b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \a[3]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => \b[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

-- Location: LCCOMB_X1_Y26_N18
\Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\b[4]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\)))) # (!\b[4]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datac => \b[4]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X1_Y25_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\multiple~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~3_combout\,
	devoe => ww_devoe,
	o => \multiple~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\invalid_input~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~1_combout\,
	devoe => ww_devoe,
	o => \invalid_input~output_o\);

-- Location: IOIBUF_X0_Y27_N1
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\a[2]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[2]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\a[2]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X1_Y26_N2
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\b[1]~input_o\ 
-- & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: IOIBUF_X0_Y23_N8
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[6]~0_combout\ = (\b[1]~input_o\ & (!\a[3]~input_o\ & \b[0]~input_o\)) # (!\b[1]~input_o\ & ((!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[3]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[6]~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\b[2]~input_o\ & (!\b[4]~input_o\ & !\b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[4]~input_o\,
	datac => \b[3]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y25_N28
\Mod0|auto_generated|divider|divider|StageOut[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\ = (\a[4]~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[6]~0_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[6]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\);

-- Location: LCCOMB_X1_Y26_N4
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\b[2]~input_o\ $ (\Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\ $ (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\b[2]~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\b[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X1_Y26_N6
\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X1_Y26_N26
\Mod0|auto_generated|divider|divider|selnose[12]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|selnose\(12) = (\b[3]~input_o\) # ((\b[4]~input_o\) # (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \b[4]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|selnose\(12));

-- Location: LCCOMB_X1_Y26_N24
\Mod0|auto_generated|divider|divider|StageOut[11]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(12) & (\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # (!\Mod0|auto_generated|divider|divider|selnose\(12) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose\(12),
	combout => \Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\);

-- Location: LCCOMB_X1_Y26_N28
\Mod0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(12) & (\a[2]~input_o\)) # (!\Mod0|auto_generated|divider|divider|selnose\(12) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|selnose\(12),
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X1_Y26_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\a[1]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[1]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\a[1]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X1_Y26_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & ((\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\b[3]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & ((\b[3]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\b[3]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & (\b[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ & ((\b[3]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\,
	datab => \b[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X1_Y26_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X1_Y26_N20
\Mod0|auto_generated|divider|divider|StageOut[17]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ = (\b[4]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\)))) # (!\b[4]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[11]~6_combout\,
	datac => \b[4]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\);

-- Location: IOIBUF_X0_Y25_N22
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X1_Y25_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\a[0]~input_o\ & ((GND) # (!\b[0]~input_o\))) # (!\a[0]~input_o\ & (\b[0]~input_o\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X1_Y25_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & ((\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\b[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # (!\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & ((\b[1]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\b[1]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & (\b[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ & ((\b[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X1_Y25_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: IOIBUF_X0_Y22_N15
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X2_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[15]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\ = (\b[4]~input_o\ & (\a[1]~input_o\)) # (!\b[4]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\a[1]~input_o\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[4]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\);

-- Location: LCCOMB_X1_Y25_N18
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (!\a[0]~input_o\ & !\Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \a[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[15]~8_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X1_Y26_N22
\Mod0|auto_generated|divider|divider|StageOut[12]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\ = (\Mod0|auto_generated|divider|divider|selnose\(12) & (\Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\)) # (!\Mod0|auto_generated|divider|divider|selnose\(12) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|selnose\(12),
	datab => \Mod0|auto_generated|divider|divider|StageOut[6]~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\);

-- Location: LCCOMB_X1_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[18]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\ = (\b[4]~input_o\ & (((\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\)))) # (!\b[4]~input_o\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[12]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\);

-- Location: LCCOMB_X1_Y25_N0
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y25_N20
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~1_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\ & (\Equal1~2_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~9_combout\,
	datab => \Equal1~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[18]~10_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X1_Y25_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\b[0]~input_o\ & (!\b[1]~input_o\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

ww_multiple <= \multiple~output_o\;

ww_invalid_input <= \invalid_input~output_o\;
END structure;


