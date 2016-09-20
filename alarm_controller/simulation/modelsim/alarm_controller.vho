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

-- DATE "08/31/2016 23:38:26"

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

ENTITY 	alarm_controller IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pwd : IN std_logic;
	sensorA : IN std_logic;
	sensorB : IN std_logic;
	siren : OUT std_logic;
	state_disarmed : OUT std_logic;
	state_hold_arm : OUT std_logic;
	state_wait_out : OUT std_logic;
	state_armed : OUT std_logic;
	state_wait_in : OUT std_logic;
	state_off : OUT std_logic;
	state_hold_disarm : OUT std_logic
	);
END alarm_controller;

-- Design Ports Information
-- siren	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_disarmed	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_hold_arm	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_wait_out	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_armed	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_wait_in	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_off	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- state_hold_disarm	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwd	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorA	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensorB	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alarm_controller IS
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
SIGNAL ww_pwd : std_logic;
SIGNAL ww_sensorA : std_logic;
SIGNAL ww_sensorB : std_logic;
SIGNAL ww_siren : std_logic;
SIGNAL ww_state_disarmed : std_logic;
SIGNAL ww_state_hold_arm : std_logic;
SIGNAL ww_state_wait_out : std_logic;
SIGNAL ww_state_armed : std_logic;
SIGNAL ww_state_wait_in : std_logic;
SIGNAL ww_state_off : std_logic;
SIGNAL ww_state_hold_disarm : std_logic;
SIGNAL \freq_divider|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_divider|Add0~2_combout\ : std_logic;
SIGNAL \freq_divider|Add0~14_combout\ : std_logic;
SIGNAL \freq_divider|Add0~26_combout\ : std_logic;
SIGNAL \freq_divider|Add0~32_combout\ : std_logic;
SIGNAL \freq_divider|Add0~40_combout\ : std_logic;
SIGNAL \freq_divider|Add0~47\ : std_logic;
SIGNAL \freq_divider|Add0~48_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~1_combout\ : std_logic;
SIGNAL \freq_divider|counter~0_combout\ : std_logic;
SIGNAL \freq_divider|counter~4_combout\ : std_logic;
SIGNAL \freq_divider|counter~7_combout\ : std_logic;
SIGNAL \freq_divider|counter~9_combout\ : std_logic;
SIGNAL \pwd~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \siren~output_o\ : std_logic;
SIGNAL \state_disarmed~output_o\ : std_logic;
SIGNAL \state_hold_arm~output_o\ : std_logic;
SIGNAL \state_wait_out~output_o\ : std_logic;
SIGNAL \state_armed~output_o\ : std_logic;
SIGNAL \state_wait_in~output_o\ : std_logic;
SIGNAL \state_off~output_o\ : std_logic;
SIGNAL \state_hold_disarm~output_o\ : std_logic;
SIGNAL \freq_divider|Add0~0_combout\ : std_logic;
SIGNAL \freq_divider|counter~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \freq_divider|Add0~1\ : std_logic;
SIGNAL \freq_divider|Add0~3\ : std_logic;
SIGNAL \freq_divider|Add0~5\ : std_logic;
SIGNAL \freq_divider|Add0~6_combout\ : std_logic;
SIGNAL \freq_divider|Add0~4_combout\ : std_logic;
SIGNAL \freq_divider|Add0~7\ : std_logic;
SIGNAL \freq_divider|Add0~8_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~6_combout\ : std_logic;
SIGNAL \freq_divider|Add0~9\ : std_logic;
SIGNAL \freq_divider|Add0~10_combout\ : std_logic;
SIGNAL \freq_divider|Add0~11\ : std_logic;
SIGNAL \freq_divider|Add0~12_combout\ : std_logic;
SIGNAL \freq_divider|counter~12_combout\ : std_logic;
SIGNAL \freq_divider|Add0~13\ : std_logic;
SIGNAL \freq_divider|Add0~15\ : std_logic;
SIGNAL \freq_divider|Add0~16_combout\ : std_logic;
SIGNAL \freq_divider|Add0~17\ : std_logic;
SIGNAL \freq_divider|Add0~18_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~5_combout\ : std_logic;
SIGNAL \freq_divider|Add0~19\ : std_logic;
SIGNAL \freq_divider|Add0~20_combout\ : std_logic;
SIGNAL \freq_divider|Add0~21\ : std_logic;
SIGNAL \freq_divider|Add0~23\ : std_logic;
SIGNAL \freq_divider|Add0~24_combout\ : std_logic;
SIGNAL \freq_divider|counter~10_combout\ : std_logic;
SIGNAL \freq_divider|Add0~25\ : std_logic;
SIGNAL \freq_divider|Add0~27\ : std_logic;
SIGNAL \freq_divider|Add0~28_combout\ : std_logic;
SIGNAL \freq_divider|counter~8_combout\ : std_logic;
SIGNAL \freq_divider|Add0~29\ : std_logic;
SIGNAL \freq_divider|Add0~31\ : std_logic;
SIGNAL \freq_divider|Add0~33\ : std_logic;
SIGNAL \freq_divider|Add0~34_combout\ : std_logic;
SIGNAL \freq_divider|Add0~30_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~2_combout\ : std_logic;
SIGNAL \freq_divider|Add0~35\ : std_logic;
SIGNAL \freq_divider|Add0~36_combout\ : std_logic;
SIGNAL \freq_divider|counter~6_combout\ : std_logic;
SIGNAL \freq_divider|Add0~37\ : std_logic;
SIGNAL \freq_divider|Add0~38_combout\ : std_logic;
SIGNAL \freq_divider|counter~5_combout\ : std_logic;
SIGNAL \freq_divider|Add0~39\ : std_logic;
SIGNAL \freq_divider|Add0~41\ : std_logic;
SIGNAL \freq_divider|Add0~42_combout\ : std_logic;
SIGNAL \freq_divider|counter~3_combout\ : std_logic;
SIGNAL \freq_divider|Add0~43\ : std_logic;
SIGNAL \freq_divider|Add0~45\ : std_logic;
SIGNAL \freq_divider|Add0~46_combout\ : std_logic;
SIGNAL \freq_divider|Add0~44_combout\ : std_logic;
SIGNAL \freq_divider|counter~1_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~0_combout\ : std_logic;
SIGNAL \freq_divider|Add0~22_combout\ : std_logic;
SIGNAL \freq_divider|counter~11_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~3_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~4_combout\ : std_logic;
SIGNAL \freq_divider|Equal0~7_combout\ : std_logic;
SIGNAL \freq_divider|state~0_combout\ : std_logic;
SIGNAL \freq_divider|state~feeder_combout\ : std_logic;
SIGNAL \freq_divider|state~q\ : std_logic;
SIGNAL \freq_divider|state~clkctrl_outclk\ : std_logic;
SIGNAL \sensorA~input_o\ : std_logic;
SIGNAL \next_state.hold_disarm~0_combout\ : std_logic;
SIGNAL \prev_state.hold_disarm~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \prev_state.disarmed~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \prev_state.hold_arm~q\ : std_logic;
SIGNAL \sensorB~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \prev_state.armed~q\ : std_logic;
SIGNAL \t[0]~7_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \prev_state.wait_in~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \t[1]~6_combout\ : std_logic;
SIGNAL \t[3]~3_combout\ : std_logic;
SIGNAL \t[2]~5_combout\ : std_logic;
SIGNAL \t[3]~0_combout\ : std_logic;
SIGNAL \t[3]~1_combout\ : std_logic;
SIGNAL \t[3]~2_combout\ : std_logic;
SIGNAL \t[3]~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \prev_state.wait_out~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \prev_state.off~feeder_combout\ : std_logic;
SIGNAL \prev_state.off~q\ : std_logic;
SIGNAL t : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_divider|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_prev_state.disarmed~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_pwd <= pwd;
ww_sensorA <= sensorA;
ww_sensorB <= sensorB;
siren <= ww_siren;
state_disarmed <= ww_state_disarmed;
state_hold_arm <= ww_state_hold_arm;
state_wait_out <= ww_state_wait_out;
state_armed <= ww_state_armed;
state_wait_in <= ww_state_wait_in;
state_off <= ww_state_off;
state_hold_disarm <= ww_state_hold_disarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freq_divider|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_divider|state~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_prev_state.disarmed~q\ <= NOT \prev_state.disarmed~q\;

