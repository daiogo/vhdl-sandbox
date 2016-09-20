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

-- DATE "08/31/2016 10:18:38"

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

ENTITY 	alarm IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	sensorA : IN std_logic;
	sensorB : IN std_logic;
	siren : OUT std_logic;
	alarm_on : OUT std_logic
	);
END alarm;

-- Design Ports Information
-- siren	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm_on	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorA	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorB	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarm IS
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
SIGNAL ww_key : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sensorA : std_logic;
SIGNAL ww_sensorB : std_logic;
SIGNAL ww_siren : std_logic;
SIGNAL ww_alarm_on : std_logic;
SIGNAL \ra_freq_divider|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ra_freq_divider|Add0~0_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~1\ : std_logic;
SIGNAL \ra_freq_divider|Add0~2_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~3\ : std_logic;
SIGNAL \ra_freq_divider|Add0~4_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~5\ : std_logic;
SIGNAL \ra_freq_divider|Add0~6_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~7\ : std_logic;
SIGNAL \ra_freq_divider|Add0~8_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~9\ : std_logic;
SIGNAL \ra_freq_divider|Add0~10_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~11\ : std_logic;
SIGNAL \ra_freq_divider|Add0~12_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~13\ : std_logic;
SIGNAL \ra_freq_divider|Add0~14_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~15\ : std_logic;
SIGNAL \ra_freq_divider|Add0~16_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~17\ : std_logic;
SIGNAL \ra_freq_divider|Add0~18_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~19\ : std_logic;
SIGNAL \ra_freq_divider|Add0~20_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~21\ : std_logic;
SIGNAL \ra_freq_divider|Add0~22_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~23\ : std_logic;
SIGNAL \ra_freq_divider|Add0~24_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~25\ : std_logic;
SIGNAL \ra_freq_divider|Add0~26_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~27\ : std_logic;
SIGNAL \ra_freq_divider|Add0~28_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~29\ : std_logic;
SIGNAL \ra_freq_divider|Add0~30_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~31\ : std_logic;
SIGNAL \ra_freq_divider|Add0~32_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~33\ : std_logic;
SIGNAL \ra_freq_divider|Add0~34_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~35\ : std_logic;
SIGNAL \ra_freq_divider|Add0~36_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~37\ : std_logic;
SIGNAL \ra_freq_divider|Add0~38_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~39\ : std_logic;
SIGNAL \ra_freq_divider|Add0~40_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~41\ : std_logic;
SIGNAL \ra_freq_divider|Add0~42_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~43\ : std_logic;
SIGNAL \ra_freq_divider|Add0~44_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~45\ : std_logic;
SIGNAL \ra_freq_divider|Add0~46_combout\ : std_logic;
SIGNAL \ra_freq_divider|Add0~47\ : std_logic;
SIGNAL \ra_freq_divider|Add0~48_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.wait_in~q\ : std_logic;
SIGNAL \ra_alarm_controller|Selector4~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector3~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|process_0~8_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[4]~15_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[4]~16_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~0_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~1_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~2_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~3_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~4_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~5_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~6_combout\ : std_logic;
SIGNAL \ra_freq_divider|Equal0~7_combout\ : std_logic;
SIGNAL \ra_freq_divider|state~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector2~2_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector3~0_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~0_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~1_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~2_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~3_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~4_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~5_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~6_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~7_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~8_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~9_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~10_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~11_combout\ : std_logic;
SIGNAL \ra_freq_divider|counter~12_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \siren~output_o\ : std_logic;
SIGNAL \alarm_on~output_o\ : std_logic;
SIGNAL \ra_freq_divider|state~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ra_freq_divider|state~q\ : std_logic;
SIGNAL \ra_freq_divider|state~clkctrl_outclk\ : std_logic;
SIGNAL \ra_pwd_detector|Selector2~4_combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \ra_pwd_detector|Equal1~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector1~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.ready~q\ : std_logic;
SIGNAL \ra_pwd_detector|Selector2~3_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.key1~q\ : std_logic;
SIGNAL \ra_pwd_detector|Selector0~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector0~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector0~2_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.idle~q\ : std_logic;
SIGNAL \ra_pwd_detector|t[1]~5_combout\ : std_logic;
SIGNAL \ra_pwd_detector|t[0]~7_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \ra_pwd_detector|process_2~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|process_2~2_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector3~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.wait1~feeder_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.wait1~q\ : std_logic;
SIGNAL \ra_pwd_detector|Selector4~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector4~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.key2~feeder_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.key2~q\ : std_logic;
SIGNAL \ra_pwd_detector|t[1]~3_combout\ : std_logic;
SIGNAL \ra_pwd_detector|t[1]~2_combout\ : std_logic;
SIGNAL \ra_pwd_detector|t[1]~4_combout\ : std_logic;
SIGNAL \ra_pwd_detector|t[1]~6_combout\ : std_logic;
SIGNAL \ra_pwd_detector|LessThan0~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector5~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|process_2~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector5~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.wait2~feeder_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.wait2~q\ : std_logic;
SIGNAL \ra_pwd_detector|Selector6~0_combout\ : std_logic;
SIGNAL \ra_pwd_detector|Selector6~1_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.unlocked~feeder_combout\ : std_logic;
SIGNAL \ra_pwd_detector|prev_state.unlocked~q\ : std_logic;
SIGNAL \sensorA~input_o\ : std_logic;
SIGNAL \ra_alarm_controller|Selector0~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.disarmed~q\ : std_logic;
SIGNAL \ra_alarm_controller|Selector1~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.hold_arm~q\ : std_logic;
SIGNAL \ra_alarm_controller|t[0]~5_combout\ : std_logic;
SIGNAL \sensorB~input_o\ : std_logic;
SIGNAL \ra_alarm_controller|process_0~6_combout\ : std_logic;
SIGNAL \ra_alarm_controller|process_2~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[2]~9_combout\ : std_logic;
SIGNAL \ra_alarm_controller|next_state.hold_disarm~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.hold_disarm~q\ : std_logic;
SIGNAL \ra_alarm_controller|WideOr0~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|WideOr0~2_combout\ : std_logic;
SIGNAL \ra_alarm_controller|WideOr0~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[4]~17_combout\ : std_logic;
SIGNAL \ra_alarm_controller|process_2~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector4~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|process_0~7_combout\ : std_logic;
SIGNAL \ra_alarm_controller|WideOr0~combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[0]~6\ : std_logic;
SIGNAL \ra_alarm_controller|t[1]~7_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[1]~8\ : std_logic;
SIGNAL \ra_alarm_controller|t[2]~10\ : std_logic;
SIGNAL \ra_alarm_controller|t[3]~11_combout\ : std_logic;
SIGNAL \ra_alarm_controller|t[3]~12\ : std_logic;
SIGNAL \ra_alarm_controller|t[4]~13_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector2~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector2~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.wait_out~q\ : std_logic;
SIGNAL \ra_alarm_controller|Selector3~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.armed~feeder_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.armed~q\ : std_logic;
SIGNAL \ra_alarm_controller|Selector5~1_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector5~0_combout\ : std_logic;
SIGNAL \ra_alarm_controller|Selector5~2_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.off~feeder_combout\ : std_logic;
SIGNAL \ra_alarm_controller|prev_state.off~q\ : std_logic;
SIGNAL \ra_freq_divider|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ra_pwd_detector|t\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ra_alarm_controller|t\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_key <= key;
ww_sensorA <= sensorA;
ww_sensorB <= sensorB;
siren <= ww_siren;
alarm_on <= ww_alarm_on;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ra_freq_divider|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ra_freq_divider|state~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X2_Y10_N8
\ra_freq_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~0_combout\ = \ra_freq_divider|counter\(0) $ (VCC)
-- \ra_freq_divider|Add0~1\ = CARRY(\ra_freq_divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(0),
	datad => VCC,
	combout => \ra_freq_divider|Add0~0_combout\,
	cout => \ra_freq_divider|Add0~1\);

-- Location: LCCOMB_X2_Y10_N10
\ra_freq_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~2_combout\ = (\ra_freq_divider|counter\(1) & (!\ra_freq_divider|Add0~1\)) # (!\ra_freq_divider|counter\(1) & ((\ra_freq_divider|Add0~1\) # (GND)))
-- \ra_freq_divider|Add0~3\ = CARRY((!\ra_freq_divider|Add0~1\) # (!\ra_freq_divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(1),
	datad => VCC,
	cin => \ra_freq_divider|Add0~1\,
	combout => \ra_freq_divider|Add0~2_combout\,
	cout => \ra_freq_divider|Add0~3\);