-- Location: LCCOMB_X4_Y26_N10
\freq_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~2_combout\ = (\freq_divider|counter\(1) & (!\freq_divider|Add0~1\)) # (!\freq_divider|counter\(1) & ((\freq_divider|Add0~1\) # (GND)))
-- \freq_divider|Add0~3\ = CARRY((!\freq_divider|Add0~1\) # (!\freq_divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(1),
	datad => VCC,
	cin => \freq_divider|Add0~1\,
	combout => \freq_divider|Add0~2_combout\,
	cout => \freq_divider|Add0~3\);

-- Location: LCCOMB_X4_Y26_N22
\freq_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~14_combout\ = (\freq_divider|counter\(7) & (!\freq_divider|Add0~13\)) # (!\freq_divider|counter\(7) & ((\freq_divider|Add0~13\) # (GND)))
-- \freq_divider|Add0~15\ = CARRY((!\freq_divider|Add0~13\) # (!\freq_divider|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(7),
	datad => VCC,
	cin => \freq_divider|Add0~13\,
	combout => \freq_divider|Add0~14_combout\,
	cout => \freq_divider|Add0~15\);

-- Location: LCCOMB_X4_Y25_N2
\freq_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~26_combout\ = (\freq_divider|counter\(13) & (!\freq_divider|Add0~25\)) # (!\freq_divider|counter\(13) & ((\freq_divider|Add0~25\) # (GND)))
-- \freq_divider|Add0~27\ = CARRY((!\freq_divider|Add0~25\) # (!\freq_divider|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(13),
	datad => VCC,
	cin => \freq_divider|Add0~25\,
	combout => \freq_divider|Add0~26_combout\,
	cout => \freq_divider|Add0~27\);

-- Location: LCCOMB_X4_Y25_N8
\freq_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~32_combout\ = (\freq_divider|counter\(16) & (\freq_divider|Add0~31\ $ (GND))) # (!\freq_divider|counter\(16) & (!\freq_divider|Add0~31\ & VCC))
-- \freq_divider|Add0~33\ = CARRY((\freq_divider|counter\(16) & !\freq_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(16),
	datad => VCC,
	cin => \freq_divider|Add0~31\,
	combout => \freq_divider|Add0~32_combout\,
	cout => \freq_divider|Add0~33\);

-- Location: LCCOMB_X4_Y25_N16
\freq_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~40_combout\ = (\freq_divider|counter\(20) & (\freq_divider|Add0~39\ $ (GND))) # (!\freq_divider|counter\(20) & (!\freq_divider|Add0~39\ & VCC))
-- \freq_divider|Add0~41\ = CARRY((\freq_divider|counter\(20) & !\freq_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(20),
	datad => VCC,
	cin => \freq_divider|Add0~39\,
	combout => \freq_divider|Add0~40_combout\,
	cout => \freq_divider|Add0~41\);

-- Location: LCCOMB_X4_Y25_N22
\freq_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~46_combout\ = (\freq_divider|counter\(23) & (!\freq_divider|Add0~45\)) # (!\freq_divider|counter\(23) & ((\freq_divider|Add0~45\) # (GND)))
-- \freq_divider|Add0~47\ = CARRY((!\freq_divider|Add0~45\) # (!\freq_divider|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(23),
	datad => VCC,
	cin => \freq_divider|Add0~45\,
	combout => \freq_divider|Add0~46_combout\,
	cout => \freq_divider|Add0~47\);

-- Location: LCCOMB_X4_Y25_N24
\freq_divider|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~48_combout\ = \freq_divider|Add0~47\ $ (!\freq_divider|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freq_divider|counter\(24),
	cin => \freq_divider|Add0~47\,
	combout => \freq_divider|Add0~48_combout\);

-- Location: LCCOMB_X1_Y26_N22
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\pwd~input_o\ & !\sensorA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datad => \sensorA~input_o\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X1_Y26_N6
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = \prev_state.wait_out~q\ $ (((\Selector2~2_combout\ & ((\prev_state.hold_arm~q\) # (\Selector2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \prev_state.wait_out~q\,
	datac => \prev_state.hold_arm~q\,
	datad => \Selector2~0_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X1_Y26_N28
\WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\prev_state.hold_arm~q\ & ((\prev_state.disarmed~q\ $ (\Selector0~0_combout\)) # (!\Selector1~0_combout\))) # (!\prev_state.hold_arm~q\ & ((\Selector1~0_combout\) # (\prev_state.disarmed~q\ $ (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.hold_arm~q\,
	datab => \prev_state.disarmed~q\,
	datac => \Selector0~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X1_Y26_N14
\WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\WideOr0~1_combout\) # ((\process_0~7_combout\) # (\prev_state.hold_disarm~q\ $ (\next_state.hold_disarm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.hold_disarm~q\,
	datab => \WideOr0~1_combout\,
	datac => \next_state.hold_disarm~0_combout\,
	datad => \process_0~7_combout\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X2_Y26_N20
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = t(3) $ (((t(1) & (t(2) & t(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(1),
	datab => t(2),
	datac => t(0),
	datad => t(3),
	combout => \Add0~0_combout\);

-- Location: FF_X3_Y25_N25
\freq_divider|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(24));

-- Location: FF_X4_Y25_N31
\freq_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(20));

-- Location: LCCOMB_X3_Y25_N22
\freq_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~1_combout\ = (\freq_divider|counter\(18) & (\freq_divider|counter\(21) & (\freq_divider|counter\(19) & \freq_divider|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(18),
	datab => \freq_divider|counter\(21),
	datac => \freq_divider|counter\(19),
	datad => \freq_divider|counter\(20),
	combout => \freq_divider|Equal0~1_combout\);

-- Location: FF_X3_Y25_N11
\freq_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(16));

-- Location: FF_X3_Y25_N27
\freq_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(13));

-- Location: FF_X4_Y26_N23
\freq_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(7));

-- Location: FF_X4_Y26_N11
\freq_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(1));

-- Location: LCCOMB_X3_Y25_N24
\freq_divider|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~0_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~48_combout\,
	combout => \freq_divider|counter~0_combout\);

-- Location: LCCOMB_X4_Y25_N30
\freq_divider|counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~4_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~40_combout\,
	combout => \freq_divider|counter~4_combout\);

-- Location: LCCOMB_X3_Y25_N10
\freq_divider|counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~7_combout\ = (\freq_divider|Add0~32_combout\ & !\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Add0~32_combout\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|counter~7_combout\);

-- Location: LCCOMB_X3_Y25_N26
\freq_divider|counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~9_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~26_combout\,
	combout => \freq_divider|counter~9_combout\);

-- Location: IOIBUF_X0_Y25_N1
\pwd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pwd,
	o => \pwd~input_o\);

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
	i => \prev_state.off~q\,
	devoe => ww_devoe,
	o => \siren~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\state_disarmed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_prev_state.disarmed~q\,
	devoe => ww_devoe,
	o => \state_disarmed~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\state_hold_arm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.hold_arm~q\,
	devoe => ww_devoe,
	o => \state_hold_arm~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\state_wait_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.wait_out~q\,
	devoe => ww_devoe,
	o => \state_wait_out~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\state_armed~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.armed~q\,
	devoe => ww_devoe,
	o => \state_armed~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\state_wait_in~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.wait_in~q\,
	devoe => ww_devoe,
	o => \state_wait_in~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\state_off~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.off~q\,
	devoe => ww_devoe,
	o => \state_off~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\state_hold_disarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.hold_disarm~q\,
	devoe => ww_devoe,
	o => \state_hold_disarm~output_o\);

-- Location: LCCOMB_X4_Y26_N8
\freq_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~0_combout\ = \freq_divider|counter\(0) $ (VCC)
-- \freq_divider|Add0~1\ = CARRY(\freq_divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(0),
	datad => VCC,
	combout => \freq_divider|Add0~0_combout\,
	cout => \freq_divider|Add0~1\);

-- Location: LCCOMB_X4_Y26_N4
\freq_divider|counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~2_combout\ = (\freq_divider|Add0~0_combout\ & !\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Add0~0_combout\,
	datac => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|counter~2_combout\);

-- Location: IOIBUF_X0_Y23_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X4_Y26_N5
\freq_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(0));