-- Location: LCCOMB_X2_Y10_N12
\ra_freq_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~4_combout\ = (\ra_freq_divider|counter\(2) & (\ra_freq_divider|Add0~3\ $ (GND))) # (!\ra_freq_divider|counter\(2) & (!\ra_freq_divider|Add0~3\ & VCC))
-- \ra_freq_divider|Add0~5\ = CARRY((\ra_freq_divider|counter\(2) & !\ra_freq_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(2),
	datad => VCC,
	cin => \ra_freq_divider|Add0~3\,
	combout => \ra_freq_divider|Add0~4_combout\,
	cout => \ra_freq_divider|Add0~5\);

-- Location: LCCOMB_X2_Y10_N14
\ra_freq_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~6_combout\ = (\ra_freq_divider|counter\(3) & (!\ra_freq_divider|Add0~5\)) # (!\ra_freq_divider|counter\(3) & ((\ra_freq_divider|Add0~5\) # (GND)))
-- \ra_freq_divider|Add0~7\ = CARRY((!\ra_freq_divider|Add0~5\) # (!\ra_freq_divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(3),
	datad => VCC,
	cin => \ra_freq_divider|Add0~5\,
	combout => \ra_freq_divider|Add0~6_combout\,
	cout => \ra_freq_divider|Add0~7\);

-- Location: LCCOMB_X2_Y10_N16
\ra_freq_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~8_combout\ = (\ra_freq_divider|counter\(4) & (\ra_freq_divider|Add0~7\ $ (GND))) # (!\ra_freq_divider|counter\(4) & (!\ra_freq_divider|Add0~7\ & VCC))
-- \ra_freq_divider|Add0~9\ = CARRY((\ra_freq_divider|counter\(4) & !\ra_freq_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(4),
	datad => VCC,
	cin => \ra_freq_divider|Add0~7\,
	combout => \ra_freq_divider|Add0~8_combout\,
	cout => \ra_freq_divider|Add0~9\);

-- Location: LCCOMB_X2_Y10_N18
\ra_freq_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~10_combout\ = (\ra_freq_divider|counter\(5) & (!\ra_freq_divider|Add0~9\)) # (!\ra_freq_divider|counter\(5) & ((\ra_freq_divider|Add0~9\) # (GND)))
-- \ra_freq_divider|Add0~11\ = CARRY((!\ra_freq_divider|Add0~9\) # (!\ra_freq_divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(5),
	datad => VCC,
	cin => \ra_freq_divider|Add0~9\,
	combout => \ra_freq_divider|Add0~10_combout\,
	cout => \ra_freq_divider|Add0~11\);

-- Location: LCCOMB_X2_Y10_N20
\ra_freq_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~12_combout\ = (\ra_freq_divider|counter\(6) & (\ra_freq_divider|Add0~11\ $ (GND))) # (!\ra_freq_divider|counter\(6) & (!\ra_freq_divider|Add0~11\ & VCC))
-- \ra_freq_divider|Add0~13\ = CARRY((\ra_freq_divider|counter\(6) & !\ra_freq_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(6),
	datad => VCC,
	cin => \ra_freq_divider|Add0~11\,
	combout => \ra_freq_divider|Add0~12_combout\,
	cout => \ra_freq_divider|Add0~13\);

-- Location: LCCOMB_X2_Y10_N22
\ra_freq_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~14_combout\ = (\ra_freq_divider|counter\(7) & (!\ra_freq_divider|Add0~13\)) # (!\ra_freq_divider|counter\(7) & ((\ra_freq_divider|Add0~13\) # (GND)))
-- \ra_freq_divider|Add0~15\ = CARRY((!\ra_freq_divider|Add0~13\) # (!\ra_freq_divider|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(7),
	datad => VCC,
	cin => \ra_freq_divider|Add0~13\,
	combout => \ra_freq_divider|Add0~14_combout\,
	cout => \ra_freq_divider|Add0~15\);

-- Location: LCCOMB_X2_Y10_N24
\ra_freq_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~16_combout\ = (\ra_freq_divider|counter\(8) & (\ra_freq_divider|Add0~15\ $ (GND))) # (!\ra_freq_divider|counter\(8) & (!\ra_freq_divider|Add0~15\ & VCC))
-- \ra_freq_divider|Add0~17\ = CARRY((\ra_freq_divider|counter\(8) & !\ra_freq_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(8),
	datad => VCC,
	cin => \ra_freq_divider|Add0~15\,
	combout => \ra_freq_divider|Add0~16_combout\,
	cout => \ra_freq_divider|Add0~17\);

-- Location: LCCOMB_X2_Y10_N26
\ra_freq_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~18_combout\ = (\ra_freq_divider|counter\(9) & (!\ra_freq_divider|Add0~17\)) # (!\ra_freq_divider|counter\(9) & ((\ra_freq_divider|Add0~17\) # (GND)))
-- \ra_freq_divider|Add0~19\ = CARRY((!\ra_freq_divider|Add0~17\) # (!\ra_freq_divider|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(9),
	datad => VCC,
	cin => \ra_freq_divider|Add0~17\,
	combout => \ra_freq_divider|Add0~18_combout\,
	cout => \ra_freq_divider|Add0~19\);

-- Location: LCCOMB_X2_Y10_N28
\ra_freq_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~20_combout\ = (\ra_freq_divider|counter\(10) & (\ra_freq_divider|Add0~19\ $ (GND))) # (!\ra_freq_divider|counter\(10) & (!\ra_freq_divider|Add0~19\ & VCC))
-- \ra_freq_divider|Add0~21\ = CARRY((\ra_freq_divider|counter\(10) & !\ra_freq_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(10),
	datad => VCC,
	cin => \ra_freq_divider|Add0~19\,
	combout => \ra_freq_divider|Add0~20_combout\,
	cout => \ra_freq_divider|Add0~21\);

-- Location: LCCOMB_X2_Y10_N30
\ra_freq_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~22_combout\ = (\ra_freq_divider|counter\(11) & (!\ra_freq_divider|Add0~21\)) # (!\ra_freq_divider|counter\(11) & ((\ra_freq_divider|Add0~21\) # (GND)))
-- \ra_freq_divider|Add0~23\ = CARRY((!\ra_freq_divider|Add0~21\) # (!\ra_freq_divider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(11),
	datad => VCC,
	cin => \ra_freq_divider|Add0~21\,
	combout => \ra_freq_divider|Add0~22_combout\,
	cout => \ra_freq_divider|Add0~23\);

-- Location: LCCOMB_X2_Y9_N0
\ra_freq_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~24_combout\ = (\ra_freq_divider|counter\(12) & (\ra_freq_divider|Add0~23\ $ (GND))) # (!\ra_freq_divider|counter\(12) & (!\ra_freq_divider|Add0~23\ & VCC))
-- \ra_freq_divider|Add0~25\ = CARRY((\ra_freq_divider|counter\(12) & !\ra_freq_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(12),
	datad => VCC,
	cin => \ra_freq_divider|Add0~23\,
	combout => \ra_freq_divider|Add0~24_combout\,
	cout => \ra_freq_divider|Add0~25\);

-- Location: LCCOMB_X2_Y9_N2
\ra_freq_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~26_combout\ = (\ra_freq_divider|counter\(13) & (!\ra_freq_divider|Add0~25\)) # (!\ra_freq_divider|counter\(13) & ((\ra_freq_divider|Add0~25\) # (GND)))
-- \ra_freq_divider|Add0~27\ = CARRY((!\ra_freq_divider|Add0~25\) # (!\ra_freq_divider|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(13),
	datad => VCC,
	cin => \ra_freq_divider|Add0~25\,
	combout => \ra_freq_divider|Add0~26_combout\,
	cout => \ra_freq_divider|Add0~27\);

-- Location: LCCOMB_X2_Y9_N4
\ra_freq_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~28_combout\ = (\ra_freq_divider|counter\(14) & (\ra_freq_divider|Add0~27\ $ (GND))) # (!\ra_freq_divider|counter\(14) & (!\ra_freq_divider|Add0~27\ & VCC))
-- \ra_freq_divider|Add0~29\ = CARRY((\ra_freq_divider|counter\(14) & !\ra_freq_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(14),
	datad => VCC,
	cin => \ra_freq_divider|Add0~27\,
	combout => \ra_freq_divider|Add0~28_combout\,
	cout => \ra_freq_divider|Add0~29\);

-- Location: LCCOMB_X2_Y9_N6
\ra_freq_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~30_combout\ = (\ra_freq_divider|counter\(15) & (!\ra_freq_divider|Add0~29\)) # (!\ra_freq_divider|counter\(15) & ((\ra_freq_divider|Add0~29\) # (GND)))
-- \ra_freq_divider|Add0~31\ = CARRY((!\ra_freq_divider|Add0~29\) # (!\ra_freq_divider|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(15),
	datad => VCC,
	cin => \ra_freq_divider|Add0~29\,
	combout => \ra_freq_divider|Add0~30_combout\,
	cout => \ra_freq_divider|Add0~31\);

-- Location: LCCOMB_X2_Y9_N8
\ra_freq_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~32_combout\ = (\ra_freq_divider|counter\(16) & (\ra_freq_divider|Add0~31\ $ (GND))) # (!\ra_freq_divider|counter\(16) & (!\ra_freq_divider|Add0~31\ & VCC))
-- \ra_freq_divider|Add0~33\ = CARRY((\ra_freq_divider|counter\(16) & !\ra_freq_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(16),
	datad => VCC,
	cin => \ra_freq_divider|Add0~31\,
	combout => \ra_freq_divider|Add0~32_combout\,
	cout => \ra_freq_divider|Add0~33\);

-- Location: LCCOMB_X2_Y9_N10
\ra_freq_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~34_combout\ = (\ra_freq_divider|counter\(17) & (!\ra_freq_divider|Add0~33\)) # (!\ra_freq_divider|counter\(17) & ((\ra_freq_divider|Add0~33\) # (GND)))
-- \ra_freq_divider|Add0~35\ = CARRY((!\ra_freq_divider|Add0~33\) # (!\ra_freq_divider|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(17),
	datad => VCC,
	cin => \ra_freq_divider|Add0~33\,
	combout => \ra_freq_divider|Add0~34_combout\,
	cout => \ra_freq_divider|Add0~35\);

-- Location: LCCOMB_X2_Y9_N12
\ra_freq_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~36_combout\ = (\ra_freq_divider|counter\(18) & (\ra_freq_divider|Add0~35\ $ (GND))) # (!\ra_freq_divider|counter\(18) & (!\ra_freq_divider|Add0~35\ & VCC))
-- \ra_freq_divider|Add0~37\ = CARRY((\ra_freq_divider|counter\(18) & !\ra_freq_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(18),
	datad => VCC,
	cin => \ra_freq_divider|Add0~35\,
	combout => \ra_freq_divider|Add0~36_combout\,
	cout => \ra_freq_divider|Add0~37\);

-- Location: LCCOMB_X2_Y9_N14
\ra_freq_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~38_combout\ = (\ra_freq_divider|counter\(19) & (!\ra_freq_divider|Add0~37\)) # (!\ra_freq_divider|counter\(19) & ((\ra_freq_divider|Add0~37\) # (GND)))
-- \ra_freq_divider|Add0~39\ = CARRY((!\ra_freq_divider|Add0~37\) # (!\ra_freq_divider|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(19),
	datad => VCC,
	cin => \ra_freq_divider|Add0~37\,
	combout => \ra_freq_divider|Add0~38_combout\,
	cout => \ra_freq_divider|Add0~39\);

-- Location: LCCOMB_X2_Y9_N16
\ra_freq_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~40_combout\ = (\ra_freq_divider|counter\(20) & (\ra_freq_divider|Add0~39\ $ (GND))) # (!\ra_freq_divider|counter\(20) & (!\ra_freq_divider|Add0~39\ & VCC))
-- \ra_freq_divider|Add0~41\ = CARRY((\ra_freq_divider|counter\(20) & !\ra_freq_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(20),
	datad => VCC,
	cin => \ra_freq_divider|Add0~39\,
	combout => \ra_freq_divider|Add0~40_combout\,
	cout => \ra_freq_divider|Add0~41\);

-- Location: LCCOMB_X2_Y9_N18
\ra_freq_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~42_combout\ = (\ra_freq_divider|counter\(21) & (!\ra_freq_divider|Add0~41\)) # (!\ra_freq_divider|counter\(21) & ((\ra_freq_divider|Add0~41\) # (GND)))
-- \ra_freq_divider|Add0~43\ = CARRY((!\ra_freq_divider|Add0~41\) # (!\ra_freq_divider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|counter\(21),
	datad => VCC,
	cin => \ra_freq_divider|Add0~41\,
	combout => \ra_freq_divider|Add0~42_combout\,
	cout => \ra_freq_divider|Add0~43\);

-- Location: LCCOMB_X2_Y9_N20
\ra_freq_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~44_combout\ = (\ra_freq_divider|counter\(22) & (\ra_freq_divider|Add0~43\ $ (GND))) # (!\ra_freq_divider|counter\(22) & (!\ra_freq_divider|Add0~43\ & VCC))
-- \ra_freq_divider|Add0~45\ = CARRY((\ra_freq_divider|counter\(22) & !\ra_freq_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(22),
	datad => VCC,
	cin => \ra_freq_divider|Add0~43\,
	combout => \ra_freq_divider|Add0~44_combout\,
	cout => \ra_freq_divider|Add0~45\);

-- Location: LCCOMB_X2_Y9_N22
\ra_freq_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~46_combout\ = (\ra_freq_divider|counter\(23) & (!\ra_freq_divider|Add0~45\)) # (!\ra_freq_divider|counter\(23) & ((\ra_freq_divider|Add0~45\) # (GND)))
-- \ra_freq_divider|Add0~47\ = CARRY((!\ra_freq_divider|Add0~45\) # (!\ra_freq_divider|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(23),
	datad => VCC,
	cin => \ra_freq_divider|Add0~45\,
	combout => \ra_freq_divider|Add0~46_combout\,
	cout => \ra_freq_divider|Add0~47\);

-- Location: LCCOMB_X2_Y9_N24
\ra_freq_divider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Add0~48_combout\ = \ra_freq_divider|Add0~47\ $ (!\ra_freq_divider|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ra_freq_divider|counter\(24),
	cin => \ra_freq_divider|Add0~47\,
	combout => \ra_freq_divider|Add0~48_combout\);

-- Location: FF_X19_Y18_N11
\ra_alarm_controller|prev_state.wait_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|Selector4~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.wait_in~q\);

-- Location: LCCOMB_X19_Y18_N10
\ra_alarm_controller|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector4~1_combout\ = (\ra_alarm_controller|Selector4~0_combout\) # ((\sensorB~input_o\ & (\ra_alarm_controller|prev_state.armed~q\ & \ra_alarm_controller|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorB~input_o\,
	datab => \ra_alarm_controller|prev_state.armed~q\,
	datac => \ra_alarm_controller|process_2~1_combout\,
	datad => \ra_alarm_controller|Selector4~0_combout\,
	combout => \ra_alarm_controller|Selector4~1_combout\);

-- Location: LCCOMB_X19_Y18_N30
\ra_alarm_controller|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector3~0_combout\ = (!\sensorA~input_o\ & (\ra_alarm_controller|prev_state.armed~q\ & (!\sensorB~input_o\ & !\ra_pwd_detector|prev_state.unlocked~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorA~input_o\,
	datab => \ra_alarm_controller|prev_state.armed~q\,
	datac => \sensorB~input_o\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|Selector3~0_combout\);

-- Location: LCCOMB_X20_Y18_N26
\ra_alarm_controller|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|process_0~8_combout\ = (\ra_alarm_controller|prev_state.wait_out~q\ & (((!\ra_alarm_controller|Selector2~0_combout\ & !\ra_alarm_controller|prev_state.hold_arm~q\)) # (!\ra_alarm_controller|process_2~1_combout\))) # 
-- (!\ra_alarm_controller|prev_state.wait_out~q\ & (((\ra_alarm_controller|prev_state.hold_arm~q\ & \ra_alarm_controller|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.wait_out~q\,
	datab => \ra_alarm_controller|Selector2~0_combout\,
	datac => \ra_alarm_controller|prev_state.hold_arm~q\,
	datad => \ra_alarm_controller|process_2~1_combout\,
	combout => \ra_alarm_controller|process_0~8_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ra_alarm_controller|t[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[4]~15_combout\ = (!\ra_alarm_controller|t\(3) & (\ra_alarm_controller|t\(4) & (!\ra_alarm_controller|t\(1) & \ra_alarm_controller|t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|t\(3),
	datab => \ra_alarm_controller|t\(4),
	datac => \ra_alarm_controller|t\(1),
	datad => \ra_alarm_controller|t\(2),
	combout => \ra_alarm_controller|t[4]~15_combout\);

-- Location: LCCOMB_X19_Y18_N16
\ra_alarm_controller|t[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[4]~16_combout\ = (!\ra_alarm_controller|t\(0) & \ra_alarm_controller|t[4]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|t\(0),
	datac => \ra_alarm_controller|t[4]~15_combout\,
	combout => \ra_alarm_controller|t[4]~16_combout\);

-- Location: FF_X1_Y9_N27
\ra_freq_divider|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(24));

-- Location: FF_X2_Y9_N27
\ra_freq_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(22));

-- Location: FF_X2_Y10_N1
\ra_freq_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(0));

-- Location: FF_X2_Y9_N23
\ra_freq_divider|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(23));

-- Location: LCCOMB_X1_Y9_N22
\ra_freq_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~0_combout\ = (\ra_freq_divider|counter\(24) & (!\ra_freq_divider|counter\(23) & (\ra_freq_divider|counter\(22) & !\ra_freq_divider|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(24),
	datab => \ra_freq_divider|counter\(23),
	datac => \ra_freq_divider|counter\(22),
	datad => \ra_freq_divider|counter\(0),
	combout => \ra_freq_divider|Equal0~0_combout\);

-- Location: FF_X2_Y9_N29
\ra_freq_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(21));

-- Location: FF_X2_Y9_N31
\ra_freq_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(20));

-- Location: FF_X1_Y9_N7
\ra_freq_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(19));

-- Location: FF_X1_Y9_N9
\ra_freq_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(18));

-- Location: LCCOMB_X1_Y9_N14
\ra_freq_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~1_combout\ = (\ra_freq_divider|counter\(19) & (\ra_freq_divider|counter\(18) & (\ra_freq_divider|counter\(20) & \ra_freq_divider|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(19),
	datab => \ra_freq_divider|counter\(18),
	datac => \ra_freq_divider|counter\(20),
	datad => \ra_freq_divider|counter\(21),
	combout => \ra_freq_divider|Equal0~1_combout\);

-- Location: FF_X1_Y9_N11
\ra_freq_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(16));

-- Location: FF_X1_Y9_N5
\ra_freq_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(14));

-- Location: FF_X2_Y9_N11
\ra_freq_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(17));

-- Location: FF_X2_Y9_N7
\ra_freq_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(15));

-- Location: LCCOMB_X1_Y9_N18
\ra_freq_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~2_combout\ = (!\ra_freq_divider|counter\(15) & (\ra_freq_divider|counter\(14) & (!\ra_freq_divider|counter\(17) & \ra_freq_divider|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(15),
	datab => \ra_freq_divider|counter\(14),
	datac => \ra_freq_divider|counter\(17),
	datad => \ra_freq_divider|counter\(16),
	combout => \ra_freq_divider|Equal0~2_combout\);

-- Location: FF_X1_Y9_N31
\ra_freq_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(13));

-- Location: FF_X1_Y9_N3
\ra_freq_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(12));

-- Location: FF_X1_Y9_N1
\ra_freq_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(11));

-- Location: FF_X2_Y10_N29
\ra_freq_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(10));

-- Location: LCCOMB_X1_Y9_N24
\ra_freq_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~3_combout\ = (\ra_freq_divider|counter\(13) & (\ra_freq_divider|counter\(12) & (\ra_freq_divider|counter\(11) & !\ra_freq_divider|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(13),
	datab => \ra_freq_divider|counter\(12),
	datac => \ra_freq_divider|counter\(11),
	datad => \ra_freq_divider|counter\(10),
	combout => \ra_freq_divider|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y9_N12
\ra_freq_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~4_combout\ = (\ra_freq_divider|Equal0~0_combout\ & (\ra_freq_divider|Equal0~3_combout\ & (\ra_freq_divider|Equal0~1_combout\ & \ra_freq_divider|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|Equal0~0_combout\,
	datab => \ra_freq_divider|Equal0~3_combout\,
	datac => \ra_freq_divider|Equal0~1_combout\,
	datad => \ra_freq_divider|Equal0~2_combout\,
	combout => \ra_freq_divider|Equal0~4_combout\);

-- Location: FF_X2_Y10_N3
\ra_freq_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|counter~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(6));

-- Location: FF_X2_Y10_N27
\ra_freq_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(9));

-- Location: FF_X2_Y10_N25
\ra_freq_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(8));

-- Location: FF_X2_Y10_N23
\ra_freq_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(7));

-- Location: LCCOMB_X2_Y10_N4
\ra_freq_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~5_combout\ = (!\ra_freq_divider|counter\(9) & (\ra_freq_divider|counter\(6) & (!\ra_freq_divider|counter\(7) & !\ra_freq_divider|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(9),
	datab => \ra_freq_divider|counter\(6),
	datac => \ra_freq_divider|counter\(7),
	datad => \ra_freq_divider|counter\(8),
	combout => \ra_freq_divider|Equal0~5_combout\);

-- Location: FF_X2_Y10_N19
\ra_freq_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(5));

-- Location: FF_X2_Y10_N17
\ra_freq_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(4));

-- Location: FF_X2_Y10_N15
\ra_freq_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(3));

-- Location: FF_X2_Y10_N13
\ra_freq_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(2));

-- Location: LCCOMB_X2_Y10_N6
\ra_freq_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~6_combout\ = (!\ra_freq_divider|counter\(2) & (!\ra_freq_divider|counter\(5) & (!\ra_freq_divider|counter\(3) & !\ra_freq_divider|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(2),
	datab => \ra_freq_divider|counter\(5),
	datac => \ra_freq_divider|counter\(3),
	datad => \ra_freq_divider|counter\(4),
	combout => \ra_freq_divider|Equal0~6_combout\);

-- Location: FF_X2_Y10_N11
\ra_freq_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|counter\(1));

-- Location: LCCOMB_X1_Y9_N16
\ra_freq_divider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|Equal0~7_combout\ = (!\ra_freq_divider|counter\(1) & (\ra_freq_divider|Equal0~6_combout\ & (\ra_freq_divider|Equal0~5_combout\ & \ra_freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|counter\(1),
	datab => \ra_freq_divider|Equal0~6_combout\,
	datac => \ra_freq_divider|Equal0~5_combout\,
	datad => \ra_freq_divider|Equal0~4_combout\,
	combout => \ra_freq_divider|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y9_N20
\ra_freq_divider|state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|state~0_combout\ = \ra_freq_divider|state~q\ $ (\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|state~q\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|state~0_combout\);

-- Location: LCCOMB_X17_Y18_N2
\ra_pwd_detector|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector2~2_combout\ = (!\key[2]~input_o\ & (\key[3]~input_o\ & (!\key[0]~input_o\ & !\key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[3]~input_o\,
	datac => \key[0]~input_o\,
	datad => \key[1]~input_o\,
	combout => \ra_pwd_detector|Selector2~2_combout\);

-- Location: LCCOMB_X16_Y18_N12
\ra_pwd_detector|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector3~0_combout\ = (\ra_pwd_detector|Equal1~0_combout\ & (\ra_pwd_detector|LessThan0~0_combout\ & ((\ra_pwd_detector|prev_state.key1~q\) # (\ra_pwd_detector|prev_state.wait1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Equal1~0_combout\,
	datab => \ra_pwd_detector|prev_state.key1~q\,
	datac => \ra_pwd_detector|prev_state.wait1~q\,
	datad => \ra_pwd_detector|LessThan0~0_combout\,
	combout => \ra_pwd_detector|Selector3~0_combout\);

-- Location: LCCOMB_X1_Y9_N26
\ra_freq_divider|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~0_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~48_combout\,
	combout => \ra_freq_divider|counter~0_combout\);

-- Location: LCCOMB_X2_Y9_N26
\ra_freq_divider|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~1_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~44_combout\,
	combout => \ra_freq_divider|counter~1_combout\);

-- Location: LCCOMB_X2_Y10_N0
\ra_freq_divider|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~2_combout\ = (\ra_freq_divider|Add0~0_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_freq_divider|Add0~0_combout\,
	datac => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~2_combout\);

-- Location: LCCOMB_X2_Y9_N28
\ra_freq_divider|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~3_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~42_combout\,
	combout => \ra_freq_divider|counter~3_combout\);

-- Location: LCCOMB_X2_Y9_N30
\ra_freq_divider|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~4_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~40_combout\,
	combout => \ra_freq_divider|counter~4_combout\);

-- Location: LCCOMB_X1_Y9_N6
\ra_freq_divider|counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~5_combout\ = (\ra_freq_divider|Add0~38_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Add0~38_combout\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~5_combout\);

-- Location: LCCOMB_X1_Y9_N8
\ra_freq_divider|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~6_combout\ = (\ra_freq_divider|Add0~36_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Add0~36_combout\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~6_combout\);

-- Location: LCCOMB_X1_Y9_N10
\ra_freq_divider|counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~7_combout\ = (\ra_freq_divider|Add0~32_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Add0~32_combout\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~7_combout\);

-- Location: LCCOMB_X1_Y9_N4
\ra_freq_divider|counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~8_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~28_combout\,
	combout => \ra_freq_divider|counter~8_combout\);

-- Location: LCCOMB_X1_Y9_N30
\ra_freq_divider|counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~9_combout\ = (\ra_freq_divider|Add0~26_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Add0~26_combout\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~9_combout\);

-- Location: LCCOMB_X1_Y9_N2
\ra_freq_divider|counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~10_combout\ = (\ra_freq_divider|Add0~24_combout\ & !\ra_freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Add0~24_combout\,
	datad => \ra_freq_divider|Equal0~7_combout\,
	combout => \ra_freq_divider|counter~10_combout\);

-- Location: LCCOMB_X1_Y9_N0
\ra_freq_divider|counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~11_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~22_combout\,
	combout => \ra_freq_divider|counter~11_combout\);

-- Location: LCCOMB_X2_Y10_N2
\ra_freq_divider|counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|counter~12_combout\ = (!\ra_freq_divider|Equal0~7_combout\ & \ra_freq_divider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_freq_divider|Equal0~7_combout\,
	datad => \ra_freq_divider|Add0~12_combout\,
	combout => \ra_freq_divider|counter~12_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOOBUF_X0_Y20_N9
\siren~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ra_alarm_controller|prev_state.off~q\,
	devoe => ww_devoe,
	o => \siren~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\alarm_on~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ra_alarm_controller|prev_state.disarmed~q\,
	devoe => ww_devoe,
	o => \alarm_on~output_o\);

-- Location: LCCOMB_X1_Y9_N28
\ra_freq_divider|state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_freq_divider|state~feeder_combout\ = \ra_freq_divider|state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_freq_divider|state~0_combout\,
	combout => \ra_freq_divider|state~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X1_Y9_N29
\ra_freq_divider|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ra_freq_divider|state~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_freq_divider|state~q\);

-- Location: CLKCTRL_G1
\ra_freq_divider|state~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ra_freq_divider|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ra_freq_divider|state~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y18_N14
\ra_pwd_detector|Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector2~4_combout\ = (!\ra_pwd_detector|Equal1~0_combout\ & ((!\ra_pwd_detector|t\(1)) # (!\ra_pwd_detector|t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Equal1~0_combout\,
	datac => \ra_pwd_detector|t\(0),
	datad => \ra_pwd_detector|t\(1),
	combout => \ra_pwd_detector|Selector2~4_combout\);

-- Location: IOIBUF_X0_Y25_N1
\key[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\key[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\key[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X17_Y18_N20
\ra_pwd_detector|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Equal1~0_combout\ = (!\key[2]~input_o\ & (!\key[3]~input_o\ & (!\key[0]~input_o\ & !\key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[3]~input_o\,
	datac => \key[0]~input_o\,
	datad => \key[1]~input_o\,
	combout => \ra_pwd_detector|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\ra_pwd_detector|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector1~0_combout\ = (\ra_pwd_detector|Selector2~2_combout\ & (((\ra_pwd_detector|Equal1~0_combout\ & !\ra_pwd_detector|prev_state.idle~q\)))) # (!\ra_pwd_detector|Selector2~2_combout\ & ((\ra_pwd_detector|prev_state.ready~q\) # 
-- ((\ra_pwd_detector|Equal1~0_combout\ & !\ra_pwd_detector|prev_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Selector2~2_combout\,
	datab => \ra_pwd_detector|prev_state.ready~q\,
	datac => \ra_pwd_detector|Equal1~0_combout\,
	datad => \ra_pwd_detector|prev_state.idle~q\,
	combout => \ra_pwd_detector|Selector1~0_combout\);

-- Location: FF_X16_Y18_N29
\ra_pwd_detector|prev_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	asdata => \ra_pwd_detector|Selector1~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.ready~q\);

-- Location: LCCOMB_X16_Y18_N6
\ra_pwd_detector|Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector2~3_combout\ = (\ra_pwd_detector|Selector2~2_combout\ & ((\ra_pwd_detector|prev_state.ready~q\) # ((\ra_pwd_detector|Selector2~4_combout\ & \ra_pwd_detector|prev_state.key1~q\)))) # (!\ra_pwd_detector|Selector2~2_combout\ & 
-- (\ra_pwd_detector|Selector2~4_combout\ & (\ra_pwd_detector|prev_state.key1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Selector2~2_combout\,
	datab => \ra_pwd_detector|Selector2~4_combout\,
	datac => \ra_pwd_detector|prev_state.key1~q\,
	datad => \ra_pwd_detector|prev_state.ready~q\,
	combout => \ra_pwd_detector|Selector2~3_combout\);

-- Location: FF_X16_Y18_N7
\ra_pwd_detector|prev_state.key1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|Selector2~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.key1~q\);

-- Location: LCCOMB_X16_Y18_N0
\ra_pwd_detector|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector0~0_combout\ = (\ra_pwd_detector|prev_state.wait1~q\) # ((\ra_pwd_detector|prev_state.key2~q\) # ((\ra_pwd_detector|prev_state.key1~q\) # (\ra_pwd_detector|prev_state.wait2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.wait1~q\,
	datab => \ra_pwd_detector|prev_state.key2~q\,
	datac => \ra_pwd_detector|prev_state.key1~q\,
	datad => \ra_pwd_detector|prev_state.wait2~q\,
	combout => \ra_pwd_detector|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y18_N26
\ra_pwd_detector|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector0~1_combout\ = (\ra_pwd_detector|Equal1~0_combout\ & (((\ra_pwd_detector|Selector0~0_combout\ & !\ra_pwd_detector|LessThan0~0_combout\)))) # (!\ra_pwd_detector|Equal1~0_combout\ & (((\ra_pwd_detector|Selector0~0_combout\ & 
-- !\ra_pwd_detector|LessThan0~0_combout\)) # (!\ra_pwd_detector|prev_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Equal1~0_combout\,
	datab => \ra_pwd_detector|prev_state.idle~q\,
	datac => \ra_pwd_detector|Selector0~0_combout\,
	datad => \ra_pwd_detector|LessThan0~0_combout\,
	combout => \ra_pwd_detector|Selector0~1_combout\);

-- Location: LCCOMB_X16_Y18_N22
\ra_pwd_detector|Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector0~2_combout\ = (!\ra_pwd_detector|Selector0~1_combout\ & (((!\ra_pwd_detector|t\(0) & !\ra_pwd_detector|t\(1))) # (!\ra_pwd_detector|prev_state.unlocked~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|t\(0),
	datab => \ra_pwd_detector|t\(1),
	datac => \ra_pwd_detector|Selector0~1_combout\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_pwd_detector|Selector0~2_combout\);

-- Location: FF_X16_Y18_N23
\ra_pwd_detector|prev_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|Selector0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.idle~q\);

-- Location: LCCOMB_X16_Y18_N20
\ra_pwd_detector|t[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[1]~5_combout\ = (\ra_pwd_detector|prev_state.unlocked~q\ & (\ra_pwd_detector|Selector6~1_combout\ & (\ra_pwd_detector|prev_state.idle~q\ $ (!\ra_pwd_detector|Selector0~2_combout\)))) # (!\ra_pwd_detector|prev_state.unlocked~q\ & 
-- (!\ra_pwd_detector|Selector6~1_combout\ & (\ra_pwd_detector|prev_state.idle~q\ $ (!\ra_pwd_detector|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.unlocked~q\,
	datab => \ra_pwd_detector|prev_state.idle~q\,
	datac => \ra_pwd_detector|Selector0~2_combout\,
	datad => \ra_pwd_detector|Selector6~1_combout\,
	combout => \ra_pwd_detector|t[1]~5_combout\);

-- Location: LCCOMB_X16_Y18_N30
\ra_pwd_detector|t[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[0]~7_combout\ = (\ra_pwd_detector|t[1]~5_combout\ & (\ra_pwd_detector|t[1]~4_combout\ & ((\ra_pwd_detector|t\(1)) # (!\ra_pwd_detector|t\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|t\(1),
	datab => \ra_pwd_detector|t[1]~5_combout\,
	datac => \ra_pwd_detector|t\(0),
	datad => \ra_pwd_detector|t[1]~4_combout\,
	combout => \ra_pwd_detector|t[0]~7_combout\);

-- Location: FF_X16_Y18_N31
\ra_pwd_detector|t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|t[0]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|t\(0));

-- Location: IOIBUF_X0_Y26_N1
\key[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X17_Y18_N10
\ra_pwd_detector|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|process_2~0_combout\ = (!\key[0]~input_o\ & (!\key[3]~input_o\ & ((!\ra_pwd_detector|t\(0)) # (!\ra_pwd_detector|t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[3]~input_o\,
	datac => \ra_pwd_detector|t\(1),
	datad => \ra_pwd_detector|t\(0),
	combout => \ra_pwd_detector|process_2~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\ra_pwd_detector|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|process_2~2_combout\ = (!\key[1]~input_o\ & (\key[2]~input_o\ & \ra_pwd_detector|process_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datac => \key[2]~input_o\,
	datad => \ra_pwd_detector|process_2~0_combout\,
	combout => \ra_pwd_detector|process_2~2_combout\);

-- Location: LCCOMB_X16_Y18_N10
\ra_pwd_detector|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector3~1_combout\ = (\ra_pwd_detector|Selector3~0_combout\) # ((\ra_pwd_detector|LessThan0~0_combout\ & (\ra_pwd_detector|prev_state.wait1~q\ & !\ra_pwd_detector|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Selector3~0_combout\,
	datab => \ra_pwd_detector|LessThan0~0_combout\,
	datac => \ra_pwd_detector|prev_state.wait1~q\,
	datad => \ra_pwd_detector|process_2~2_combout\,
	combout => \ra_pwd_detector|Selector3~1_combout\);

-- Location: LCCOMB_X16_Y18_N8
\ra_pwd_detector|prev_state.wait1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|prev_state.wait1~feeder_combout\ = \ra_pwd_detector|Selector3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ra_pwd_detector|Selector3~1_combout\,
	combout => \ra_pwd_detector|prev_state.wait1~feeder_combout\);

-- Location: FF_X16_Y18_N9
\ra_pwd_detector|prev_state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|prev_state.wait1~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.wait1~q\);

-- Location: LCCOMB_X17_Y18_N16
\ra_pwd_detector|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector4~0_combout\ = (\ra_pwd_detector|prev_state.wait1~q\) # ((\ra_pwd_detector|prev_state.key2~q\ & (\ra_pwd_detector|t\(1) & \ra_pwd_detector|t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.key2~q\,
	datab => \ra_pwd_detector|t\(1),
	datac => \ra_pwd_detector|t\(0),
	datad => \ra_pwd_detector|prev_state.wait1~q\,
	combout => \ra_pwd_detector|Selector4~0_combout\);

-- Location: LCCOMB_X17_Y18_N30
\ra_pwd_detector|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector4~1_combout\ = (\ra_pwd_detector|prev_state.key2~q\ & ((\ra_pwd_detector|Selector2~4_combout\) # ((\ra_pwd_detector|Selector4~0_combout\ & \ra_pwd_detector|process_2~2_combout\)))) # (!\ra_pwd_detector|prev_state.key2~q\ & 
-- (\ra_pwd_detector|Selector4~0_combout\ & (\ra_pwd_detector|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.key2~q\,
	datab => \ra_pwd_detector|Selector4~0_combout\,
	datac => \ra_pwd_detector|process_2~2_combout\,
	datad => \ra_pwd_detector|Selector2~4_combout\,
	combout => \ra_pwd_detector|Selector4~1_combout\);

-- Location: LCCOMB_X17_Y18_N12
\ra_pwd_detector|prev_state.key2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|prev_state.key2~feeder_combout\ = \ra_pwd_detector|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_pwd_detector|Selector4~1_combout\,
	combout => \ra_pwd_detector|prev_state.key2~feeder_combout\);

-- Location: FF_X17_Y18_N13
\ra_pwd_detector|prev_state.key2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|prev_state.key2~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.key2~q\);

-- Location: LCCOMB_X16_Y18_N4
\ra_pwd_detector|t[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[1]~3_combout\ = (\ra_pwd_detector|Selector2~3_combout\ & (\ra_pwd_detector|prev_state.key1~q\ & (\ra_pwd_detector|prev_state.wait1~q\ $ (!\ra_pwd_detector|Selector3~1_combout\)))) # (!\ra_pwd_detector|Selector2~3_combout\ & 
-- (!\ra_pwd_detector|prev_state.key1~q\ & (\ra_pwd_detector|prev_state.wait1~q\ $ (!\ra_pwd_detector|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Selector2~3_combout\,
	datab => \ra_pwd_detector|prev_state.key1~q\,
	datac => \ra_pwd_detector|prev_state.wait1~q\,
	datad => \ra_pwd_detector|Selector3~1_combout\,
	combout => \ra_pwd_detector|t[1]~3_combout\);

-- Location: LCCOMB_X16_Y18_N18
\ra_pwd_detector|t[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[1]~2_combout\ = (\ra_pwd_detector|prev_state.wait2~q\ & (\ra_pwd_detector|Selector5~1_combout\ & (\ra_pwd_detector|prev_state.ready~q\ $ (!\ra_pwd_detector|Selector1~0_combout\)))) # (!\ra_pwd_detector|prev_state.wait2~q\ & 
-- (!\ra_pwd_detector|Selector5~1_combout\ & (\ra_pwd_detector|prev_state.ready~q\ $ (!\ra_pwd_detector|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.wait2~q\,
	datab => \ra_pwd_detector|prev_state.ready~q\,
	datac => \ra_pwd_detector|Selector1~0_combout\,
	datad => \ra_pwd_detector|Selector5~1_combout\,
	combout => \ra_pwd_detector|t[1]~2_combout\);

-- Location: LCCOMB_X16_Y18_N2
\ra_pwd_detector|t[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[1]~4_combout\ = (\ra_pwd_detector|t[1]~3_combout\ & (\ra_pwd_detector|t[1]~2_combout\ & (\ra_pwd_detector|Selector4~1_combout\ $ (!\ra_pwd_detector|prev_state.key2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|Selector4~1_combout\,
	datab => \ra_pwd_detector|prev_state.key2~q\,
	datac => \ra_pwd_detector|t[1]~3_combout\,
	datad => \ra_pwd_detector|t[1]~2_combout\,
	combout => \ra_pwd_detector|t[1]~4_combout\);

-- Location: LCCOMB_X16_Y18_N24
\ra_pwd_detector|t[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|t[1]~6_combout\ = (\ra_pwd_detector|t[1]~4_combout\ & (\ra_pwd_detector|t[1]~5_combout\ & ((\ra_pwd_detector|t\(0)) # (\ra_pwd_detector|t\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|t\(0),
	datab => \ra_pwd_detector|t[1]~4_combout\,
	datac => \ra_pwd_detector|t\(1),
	datad => \ra_pwd_detector|t[1]~5_combout\,
	combout => \ra_pwd_detector|t[1]~6_combout\);

-- Location: FF_X16_Y18_N25
\ra_pwd_detector|t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|t[1]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|t\(1));

-- Location: LCCOMB_X16_Y18_N28
\ra_pwd_detector|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|LessThan0~0_combout\ = (!\ra_pwd_detector|t\(1)) # (!\ra_pwd_detector|t\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|t\(0),
	datad => \ra_pwd_detector|t\(1),
	combout => \ra_pwd_detector|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y18_N14
\ra_pwd_detector|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector5~0_combout\ = (\ra_pwd_detector|Equal1~0_combout\ & (\ra_pwd_detector|LessThan0~0_combout\ & ((\ra_pwd_detector|prev_state.key2~q\) # (\ra_pwd_detector|prev_state.wait2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.key2~q\,
	datab => \ra_pwd_detector|Equal1~0_combout\,
	datac => \ra_pwd_detector|prev_state.wait2~q\,
	datad => \ra_pwd_detector|LessThan0~0_combout\,
	combout => \ra_pwd_detector|Selector5~0_combout\);

-- Location: LCCOMB_X17_Y18_N28
\ra_pwd_detector|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|process_2~1_combout\ = (\key[1]~input_o\ & (!\key[2]~input_o\ & \ra_pwd_detector|process_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datac => \key[2]~input_o\,
	datad => \ra_pwd_detector|process_2~0_combout\,
	combout => \ra_pwd_detector|process_2~1_combout\);

-- Location: LCCOMB_X17_Y18_N24
\ra_pwd_detector|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector5~1_combout\ = (\ra_pwd_detector|Selector5~0_combout\) # ((\ra_pwd_detector|prev_state.wait2~q\ & (\ra_pwd_detector|LessThan0~0_combout\ & !\ra_pwd_detector|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_pwd_detector|prev_state.wait2~q\,
	datab => \ra_pwd_detector|LessThan0~0_combout\,
	datac => \ra_pwd_detector|Selector5~0_combout\,
	datad => \ra_pwd_detector|process_2~1_combout\,
	combout => \ra_pwd_detector|Selector5~1_combout\);

-- Location: LCCOMB_X17_Y18_N4
\ra_pwd_detector|prev_state.wait2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|prev_state.wait2~feeder_combout\ = \ra_pwd_detector|Selector5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ra_pwd_detector|Selector5~1_combout\,
	combout => \ra_pwd_detector|prev_state.wait2~feeder_combout\);

-- Location: FF_X17_Y18_N5
\ra_pwd_detector|prev_state.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|prev_state.wait2~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.wait2~q\);

-- Location: LCCOMB_X17_Y18_N26
\ra_pwd_detector|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector6~0_combout\ = (\ra_pwd_detector|prev_state.unlocked~q\ & (!\ra_pwd_detector|t\(0) & !\ra_pwd_detector|t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_pwd_detector|prev_state.unlocked~q\,
	datac => \ra_pwd_detector|t\(0),
	datad => \ra_pwd_detector|t\(1),
	combout => \ra_pwd_detector|Selector6~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\ra_pwd_detector|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|Selector6~1_combout\ = (\ra_pwd_detector|Selector6~0_combout\) # ((\ra_pwd_detector|prev_state.wait2~q\ & \ra_pwd_detector|process_2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_pwd_detector|prev_state.wait2~q\,
	datac => \ra_pwd_detector|Selector6~0_combout\,
	datad => \ra_pwd_detector|process_2~1_combout\,
	combout => \ra_pwd_detector|Selector6~1_combout\);

-- Location: LCCOMB_X17_Y18_N8
\ra_pwd_detector|prev_state.unlocked~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_pwd_detector|prev_state.unlocked~feeder_combout\ = \ra_pwd_detector|Selector6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ra_pwd_detector|Selector6~1_combout\,
	combout => \ra_pwd_detector|prev_state.unlocked~feeder_combout\);

-- Location: FF_X17_Y18_N9
\ra_pwd_detector|prev_state.unlocked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_pwd_detector|prev_state.unlocked~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_pwd_detector|prev_state.unlocked~q\);

-- Location: IOIBUF_X0_Y27_N1
\sensorA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorA,
	o => \sensorA~input_o\);

-- Location: LCCOMB_X20_Y18_N4
\ra_alarm_controller|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector0~0_combout\ = (\ra_alarm_controller|prev_state.disarmed~q\ & (((\ra_pwd_detector|prev_state.unlocked~q\)) # (!\ra_alarm_controller|prev_state.hold_disarm~q\))) # (!\ra_alarm_controller|prev_state.disarmed~q\ & 
-- (((!\sensorA~input_o\ & \ra_pwd_detector|prev_state.unlocked~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.hold_disarm~q\,
	datab => \sensorA~input_o\,
	datac => \ra_alarm_controller|prev_state.disarmed~q\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|Selector0~0_combout\);

-- Location: FF_X20_Y18_N5
\ra_alarm_controller|prev_state.disarmed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.disarmed~q\);

-- Location: LCCOMB_X20_Y18_N0
\ra_alarm_controller|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector1~0_combout\ = (!\sensorA~input_o\ & (\ra_pwd_detector|prev_state.unlocked~q\ & ((\ra_alarm_controller|prev_state.hold_arm~q\) # (!\ra_alarm_controller|prev_state.disarmed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorA~input_o\,
	datab => \ra_alarm_controller|prev_state.disarmed~q\,
	datac => \ra_alarm_controller|prev_state.hold_arm~q\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|Selector1~0_combout\);

-- Location: FF_X20_Y18_N1
\ra_alarm_controller|prev_state.hold_arm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.hold_arm~q\);

-- Location: LCCOMB_X20_Y18_N16
\ra_alarm_controller|t[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[0]~5_combout\ = \ra_alarm_controller|t\(0) $ (VCC)
-- \ra_alarm_controller|t[0]~6\ = CARRY(\ra_alarm_controller|t\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|t\(0),
	datad => VCC,
	combout => \ra_alarm_controller|t[0]~5_combout\,
	cout => \ra_alarm_controller|t[0]~6\);

-- Location: IOIBUF_X0_Y24_N1
\sensorB~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensorB,
	o => \sensorB~input_o\);

-- Location: LCCOMB_X19_Y18_N8
\ra_alarm_controller|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|process_0~6_combout\ = (!\ra_alarm_controller|prev_state.armed~q\) # (!\sensorB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sensorB~input_o\,
	datad => \ra_alarm_controller|prev_state.armed~q\,
	combout => \ra_alarm_controller|process_0~6_combout\);

-- Location: LCCOMB_X19_Y18_N28
\ra_alarm_controller|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|process_2~1_combout\ = (!\sensorA~input_o\ & !\ra_pwd_detector|prev_state.unlocked~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorA~input_o\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|process_2~1_combout\);

-- Location: LCCOMB_X20_Y18_N20
\ra_alarm_controller|t[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[2]~9_combout\ = (\ra_alarm_controller|t\(2) & (\ra_alarm_controller|t[1]~8\ $ (GND))) # (!\ra_alarm_controller|t\(2) & (!\ra_alarm_controller|t[1]~8\ & VCC))
-- \ra_alarm_controller|t[2]~10\ = CARRY((\ra_alarm_controller|t\(2) & !\ra_alarm_controller|t[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|t\(2),
	datad => VCC,
	cin => \ra_alarm_controller|t[1]~8\,
	combout => \ra_alarm_controller|t[2]~9_combout\,
	cout => \ra_alarm_controller|t[2]~10\);

-- Location: LCCOMB_X20_Y18_N6
\ra_alarm_controller|next_state.hold_disarm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|next_state.hold_disarm~0_combout\ = (\ra_alarm_controller|prev_state.disarmed~q\ & (!\ra_alarm_controller|prev_state.hold_arm~q\ & \ra_pwd_detector|prev_state.unlocked~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|prev_state.disarmed~q\,
	datac => \ra_alarm_controller|prev_state.hold_arm~q\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|next_state.hold_disarm~0_combout\);

-- Location: FF_X20_Y18_N7
\ra_alarm_controller|prev_state.hold_disarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|next_state.hold_disarm~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.hold_disarm~q\);

-- Location: LCCOMB_X20_Y18_N28
\ra_alarm_controller|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|WideOr0~1_combout\ = (\ra_alarm_controller|prev_state.hold_arm~q\ & ((\ra_alarm_controller|prev_state.disarmed~q\ $ (\ra_alarm_controller|Selector0~0_combout\)) # (!\ra_alarm_controller|Selector1~0_combout\))) # 
-- (!\ra_alarm_controller|prev_state.hold_arm~q\ & ((\ra_alarm_controller|Selector1~0_combout\) # (\ra_alarm_controller|prev_state.disarmed~q\ $ (\ra_alarm_controller|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.hold_arm~q\,
	datab => \ra_alarm_controller|prev_state.disarmed~q\,
	datac => \ra_alarm_controller|Selector0~0_combout\,
	datad => \ra_alarm_controller|Selector1~0_combout\,
	combout => \ra_alarm_controller|WideOr0~1_combout\);

-- Location: LCCOMB_X20_Y18_N30
\ra_alarm_controller|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|WideOr0~2_combout\ = (\ra_alarm_controller|process_0~8_combout\) # ((\ra_alarm_controller|WideOr0~1_combout\) # (\ra_alarm_controller|prev_state.hold_disarm~q\ $ (\ra_alarm_controller|next_state.hold_disarm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|process_0~8_combout\,
	datab => \ra_alarm_controller|prev_state.hold_disarm~q\,
	datac => \ra_alarm_controller|next_state.hold_disarm~0_combout\,
	datad => \ra_alarm_controller|WideOr0~1_combout\,
	combout => \ra_alarm_controller|WideOr0~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\ra_alarm_controller|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|WideOr0~0_combout\ = (\ra_alarm_controller|prev_state.off~q\ & ((\ra_alarm_controller|prev_state.armed~q\ $ (\ra_alarm_controller|Selector3~1_combout\)) # (!\ra_alarm_controller|Selector5~2_combout\))) # 
-- (!\ra_alarm_controller|prev_state.off~q\ & ((\ra_alarm_controller|Selector5~2_combout\) # (\ra_alarm_controller|prev_state.armed~q\ $ (\ra_alarm_controller|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.off~q\,
	datab => \ra_alarm_controller|prev_state.armed~q\,
	datac => \ra_alarm_controller|Selector3~1_combout\,
	datad => \ra_alarm_controller|Selector5~2_combout\,
	combout => \ra_alarm_controller|WideOr0~0_combout\);

-- Location: LCCOMB_X20_Y18_N10
\ra_alarm_controller|t[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[4]~17_combout\ = ((\ra_alarm_controller|process_0~7_combout\) # ((\ra_alarm_controller|WideOr0~2_combout\) # (\ra_alarm_controller|WideOr0~0_combout\))) # (!\ra_alarm_controller|t[4]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|t[4]~16_combout\,
	datab => \ra_alarm_controller|process_0~7_combout\,
	datac => \ra_alarm_controller|WideOr0~2_combout\,
	datad => \ra_alarm_controller|WideOr0~0_combout\,
	combout => \ra_alarm_controller|t[4]~17_combout\);

-- Location: FF_X20_Y18_N21
\ra_alarm_controller|t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|t[2]~9_combout\,
	clrn => \rst~input_o\,
	sclr => \ra_alarm_controller|WideOr0~combout\,
	ena => \ra_alarm_controller|t[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|t\(2));

-- Location: LCCOMB_X20_Y18_N2
\ra_alarm_controller|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|process_2~0_combout\ = (\sensorA~input_o\) # ((\ra_alarm_controller|t\(3) & ((\ra_alarm_controller|t\(1)) # (\ra_alarm_controller|t\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorA~input_o\,
	datab => \ra_alarm_controller|t\(1),
	datac => \ra_alarm_controller|t\(3),
	datad => \ra_alarm_controller|t\(2),
	combout => \ra_alarm_controller|process_2~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\ra_alarm_controller|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector4~0_combout\ = (\ra_alarm_controller|prev_state.wait_in~q\ & (!\ra_alarm_controller|t\(4) & (!\ra_pwd_detector|prev_state.unlocked~q\ & !\ra_alarm_controller|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.wait_in~q\,
	datab => \ra_alarm_controller|t\(4),
	datac => \ra_pwd_detector|prev_state.unlocked~q\,
	datad => \ra_alarm_controller|process_2~0_combout\,
	combout => \ra_alarm_controller|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\ra_alarm_controller|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|process_0~7_combout\ = \ra_alarm_controller|prev_state.wait_in~q\ $ (((\ra_alarm_controller|Selector4~0_combout\) # ((!\ra_alarm_controller|process_0~6_combout\ & \ra_alarm_controller|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.wait_in~q\,
	datab => \ra_alarm_controller|process_0~6_combout\,
	datac => \ra_alarm_controller|process_2~1_combout\,
	datad => \ra_alarm_controller|Selector4~0_combout\,
	combout => \ra_alarm_controller|process_0~7_combout\);

-- Location: LCCOMB_X20_Y18_N14
\ra_alarm_controller|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|WideOr0~combout\ = (\ra_alarm_controller|process_0~7_combout\) # ((\ra_alarm_controller|WideOr0~2_combout\) # (\ra_alarm_controller|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|process_0~7_combout\,
	datac => \ra_alarm_controller|WideOr0~2_combout\,
	datad => \ra_alarm_controller|WideOr0~0_combout\,
	combout => \ra_alarm_controller|WideOr0~combout\);

-- Location: FF_X20_Y18_N17
\ra_alarm_controller|t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|t[0]~5_combout\,
	clrn => \rst~input_o\,
	sclr => \ra_alarm_controller|WideOr0~combout\,
	ena => \ra_alarm_controller|t[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|t\(0));

-- Location: LCCOMB_X20_Y18_N18
\ra_alarm_controller|t[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[1]~7_combout\ = (\ra_alarm_controller|t\(1) & (!\ra_alarm_controller|t[0]~6\)) # (!\ra_alarm_controller|t\(1) & ((\ra_alarm_controller|t[0]~6\) # (GND)))
-- \ra_alarm_controller|t[1]~8\ = CARRY((!\ra_alarm_controller|t[0]~6\) # (!\ra_alarm_controller|t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|t\(1),
	datad => VCC,
	cin => \ra_alarm_controller|t[0]~6\,
	combout => \ra_alarm_controller|t[1]~7_combout\,
	cout => \ra_alarm_controller|t[1]~8\);

-- Location: FF_X20_Y18_N19
\ra_alarm_controller|t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|t[1]~7_combout\,
	clrn => \rst~input_o\,
	sclr => \ra_alarm_controller|WideOr0~combout\,
	ena => \ra_alarm_controller|t[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|t\(1));

-- Location: LCCOMB_X20_Y18_N22
\ra_alarm_controller|t[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[3]~11_combout\ = (\ra_alarm_controller|t\(3) & (!\ra_alarm_controller|t[2]~10\)) # (!\ra_alarm_controller|t\(3) & ((\ra_alarm_controller|t[2]~10\) # (GND)))
-- \ra_alarm_controller|t[3]~12\ = CARRY((!\ra_alarm_controller|t[2]~10\) # (!\ra_alarm_controller|t\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|t\(3),
	datad => VCC,
	cin => \ra_alarm_controller|t[2]~10\,
	combout => \ra_alarm_controller|t[3]~11_combout\,
	cout => \ra_alarm_controller|t[3]~12\);

-- Location: FF_X20_Y18_N23
\ra_alarm_controller|t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|t[3]~11_combout\,
	clrn => \rst~input_o\,
	sclr => \ra_alarm_controller|WideOr0~combout\,
	ena => \ra_alarm_controller|t[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|t\(3));

-- Location: LCCOMB_X20_Y18_N24
\ra_alarm_controller|t[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|t[4]~13_combout\ = \ra_alarm_controller|t[3]~12\ $ (!\ra_alarm_controller|t\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ra_alarm_controller|t\(4),
	cin => \ra_alarm_controller|t[3]~12\,
	combout => \ra_alarm_controller|t[4]~13_combout\);

-- Location: FF_X20_Y18_N25
\ra_alarm_controller|t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|t[4]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \ra_alarm_controller|WideOr0~combout\,
	ena => \ra_alarm_controller|t[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|t\(4));

-- Location: LCCOMB_X20_Y18_N8
\ra_alarm_controller|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector2~0_combout\ = ((!\ra_alarm_controller|t\(3) & !\ra_alarm_controller|t\(2))) # (!\ra_alarm_controller|t\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ra_alarm_controller|t\(4),
	datac => \ra_alarm_controller|t\(3),
	datad => \ra_alarm_controller|t\(2),
	combout => \ra_alarm_controller|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\ra_alarm_controller|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector2~1_combout\ = (\ra_alarm_controller|process_2~1_combout\ & ((\ra_alarm_controller|prev_state.hold_arm~q\) # ((\ra_alarm_controller|prev_state.wait_out~q\ & \ra_alarm_controller|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|process_2~1_combout\,
	datab => \ra_alarm_controller|prev_state.hold_arm~q\,
	datac => \ra_alarm_controller|prev_state.wait_out~q\,
	datad => \ra_alarm_controller|Selector2~0_combout\,
	combout => \ra_alarm_controller|Selector2~1_combout\);

-- Location: FF_X19_Y18_N27
\ra_alarm_controller|prev_state.wait_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.wait_out~q\);

-- Location: LCCOMB_X19_Y18_N4
\ra_alarm_controller|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector3~1_combout\ = (\ra_alarm_controller|Selector3~0_combout\) # ((\ra_alarm_controller|prev_state.wait_out~q\ & (!\ra_alarm_controller|Selector2~0_combout\ & \ra_alarm_controller|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|Selector3~0_combout\,
	datab => \ra_alarm_controller|prev_state.wait_out~q\,
	datac => \ra_alarm_controller|Selector2~0_combout\,
	datad => \ra_alarm_controller|process_2~1_combout\,
	combout => \ra_alarm_controller|Selector3~1_combout\);

-- Location: LCCOMB_X19_Y18_N0
\ra_alarm_controller|prev_state.armed~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|prev_state.armed~feeder_combout\ = \ra_alarm_controller|Selector3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_alarm_controller|Selector3~1_combout\,
	combout => \ra_alarm_controller|prev_state.armed~feeder_combout\);

-- Location: FF_X19_Y18_N1
\ra_alarm_controller|prev_state.armed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|prev_state.armed~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.armed~q\);

-- Location: LCCOMB_X19_Y18_N22
\ra_alarm_controller|Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector5~1_combout\ = (\ra_alarm_controller|prev_state.hold_arm~q\) # ((!\ra_pwd_detector|prev_state.unlocked~q\ & ((\ra_alarm_controller|prev_state.wait_out~q\) # (\ra_alarm_controller|prev_state.armed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.wait_out~q\,
	datab => \ra_alarm_controller|prev_state.armed~q\,
	datac => \ra_alarm_controller|prev_state.hold_arm~q\,
	datad => \ra_pwd_detector|prev_state.unlocked~q\,
	combout => \ra_alarm_controller|Selector5~1_combout\);

-- Location: LCCOMB_X19_Y18_N12
\ra_alarm_controller|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector5~0_combout\ = (\ra_alarm_controller|prev_state.off~q\) # ((\ra_alarm_controller|prev_state.wait_in~q\ & ((\ra_alarm_controller|t\(4)) # (\ra_alarm_controller|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ra_alarm_controller|prev_state.wait_in~q\,
	datab => \ra_alarm_controller|t\(4),
	datac => \ra_alarm_controller|prev_state.off~q\,
	datad => \ra_alarm_controller|process_2~0_combout\,
	combout => \ra_alarm_controller|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\ra_alarm_controller|Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|Selector5~2_combout\ = (\sensorA~input_o\ & ((\ra_alarm_controller|Selector5~1_combout\) # ((!\ra_pwd_detector|prev_state.unlocked~q\ & \ra_alarm_controller|Selector5~0_combout\)))) # (!\sensorA~input_o\ & 
-- (!\ra_pwd_detector|prev_state.unlocked~q\ & ((\ra_alarm_controller|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensorA~input_o\,
	datab => \ra_pwd_detector|prev_state.unlocked~q\,
	datac => \ra_alarm_controller|Selector5~1_combout\,
	datad => \ra_alarm_controller|Selector5~0_combout\,
	combout => \ra_alarm_controller|Selector5~2_combout\);

-- Location: LCCOMB_X19_Y18_N20
\ra_alarm_controller|prev_state.off~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ra_alarm_controller|prev_state.off~feeder_combout\ = \ra_alarm_controller|Selector5~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ra_alarm_controller|Selector5~2_combout\,
	combout => \ra_alarm_controller|prev_state.off~feeder_combout\);

-- Location: FF_X19_Y18_N21
\ra_alarm_controller|prev_state.off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ra_freq_divider|state~clkctrl_outclk\,
	d => \ra_alarm_controller|prev_state.off~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ra_alarm_controller|prev_state.off~q\);

ww_siren <= \siren~output_o\;

ww_alarm_on <= \alarm_on~output_o\;
END structure;