-- Location: LCCOMB_X4_Y26_N12
\freq_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~4_combout\ = (\freq_divider|counter\(2) & (\freq_divider|Add0~3\ $ (GND))) # (!\freq_divider|counter\(2) & (!\freq_divider|Add0~3\ & VCC))
-- \freq_divider|Add0~5\ = CARRY((\freq_divider|counter\(2) & !\freq_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(2),
	datad => VCC,
	cin => \freq_divider|Add0~3\,
	combout => \freq_divider|Add0~4_combout\,
	cout => \freq_divider|Add0~5\);

-- Location: LCCOMB_X4_Y26_N14
\freq_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~6_combout\ = (\freq_divider|counter\(3) & (!\freq_divider|Add0~5\)) # (!\freq_divider|counter\(3) & ((\freq_divider|Add0~5\) # (GND)))
-- \freq_divider|Add0~7\ = CARRY((!\freq_divider|Add0~5\) # (!\freq_divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(3),
	datad => VCC,
	cin => \freq_divider|Add0~5\,
	combout => \freq_divider|Add0~6_combout\,
	cout => \freq_divider|Add0~7\);

-- Location: FF_X4_Y26_N15
\freq_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(3));

-- Location: FF_X4_Y26_N13
\freq_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(2));

-- Location: LCCOMB_X4_Y26_N16
\freq_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~8_combout\ = (\freq_divider|counter\(4) & (\freq_divider|Add0~7\ $ (GND))) # (!\freq_divider|counter\(4) & (!\freq_divider|Add0~7\ & VCC))
-- \freq_divider|Add0~9\ = CARRY((\freq_divider|counter\(4) & !\freq_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(4),
	datad => VCC,
	cin => \freq_divider|Add0~7\,
	combout => \freq_divider|Add0~8_combout\,
	cout => \freq_divider|Add0~9\);

-- Location: FF_X4_Y26_N17
\freq_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(4));

-- Location: LCCOMB_X3_Y26_N24
\freq_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~6_combout\ = (!\freq_divider|counter\(5) & (!\freq_divider|counter\(3) & (!\freq_divider|counter\(2) & !\freq_divider|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(5),
	datab => \freq_divider|counter\(3),
	datac => \freq_divider|counter\(2),
	datad => \freq_divider|counter\(4),
	combout => \freq_divider|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y26_N18
\freq_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~10_combout\ = (\freq_divider|counter\(5) & (!\freq_divider|Add0~9\)) # (!\freq_divider|counter\(5) & ((\freq_divider|Add0~9\) # (GND)))
-- \freq_divider|Add0~11\ = CARRY((!\freq_divider|Add0~9\) # (!\freq_divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(5),
	datad => VCC,
	cin => \freq_divider|Add0~9\,
	combout => \freq_divider|Add0~10_combout\,
	cout => \freq_divider|Add0~11\);

-- Location: FF_X4_Y26_N19
\freq_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(5));

-- Location: LCCOMB_X4_Y26_N20
\freq_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~12_combout\ = (\freq_divider|counter\(6) & (\freq_divider|Add0~11\ $ (GND))) # (!\freq_divider|counter\(6) & (!\freq_divider|Add0~11\ & VCC))
-- \freq_divider|Add0~13\ = CARRY((\freq_divider|counter\(6) & !\freq_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(6),
	datad => VCC,
	cin => \freq_divider|Add0~11\,
	combout => \freq_divider|Add0~12_combout\,
	cout => \freq_divider|Add0~13\);

-- Location: LCCOMB_X4_Y26_N0
\freq_divider|counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~12_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~12_combout\,
	combout => \freq_divider|counter~12_combout\);

-- Location: FF_X4_Y26_N1
\freq_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(6));

-- Location: LCCOMB_X4_Y26_N24
\freq_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~16_combout\ = (\freq_divider|counter\(8) & (\freq_divider|Add0~15\ $ (GND))) # (!\freq_divider|counter\(8) & (!\freq_divider|Add0~15\ & VCC))
-- \freq_divider|Add0~17\ = CARRY((\freq_divider|counter\(8) & !\freq_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(8),
	datad => VCC,
	cin => \freq_divider|Add0~15\,
	combout => \freq_divider|Add0~16_combout\,
	cout => \freq_divider|Add0~17\);

-- Location: FF_X4_Y26_N25
\freq_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(8));

-- Location: LCCOMB_X4_Y26_N26
\freq_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~18_combout\ = (\freq_divider|counter\(9) & (!\freq_divider|Add0~17\)) # (!\freq_divider|counter\(9) & ((\freq_divider|Add0~17\) # (GND)))
-- \freq_divider|Add0~19\ = CARRY((!\freq_divider|Add0~17\) # (!\freq_divider|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(9),
	datad => VCC,
	cin => \freq_divider|Add0~17\,
	combout => \freq_divider|Add0~18_combout\,
	cout => \freq_divider|Add0~19\);

-- Location: FF_X4_Y26_N27
\freq_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(9));

-- Location: LCCOMB_X4_Y26_N2
\freq_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~5_combout\ = (!\freq_divider|counter\(7) & (!\freq_divider|counter\(8) & (!\freq_divider|counter\(9) & \freq_divider|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(7),
	datab => \freq_divider|counter\(8),
	datac => \freq_divider|counter\(9),
	datad => \freq_divider|counter\(6),
	combout => \freq_divider|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y26_N28
\freq_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~20_combout\ = (\freq_divider|counter\(10) & (\freq_divider|Add0~19\ $ (GND))) # (!\freq_divider|counter\(10) & (!\freq_divider|Add0~19\ & VCC))
-- \freq_divider|Add0~21\ = CARRY((\freq_divider|counter\(10) & !\freq_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(10),
	datad => VCC,
	cin => \freq_divider|Add0~19\,
	combout => \freq_divider|Add0~20_combout\,
	cout => \freq_divider|Add0~21\);

-- Location: FF_X4_Y26_N29
\freq_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(10));

-- Location: LCCOMB_X4_Y26_N30
\freq_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~22_combout\ = (\freq_divider|counter\(11) & (!\freq_divider|Add0~21\)) # (!\freq_divider|counter\(11) & ((\freq_divider|Add0~21\) # (GND)))
-- \freq_divider|Add0~23\ = CARRY((!\freq_divider|Add0~21\) # (!\freq_divider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(11),
	datad => VCC,
	cin => \freq_divider|Add0~21\,
	combout => \freq_divider|Add0~22_combout\,
	cout => \freq_divider|Add0~23\);

-- Location: LCCOMB_X4_Y25_N0
\freq_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~24_combout\ = (\freq_divider|counter\(12) & (\freq_divider|Add0~23\ $ (GND))) # (!\freq_divider|counter\(12) & (!\freq_divider|Add0~23\ & VCC))
-- \freq_divider|Add0~25\ = CARRY((\freq_divider|counter\(12) & !\freq_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(12),
	datad => VCC,
	cin => \freq_divider|Add0~23\,
	combout => \freq_divider|Add0~24_combout\,
	cout => \freq_divider|Add0~25\);

-- Location: LCCOMB_X3_Y25_N28
\freq_divider|counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~10_combout\ = (\freq_divider|Add0~24_combout\ & !\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Add0~24_combout\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|counter~10_combout\);

-- Location: FF_X3_Y25_N29
\freq_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(12));

-- Location: LCCOMB_X4_Y25_N4
\freq_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~28_combout\ = (\freq_divider|counter\(14) & (\freq_divider|Add0~27\ $ (GND))) # (!\freq_divider|counter\(14) & (!\freq_divider|Add0~27\ & VCC))
-- \freq_divider|Add0~29\ = CARRY((\freq_divider|counter\(14) & !\freq_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(14),
	datad => VCC,
	cin => \freq_divider|Add0~27\,
	combout => \freq_divider|Add0~28_combout\,
	cout => \freq_divider|Add0~29\);

-- Location: LCCOMB_X3_Y25_N14
\freq_divider|counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~8_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~28_combout\,
	combout => \freq_divider|counter~8_combout\);

-- Location: FF_X3_Y25_N15
\freq_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(14));

-- Location: LCCOMB_X4_Y25_N6
\freq_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~30_combout\ = (\freq_divider|counter\(15) & (!\freq_divider|Add0~29\)) # (!\freq_divider|counter\(15) & ((\freq_divider|Add0~29\) # (GND)))
-- \freq_divider|Add0~31\ = CARRY((!\freq_divider|Add0~29\) # (!\freq_divider|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(15),
	datad => VCC,
	cin => \freq_divider|Add0~29\,
	combout => \freq_divider|Add0~30_combout\,
	cout => \freq_divider|Add0~31\);

-- Location: LCCOMB_X4_Y25_N10
\freq_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~34_combout\ = (\freq_divider|counter\(17) & (!\freq_divider|Add0~33\)) # (!\freq_divider|counter\(17) & ((\freq_divider|Add0~33\) # (GND)))
-- \freq_divider|Add0~35\ = CARRY((!\freq_divider|Add0~33\) # (!\freq_divider|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(17),
	datad => VCC,
	cin => \freq_divider|Add0~33\,
	combout => \freq_divider|Add0~34_combout\,
	cout => \freq_divider|Add0~35\);

-- Location: FF_X4_Y25_N11
\freq_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(17));

-- Location: FF_X4_Y25_N7
\freq_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(15));

-- Location: LCCOMB_X3_Y25_N16
\freq_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~2_combout\ = (\freq_divider|counter\(16) & (\freq_divider|counter\(14) & (!\freq_divider|counter\(17) & !\freq_divider|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(16),
	datab => \freq_divider|counter\(14),
	datac => \freq_divider|counter\(17),
	datad => \freq_divider|counter\(15),
	combout => \freq_divider|Equal0~2_combout\);

-- Location: LCCOMB_X4_Y25_N12
\freq_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~36_combout\ = (\freq_divider|counter\(18) & (\freq_divider|Add0~35\ $ (GND))) # (!\freq_divider|counter\(18) & (!\freq_divider|Add0~35\ & VCC))
-- \freq_divider|Add0~37\ = CARRY((\freq_divider|counter\(18) & !\freq_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(18),
	datad => VCC,
	cin => \freq_divider|Add0~35\,
	combout => \freq_divider|Add0~36_combout\,
	cout => \freq_divider|Add0~37\);

-- Location: LCCOMB_X3_Y25_N30
\freq_divider|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~6_combout\ = (\freq_divider|Add0~36_combout\ & !\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Add0~36_combout\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|counter~6_combout\);

-- Location: FF_X3_Y25_N31
\freq_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(18));

-- Location: LCCOMB_X4_Y25_N14
\freq_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~38_combout\ = (\freq_divider|counter\(19) & (!\freq_divider|Add0~37\)) # (!\freq_divider|counter\(19) & ((\freq_divider|Add0~37\) # (GND)))
-- \freq_divider|Add0~39\ = CARRY((!\freq_divider|Add0~37\) # (!\freq_divider|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(19),
	datad => VCC,
	cin => \freq_divider|Add0~37\,
	combout => \freq_divider|Add0~38_combout\,
	cout => \freq_divider|Add0~39\);

-- Location: LCCOMB_X3_Y25_N18
\freq_divider|counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~5_combout\ = (\freq_divider|Add0~38_combout\ & !\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Add0~38_combout\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|counter~5_combout\);

-- Location: FF_X3_Y25_N19
\freq_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(19));

-- Location: LCCOMB_X4_Y25_N18
\freq_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~42_combout\ = (\freq_divider|counter\(21) & (!\freq_divider|Add0~41\)) # (!\freq_divider|counter\(21) & ((\freq_divider|Add0~41\) # (GND)))
-- \freq_divider|Add0~43\ = CARRY((!\freq_divider|Add0~41\) # (!\freq_divider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|counter\(21),
	datad => VCC,
	cin => \freq_divider|Add0~41\,
	combout => \freq_divider|Add0~42_combout\,
	cout => \freq_divider|Add0~43\);

-- Location: LCCOMB_X4_Y25_N28
\freq_divider|counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~3_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~42_combout\,
	combout => \freq_divider|counter~3_combout\);

-- Location: FF_X4_Y25_N29
\freq_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(21));

-- Location: LCCOMB_X4_Y25_N20
\freq_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Add0~44_combout\ = (\freq_divider|counter\(22) & (\freq_divider|Add0~43\ $ (GND))) # (!\freq_divider|counter\(22) & (!\freq_divider|Add0~43\ & VCC))
-- \freq_divider|Add0~45\ = CARRY((\freq_divider|counter\(22) & !\freq_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(22),
	datad => VCC,
	cin => \freq_divider|Add0~43\,
	combout => \freq_divider|Add0~44_combout\,
	cout => \freq_divider|Add0~45\);

-- Location: FF_X4_Y25_N23
\freq_divider|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|Add0~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(23));

-- Location: LCCOMB_X4_Y25_N26
\freq_divider|counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~1_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freq_divider|Equal0~7_combout\,
	datad => \freq_divider|Add0~44_combout\,
	combout => \freq_divider|counter~1_combout\);

-- Location: FF_X4_Y25_N27
\freq_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(22));

-- Location: LCCOMB_X3_Y25_N8
\freq_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~0_combout\ = (\freq_divider|counter\(24) & (!\freq_divider|counter\(23) & (\freq_divider|counter\(22) & !\freq_divider|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(24),
	datab => \freq_divider|counter\(23),
	datac => \freq_divider|counter\(22),
	datad => \freq_divider|counter\(0),
	combout => \freq_divider|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y26_N6
\freq_divider|counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|counter~11_combout\ = (!\freq_divider|Equal0~7_combout\ & \freq_divider|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|Equal0~7_combout\,
	datac => \freq_divider|Add0~22_combout\,
	combout => \freq_divider|counter~11_combout\);

-- Location: FF_X4_Y26_N7
\freq_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|counter~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|counter\(11));

-- Location: LCCOMB_X3_Y25_N6
\freq_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~3_combout\ = (\freq_divider|counter\(13) & (\freq_divider|counter\(12) & (!\freq_divider|counter\(10) & \freq_divider|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(13),
	datab => \freq_divider|counter\(12),
	datac => \freq_divider|counter\(10),
	datad => \freq_divider|counter\(11),
	combout => \freq_divider|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y25_N20
\freq_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~4_combout\ = (\freq_divider|Equal0~1_combout\ & (\freq_divider|Equal0~2_combout\ & (\freq_divider|Equal0~0_combout\ & \freq_divider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|Equal0~1_combout\,
	datab => \freq_divider|Equal0~2_combout\,
	datac => \freq_divider|Equal0~0_combout\,
	datad => \freq_divider|Equal0~3_combout\,
	combout => \freq_divider|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y25_N0
\freq_divider|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|Equal0~7_combout\ = (!\freq_divider|counter\(1) & (\freq_divider|Equal0~6_combout\ & (\freq_divider|Equal0~5_combout\ & \freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|counter\(1),
	datab => \freq_divider|Equal0~6_combout\,
	datac => \freq_divider|Equal0~5_combout\,
	datad => \freq_divider|Equal0~4_combout\,
	combout => \freq_divider|Equal0~7_combout\);

-- Location: LCCOMB_X3_Y25_N12
\freq_divider|state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|state~0_combout\ = \freq_divider|state~q\ $ (\freq_divider|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_divider|state~q\,
	datad => \freq_divider|Equal0~7_combout\,
	combout => \freq_divider|state~0_combout\);

-- Location: LCCOMB_X3_Y25_N4
\freq_divider|state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \freq_divider|state~feeder_combout\ = \freq_divider|state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_divider|state~0_combout\,
	combout => \freq_divider|state~feeder_combout\);

-- Location: FF_X3_Y25_N5
\freq_divider|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \freq_divider|state~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_divider|state~q\);

-- Location: CLKCTRL_G0
\freq_divider|state~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_divider|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_divider|state~clkctrl_outclk\);

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

-- Location: LCCOMB_X1_Y26_N16
\next_state.hold_disarm~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.hold_disarm~0_combout\ = (\pwd~input_o\ & (!\prev_state.hold_arm~q\ & \prev_state.disarmed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datac => \prev_state.hold_arm~q\,
	datad => \prev_state.disarmed~q\,
	combout => \next_state.hold_disarm~0_combout\);

-- Location: FF_X1_Y26_N17
\prev_state.hold_disarm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \next_state.hold_disarm~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.hold_disarm~q\);

-- Location: LCCOMB_X1_Y26_N30
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\pwd~input_o\ & (((\prev_state.disarmed~q\)) # (!\sensorA~input_o\))) # (!\pwd~input_o\ & (((\prev_state.disarmed~q\ & !\prev_state.hold_disarm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \sensorA~input_o\,
	datac => \prev_state.disarmed~q\,
	datad => \prev_state.hold_disarm~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y26_N31
\prev_state.disarmed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.disarmed~q\);

-- Location: LCCOMB_X1_Y26_N20
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\pwd~input_o\ & (!\sensorA~input_o\ & ((\prev_state.hold_arm~q\) # (!\prev_state.disarmed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \sensorA~input_o\,
	datac => \prev_state.hold_arm~q\,
	datad => \prev_state.disarmed~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X1_Y26_N21
\prev_state.hold_arm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.hold_arm~q\);

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

-- Location: LCCOMB_X2_Y26_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (t(3) & (\prev_state.wait_out~q\ & ((t(1)) # (t(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(1),
	datab => t(3),
	datac => t(2),
	datad => \prev_state.wait_out~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y26_N4
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector2~2_combout\ & ((\Selector3~0_combout\) # ((!\sensorB~input_o\ & \prev_state.armed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \sensorB~input_o\,
	datac => \prev_state.armed~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X1_Y26_N5
\prev_state.armed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.armed~q\);

-- Location: LCCOMB_X2_Y26_N14
\t[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[0]~7_combout\ = (!\t[3]~0_combout\ & (!t(0) & !\WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \t[3]~0_combout\,
	datac => t(0),
	datad => \WideOr0~combout\,
	combout => \t[0]~7_combout\);

-- Location: FF_X2_Y26_N15
\t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \t[0]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(0));

-- Location: LCCOMB_X2_Y26_N28
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (t(3)) # ((t(2) & ((t(0)) # (t(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(2),
	datab => t(0),
	datac => t(1),
	datad => t(3),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\pwd~input_o\ & (!\sensorA~input_o\ & (\prev_state.wait_in~q\ & !\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \sensorA~input_o\,
	datac => \prev_state.wait_in~q\,
	datad => \process_2~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\Selector2~2_combout\ & (\prev_state.armed~q\ & \sensorB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~2_combout\,
	datab => \prev_state.armed~q\,
	datac => \sensorB~input_o\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X1_Y26_N23
\prev_state.wait_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	asdata => \Selector4~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.wait_in~q\);

-- Location: LCCOMB_X1_Y26_N12
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\prev_state.off~q\ & ((\prev_state.armed~q\ $ (\Selector3~1_combout\)) # (!\Selector5~2_combout\))) # (!\prev_state.off~q\ & ((\Selector5~2_combout\) # (\prev_state.armed~q\ $ (\Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.off~q\,
	datab => \prev_state.armed~q\,
	datac => \Selector3~1_combout\,
	datad => \Selector5~2_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y26_N2
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~2_combout\) # ((\WideOr0~0_combout\) # (\prev_state.wait_in~q\ $ (\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => \prev_state.wait_in~q\,
	datac => \Selector4~1_combout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X2_Y26_N4
\t[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[1]~6_combout\ = (!\WideOr0~combout\ & (t(0) $ (t(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datac => t(1),
	datad => \WideOr0~combout\,
	combout => \t[1]~6_combout\);

-- Location: FF_X2_Y26_N5
\t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \t[1]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(1));

-- Location: LCCOMB_X2_Y26_N12
\t[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[3]~3_combout\ = (!\WideOr0~combout\ & ((t(0)) # (!\t[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \t[3]~0_combout\,
	datad => \WideOr0~combout\,
	combout => \t[3]~3_combout\);

-- Location: LCCOMB_X2_Y26_N22
\t[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[2]~5_combout\ = (\t[3]~3_combout\ & (t(2) $ (((t(0) & t(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => t(1),
	datac => t(2),
	datad => \t[3]~3_combout\,
	combout => \t[2]~5_combout\);

-- Location: FF_X2_Y26_N23
\t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \t[2]~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(2));

-- Location: LCCOMB_X2_Y26_N18
\t[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[3]~0_combout\ = (!t(2) & (t(3) & t(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => t(2),
	datac => t(3),
	datad => t(1),
	combout => \t[3]~0_combout\);

-- Location: LCCOMB_X2_Y26_N8
\t[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[3]~1_combout\ = (!t(0) & (t(3) & (\prev_state.wait_in~q\ $ (!\Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.wait_in~q\,
	datac => \Selector4~1_combout\,
	datad => t(3),
	combout => \t[3]~1_combout\);

-- Location: LCCOMB_X2_Y26_N26
\t[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[3]~2_combout\ = (!\WideOr0~2_combout\ & (\t[3]~0_combout\ & (\t[3]~1_combout\ & !\WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => \t[3]~0_combout\,
	datac => \t[3]~1_combout\,
	datad => \WideOr0~0_combout\,
	combout => \t[3]~2_combout\);

-- Location: LCCOMB_X2_Y26_N24
\t[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[3]~4_combout\ = (\t[3]~2_combout\) # ((\Add0~0_combout\ & \t[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \t[3]~2_combout\,
	datad => \t[3]~3_combout\,
	combout => \t[3]~4_combout\);

-- Location: FF_X2_Y26_N25
\t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \t[3]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(3));

-- Location: LCCOMB_X2_Y26_N6
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\prev_state.wait_out~q\ & (((!t(1) & !t(2))) # (!t(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(1),
	datab => t(3),
	datac => t(2),
	datad => \prev_state.wait_out~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y26_N2
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\pwd~input_o\ & (!\sensorA~input_o\ & ((\prev_state.hold_arm~q\) # (\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \sensorA~input_o\,
	datac => \prev_state.hold_arm~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y26_N3
\prev_state.wait_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.wait_out~q\);

-- Location: LCCOMB_X1_Y26_N18
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\prev_state.hold_arm~q\) # ((!\pwd~input_o\ & ((\prev_state.wait_out~q\) # (\prev_state.armed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \prev_state.wait_out~q\,
	datac => \prev_state.hold_arm~q\,
	datad => \prev_state.armed~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X1_Y26_N0
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\prev_state.off~q\) # ((\prev_state.wait_in~q\ & ((\sensorA~input_o\) # (\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.wait_in~q\,
	datab => \sensorA~input_o\,
	datac => \prev_state.off~q\,
	datad => \process_2~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X1_Y26_N10
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\pwd~input_o\ & (\sensorA~input_o\ & (\Selector5~0_combout\))) # (!\pwd~input_o\ & ((\Selector5~1_combout\) # ((\sensorA~input_o\ & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwd~input_o\,
	datab => \sensorA~input_o\,
	datac => \Selector5~0_combout\,
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X1_Y26_N8
\prev_state.off~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_state.off~feeder_combout\ = \Selector5~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector5~2_combout\,
	combout => \prev_state.off~feeder_combout\);

-- Location: FF_X1_Y26_N9
\prev_state.off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freq_divider|state~clkctrl_outclk\,
	d => \prev_state.off~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.off~q\);

ww_siren <= \siren~output_o\;

ww_state_disarmed <= \state_disarmed~output_o\;

ww_state_hold_arm <= \state_hold_arm~output_o\;

ww_state_wait_out <= \state_wait_out~output_o\;

ww_state_armed <= \state_armed~output_o\;

ww_state_wait_in <= \state_wait_in~output_o\;

ww_state_off <= \state_off~output_o\;

ww_state_hold_disarm <= \state_hold_disarm~output_o\;
END structure;


