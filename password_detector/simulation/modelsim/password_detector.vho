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

-- DATE "08/30/2016 11:35:44"

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

ENTITY 	password_detector IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	key : IN std_logic_vector(3 DOWNTO 0);
	led1 : OUT std_logic;
	led2 : OUT std_logic
	);
END password_detector;

-- Design Ports Information
-- led1	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF password_detector IS
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
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lr_freq_divider|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lr_freq_divider|Add0~4_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~14_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~18_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~36_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~41\ : std_logic;
SIGNAL \lr_freq_divider|Add0~42_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~43\ : std_logic;
SIGNAL \lr_freq_divider|Add0~44_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~45\ : std_logic;
SIGNAL \lr_freq_divider|Add0~46_combout\ : std_logic;
SIGNAL \prev_state.key2~q\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~7_combout\ : std_logic;
SIGNAL \next_state~3_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~15_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~16_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \lr_freq_divider|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \lr_freq_divider|Add0~1\ : std_logic;
SIGNAL \lr_freq_divider|Add0~3\ : std_logic;
SIGNAL \lr_freq_divider|Add0~5\ : std_logic;
SIGNAL \lr_freq_divider|Add0~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~7\ : std_logic;
SIGNAL \lr_freq_divider|Add0~8_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~2_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~9\ : std_logic;
SIGNAL \lr_freq_divider|Add0~10_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~14_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~11\ : std_logic;
SIGNAL \lr_freq_divider|Add0~12_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~13\ : std_logic;
SIGNAL \lr_freq_divider|Add0~15\ : std_logic;
SIGNAL \lr_freq_divider|Add0~16_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~5_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~17\ : std_logic;
SIGNAL \lr_freq_divider|Add0~19\ : std_logic;
SIGNAL \lr_freq_divider|Add0~20_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~13_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~21\ : std_logic;
SIGNAL \lr_freq_divider|Add0~23\ : std_logic;
SIGNAL \lr_freq_divider|Add0~25\ : std_logic;
SIGNAL \lr_freq_divider|Add0~27\ : std_logic;
SIGNAL \lr_freq_divider|Add0~28_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~29\ : std_logic;
SIGNAL \lr_freq_divider|Add0~30_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~9_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~31\ : std_logic;
SIGNAL \lr_freq_divider|Add0~32_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~33\ : std_logic;
SIGNAL \lr_freq_divider|Add0~34_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~8_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~35\ : std_logic;
SIGNAL \lr_freq_divider|Add0~37\ : std_logic;
SIGNAL \lr_freq_divider|Add0~39\ : std_logic;
SIGNAL \lr_freq_divider|Add0~40_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~17_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~38_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~1_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~26_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~10_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~2_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~22_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~12_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~24_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~11_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~3_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~4_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~0_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~feeder_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~q\ : std_logic;
SIGNAL \lr_freq_divider|state~clkctrl_outclk\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \prev_state.wait2~q\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \prev_state.key1~feeder_combout\ : std_logic;
SIGNAL \prev_state.key1~q\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \next_state~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \prev_state.error1~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \process_2~5_combout\ : std_logic;
SIGNAL \process_2~4_combout\ : std_logic;
SIGNAL \Selector10~5_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \prev_state.error2~q\ : std_logic;
SIGNAL \process_2~6_combout\ : std_logic;
SIGNAL \prev_state.wait1~feeder_combout\ : std_logic;
SIGNAL \prev_state.wait1~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \prev_state.error3~q\ : std_logic;
SIGNAL \prev_state.error4~q\ : std_logic;
SIGNAL \Selector10~4_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \t[1]~2_combout\ : std_logic;
SIGNAL \t[0]~3_combout\ : std_logic;
SIGNAL \process_2~7_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \prev_state.unlocked~q\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \prev_state.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \prev_state.ready~feeder_combout\ : std_logic;
SIGNAL \prev_state.ready~q\ : std_logic;
SIGNAL t : std_logic_vector(1 DOWNTO 0);
SIGNAL \lr_freq_divider|counter\ : std_logic_vector(23 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_key <= key;
led1 <= ww_led1;
led2 <= ww_led2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\lr_freq_divider|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lr_freq_divider|state~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

-- Location: LCCOMB_X22_Y5_N12
\lr_freq_divider|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~4_combout\ = (\lr_freq_divider|counter\(2) & (\lr_freq_divider|Add0~3\ $ (GND))) # (!\lr_freq_divider|counter\(2) & (!\lr_freq_divider|Add0~3\ & VCC))
-- \lr_freq_divider|Add0~5\ = CARRY((\lr_freq_divider|counter\(2) & !\lr_freq_divider|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(2),
	datad => VCC,
	cin => \lr_freq_divider|Add0~3\,
	combout => \lr_freq_divider|Add0~4_combout\,
	cout => \lr_freq_divider|Add0~5\);

-- Location: LCCOMB_X22_Y5_N22
\lr_freq_divider|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~14_combout\ = (\lr_freq_divider|counter\(7) & (!\lr_freq_divider|Add0~13\)) # (!\lr_freq_divider|counter\(7) & ((\lr_freq_divider|Add0~13\) # (GND)))
-- \lr_freq_divider|Add0~15\ = CARRY((!\lr_freq_divider|Add0~13\) # (!\lr_freq_divider|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(7),
	datad => VCC,
	cin => \lr_freq_divider|Add0~13\,
	combout => \lr_freq_divider|Add0~14_combout\,
	cout => \lr_freq_divider|Add0~15\);

-- Location: LCCOMB_X22_Y5_N26
\lr_freq_divider|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~18_combout\ = (\lr_freq_divider|counter\(9) & (!\lr_freq_divider|Add0~17\)) # (!\lr_freq_divider|counter\(9) & ((\lr_freq_divider|Add0~17\) # (GND)))
-- \lr_freq_divider|Add0~19\ = CARRY((!\lr_freq_divider|Add0~17\) # (!\lr_freq_divider|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(9),
	datad => VCC,
	cin => \lr_freq_divider|Add0~17\,
	combout => \lr_freq_divider|Add0~18_combout\,
	cout => \lr_freq_divider|Add0~19\);

-- Location: LCCOMB_X22_Y4_N12
\lr_freq_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~36_combout\ = (\lr_freq_divider|counter\(18) & (\lr_freq_divider|Add0~35\ $ (GND))) # (!\lr_freq_divider|counter\(18) & (!\lr_freq_divider|Add0~35\ & VCC))
-- \lr_freq_divider|Add0~37\ = CARRY((\lr_freq_divider|counter\(18) & !\lr_freq_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(18),
	datad => VCC,
	cin => \lr_freq_divider|Add0~35\,
	combout => \lr_freq_divider|Add0~36_combout\,
	cout => \lr_freq_divider|Add0~37\);

-- Location: LCCOMB_X22_Y4_N16
\lr_freq_divider|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~40_combout\ = (\lr_freq_divider|counter\(20) & (\lr_freq_divider|Add0~39\ $ (GND))) # (!\lr_freq_divider|counter\(20) & (!\lr_freq_divider|Add0~39\ & VCC))
-- \lr_freq_divider|Add0~41\ = CARRY((\lr_freq_divider|counter\(20) & !\lr_freq_divider|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(20),
	datad => VCC,
	cin => \lr_freq_divider|Add0~39\,
	combout => \lr_freq_divider|Add0~40_combout\,
	cout => \lr_freq_divider|Add0~41\);

-- Location: LCCOMB_X22_Y4_N18
\lr_freq_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~42_combout\ = (\lr_freq_divider|counter\(21) & (!\lr_freq_divider|Add0~41\)) # (!\lr_freq_divider|counter\(21) & ((\lr_freq_divider|Add0~41\) # (GND)))
-- \lr_freq_divider|Add0~43\ = CARRY((!\lr_freq_divider|Add0~41\) # (!\lr_freq_divider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(21),
	datad => VCC,
	cin => \lr_freq_divider|Add0~41\,
	combout => \lr_freq_divider|Add0~42_combout\,
	cout => \lr_freq_divider|Add0~43\);

-- Location: LCCOMB_X22_Y4_N20
\lr_freq_divider|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~44_combout\ = (\lr_freq_divider|counter\(22) & (\lr_freq_divider|Add0~43\ $ (GND))) # (!\lr_freq_divider|counter\(22) & (!\lr_freq_divider|Add0~43\ & VCC))
-- \lr_freq_divider|Add0~45\ = CARRY((\lr_freq_divider|counter\(22) & !\lr_freq_divider|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(22),
	datad => VCC,
	cin => \lr_freq_divider|Add0~43\,
	combout => \lr_freq_divider|Add0~44_combout\,
	cout => \lr_freq_divider|Add0~45\);

-- Location: LCCOMB_X22_Y4_N22
\lr_freq_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~46_combout\ = \lr_freq_divider|Add0~45\ $ (\lr_freq_divider|counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \lr_freq_divider|counter\(23),
	cin => \lr_freq_divider|Add0~45\,
	combout => \lr_freq_divider|Add0~46_combout\);

-- Location: FF_X23_Y19_N15
\prev_state.key2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.key2~q\);

-- Location: FF_X21_Y4_N15
\lr_freq_divider|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~15_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(23));

-- Location: FF_X22_Y4_N29
\lr_freq_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(21));

-- Location: FF_X22_Y4_N21
\lr_freq_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~44_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(22));

-- Location: LCCOMB_X21_Y4_N20
\lr_freq_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~0_combout\ = (!\lr_freq_divider|counter\(22) & (\lr_freq_divider|counter\(23) & (\lr_freq_divider|counter\(21) & \lr_freq_divider|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(22),
	datab => \lr_freq_divider|counter\(23),
	datac => \lr_freq_divider|counter\(21),
	datad => \lr_freq_divider|counter\(0),
	combout => \lr_freq_divider|Equal0~0_combout\);

-- Location: FF_X21_Y4_N9
\lr_freq_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~7_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(18));

-- Location: FF_X22_Y5_N27
\lr_freq_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~18_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(9));

-- Location: FF_X22_Y5_N23
\lr_freq_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(7));

-- Location: FF_X22_Y5_N13
\lr_freq_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(2));

-- Location: LCCOMB_X23_Y19_N2
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\prev_state.idle~q\ & ((\prev_state.error3~q\ $ (\Selector9~2_combout\)) # (!\Selector0~6_combout\))) # (!\prev_state.idle~q\ & ((\Selector0~6_combout\) # (\prev_state.error3~q\ $ (\Selector9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.idle~q\,
	datab => \prev_state.error3~q\,
	datac => \Selector0~6_combout\,
	datad => \Selector9~2_combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y19_N14
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\process_2~6_combout\ & ((\prev_state.key2~q\) # (\prev_state.wait1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~6_combout\,
	datac => \prev_state.key2~q\,
	datad => \prev_state.wait1~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\prev_state.error2~q\ & ((\prev_state.key2~q\ $ (\Selector4~0_combout\)) # (!\Selector8~0_combout\))) # (!\prev_state.error2~q\ & ((\Selector8~0_combout\) # (\prev_state.key2~q\ $ (\Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.error2~q\,
	datab => \prev_state.key2~q\,
	datac => \Selector4~0_combout\,
	datad => \Selector8~0_combout\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X21_Y19_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\key[0]~input_o\ & (!\key[1]~input_o\ & (\key[3]~input_o\ & !\key[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[1]~input_o\,
	datac => \key[3]~input_o\,
	datad => \key[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X21_Y4_N8
\lr_freq_divider|counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~7_combout\ = (\lr_freq_divider|Add0~36_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Add0~36_combout\,
	datad => \lr_freq_divider|Equal0~6_combout\,
	combout => \lr_freq_divider|counter~7_combout\);

-- Location: LCCOMB_X22_Y19_N22
\next_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~3_combout\ = (((!\key[2]~input_o\) # (!\key[1]~input_o\)) # (!\key[3]~input_o\)) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[3]~input_o\,
	datac => \key[1]~input_o\,
	datad => \key[2]~input_o\,
	combout => \next_state~3_combout\);

-- Location: LCCOMB_X21_Y4_N14
\lr_freq_divider|counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~15_combout\ = (\lr_freq_divider|Add0~46_combout\ & (((!\lr_freq_divider|Equal0~5_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~5_combout\,
	datad => \lr_freq_divider|Add0~46_combout\,
	combout => \lr_freq_divider|counter~15_combout\);

-- Location: LCCOMB_X22_Y4_N28
\lr_freq_divider|counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~16_combout\ = (\lr_freq_divider|Add0~42_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~42_combout\,
	combout => \lr_freq_divider|counter~16_combout\);

-- Location: IOIBUF_X21_Y29_N1
\key[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

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

-- Location: IOOBUF_X21_Y29_N16
\led1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.ready~q\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \prev_state.unlocked~q\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: LCCOMB_X22_Y5_N8
\lr_freq_divider|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~0_combout\ = \lr_freq_divider|counter\(0) $ (VCC)
-- \lr_freq_divider|Add0~1\ = CARRY(\lr_freq_divider|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(0),
	datad => VCC,
	combout => \lr_freq_divider|Add0~0_combout\,
	cout => \lr_freq_divider|Add0~1\);

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

-- Location: FF_X22_Y5_N9
\lr_freq_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(0));

-- Location: LCCOMB_X22_Y5_N10
\lr_freq_divider|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~2_combout\ = (\lr_freq_divider|counter\(1) & (!\lr_freq_divider|Add0~1\)) # (!\lr_freq_divider|counter\(1) & ((\lr_freq_divider|Add0~1\) # (GND)))
-- \lr_freq_divider|Add0~3\ = CARRY((!\lr_freq_divider|Add0~1\) # (!\lr_freq_divider|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(1),
	datad => VCC,
	cin => \lr_freq_divider|Add0~1\,
	combout => \lr_freq_divider|Add0~2_combout\,
	cout => \lr_freq_divider|Add0~3\);

-- Location: LCCOMB_X22_Y5_N14
\lr_freq_divider|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~6_combout\ = (\lr_freq_divider|counter\(3) & (!\lr_freq_divider|Add0~5\)) # (!\lr_freq_divider|counter\(3) & ((\lr_freq_divider|Add0~5\) # (GND)))
-- \lr_freq_divider|Add0~7\ = CARRY((!\lr_freq_divider|Add0~5\) # (!\lr_freq_divider|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(3),
	datad => VCC,
	cin => \lr_freq_divider|Add0~5\,
	combout => \lr_freq_divider|Add0~6_combout\,
	cout => \lr_freq_divider|Add0~7\);

-- Location: FF_X22_Y5_N15
\lr_freq_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(3));

-- Location: LCCOMB_X22_Y5_N16
\lr_freq_divider|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~8_combout\ = (\lr_freq_divider|counter\(4) & (\lr_freq_divider|Add0~7\ $ (GND))) # (!\lr_freq_divider|counter\(4) & (!\lr_freq_divider|Add0~7\ & VCC))
-- \lr_freq_divider|Add0~9\ = CARRY((\lr_freq_divider|counter\(4) & !\lr_freq_divider|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(4),
	datad => VCC,
	cin => \lr_freq_divider|Add0~7\,
	combout => \lr_freq_divider|Add0~8_combout\,
	cout => \lr_freq_divider|Add0~9\);

-- Location: FF_X22_Y5_N17
\lr_freq_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(4));

-- Location: FF_X22_Y5_N11
\lr_freq_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(1));

-- Location: LCCOMB_X22_Y5_N6
\lr_freq_divider|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~6_combout\ = (\lr_freq_divider|counter\(2) & (\lr_freq_divider|counter\(4) & (\lr_freq_divider|counter\(1) & \lr_freq_divider|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(2),
	datab => \lr_freq_divider|counter\(4),
	datac => \lr_freq_divider|counter\(1),
	datad => \lr_freq_divider|counter\(3),
	combout => \lr_freq_divider|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y5_N18
\lr_freq_divider|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~10_combout\ = (\lr_freq_divider|counter\(5) & (!\lr_freq_divider|Add0~9\)) # (!\lr_freq_divider|counter\(5) & ((\lr_freq_divider|Add0~9\) # (GND)))
-- \lr_freq_divider|Add0~11\ = CARRY((!\lr_freq_divider|Add0~9\) # (!\lr_freq_divider|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(5),
	datad => VCC,
	cin => \lr_freq_divider|Add0~9\,
	combout => \lr_freq_divider|Add0~10_combout\,
	cout => \lr_freq_divider|Add0~11\);

-- Location: LCCOMB_X22_Y5_N2
\lr_freq_divider|counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~14_combout\ = (\lr_freq_divider|Add0~10_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~4_combout\,
	datad => \lr_freq_divider|Add0~10_combout\,
	combout => \lr_freq_divider|counter~14_combout\);

-- Location: FF_X22_Y5_N3
\lr_freq_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~14_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(5));

-- Location: LCCOMB_X22_Y5_N20
\lr_freq_divider|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~12_combout\ = (\lr_freq_divider|counter\(6) & (\lr_freq_divider|Add0~11\ $ (GND))) # (!\lr_freq_divider|counter\(6) & (!\lr_freq_divider|Add0~11\ & VCC))
-- \lr_freq_divider|Add0~13\ = CARRY((\lr_freq_divider|counter\(6) & !\lr_freq_divider|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(6),
	datad => VCC,
	cin => \lr_freq_divider|Add0~11\,
	combout => \lr_freq_divider|Add0~12_combout\,
	cout => \lr_freq_divider|Add0~13\);

-- Location: FF_X22_Y5_N21
\lr_freq_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(6));

-- Location: LCCOMB_X22_Y5_N24
\lr_freq_divider|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~16_combout\ = (\lr_freq_divider|counter\(8) & (\lr_freq_divider|Add0~15\ $ (GND))) # (!\lr_freq_divider|counter\(8) & (!\lr_freq_divider|Add0~15\ & VCC))
-- \lr_freq_divider|Add0~17\ = CARRY((\lr_freq_divider|counter\(8) & !\lr_freq_divider|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(8),
	datad => VCC,
	cin => \lr_freq_divider|Add0~15\,
	combout => \lr_freq_divider|Add0~16_combout\,
	cout => \lr_freq_divider|Add0~17\);

-- Location: FF_X22_Y5_N25
\lr_freq_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~16_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(8));

-- Location: LCCOMB_X22_Y5_N4
\lr_freq_divider|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~5_combout\ = (!\lr_freq_divider|counter\(7) & (!\lr_freq_divider|counter\(6) & (!\lr_freq_divider|counter\(5) & !\lr_freq_divider|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(7),
	datab => \lr_freq_divider|counter\(6),
	datac => \lr_freq_divider|counter\(5),
	datad => \lr_freq_divider|counter\(8),
	combout => \lr_freq_divider|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y5_N28
\lr_freq_divider|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~20_combout\ = (\lr_freq_divider|counter\(10) & (\lr_freq_divider|Add0~19\ $ (GND))) # (!\lr_freq_divider|counter\(10) & (!\lr_freq_divider|Add0~19\ & VCC))
-- \lr_freq_divider|Add0~21\ = CARRY((\lr_freq_divider|counter\(10) & !\lr_freq_divider|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(10),
	datad => VCC,
	cin => \lr_freq_divider|Add0~19\,
	combout => \lr_freq_divider|Add0~20_combout\,
	cout => \lr_freq_divider|Add0~21\);

-- Location: LCCOMB_X22_Y5_N0
\lr_freq_divider|counter~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~13_combout\ = (\lr_freq_divider|Add0~20_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~4_combout\,
	datad => \lr_freq_divider|Add0~20_combout\,
	combout => \lr_freq_divider|counter~13_combout\);

-- Location: FF_X22_Y5_N1
\lr_freq_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~13_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(10));

-- Location: LCCOMB_X22_Y5_N30
\lr_freq_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~22_combout\ = (\lr_freq_divider|counter\(11) & (!\lr_freq_divider|Add0~21\)) # (!\lr_freq_divider|counter\(11) & ((\lr_freq_divider|Add0~21\) # (GND)))
-- \lr_freq_divider|Add0~23\ = CARRY((!\lr_freq_divider|Add0~21\) # (!\lr_freq_divider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(11),
	datad => VCC,
	cin => \lr_freq_divider|Add0~21\,
	combout => \lr_freq_divider|Add0~22_combout\,
	cout => \lr_freq_divider|Add0~23\);

-- Location: LCCOMB_X22_Y4_N0
\lr_freq_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~24_combout\ = (\lr_freq_divider|counter\(12) & (\lr_freq_divider|Add0~23\ $ (GND))) # (!\lr_freq_divider|counter\(12) & (!\lr_freq_divider|Add0~23\ & VCC))
-- \lr_freq_divider|Add0~25\ = CARRY((\lr_freq_divider|counter\(12) & !\lr_freq_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(12),
	datad => VCC,
	cin => \lr_freq_divider|Add0~23\,
	combout => \lr_freq_divider|Add0~24_combout\,
	cout => \lr_freq_divider|Add0~25\);

-- Location: LCCOMB_X22_Y4_N2
\lr_freq_divider|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~26_combout\ = (\lr_freq_divider|counter\(13) & (!\lr_freq_divider|Add0~25\)) # (!\lr_freq_divider|counter\(13) & ((\lr_freq_divider|Add0~25\) # (GND)))
-- \lr_freq_divider|Add0~27\ = CARRY((!\lr_freq_divider|Add0~25\) # (!\lr_freq_divider|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(13),
	datad => VCC,
	cin => \lr_freq_divider|Add0~25\,
	combout => \lr_freq_divider|Add0~26_combout\,
	cout => \lr_freq_divider|Add0~27\);

-- Location: LCCOMB_X22_Y4_N4
\lr_freq_divider|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~28_combout\ = (\lr_freq_divider|counter\(14) & (\lr_freq_divider|Add0~27\ $ (GND))) # (!\lr_freq_divider|counter\(14) & (!\lr_freq_divider|Add0~27\ & VCC))
-- \lr_freq_divider|Add0~29\ = CARRY((\lr_freq_divider|counter\(14) & !\lr_freq_divider|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(14),
	datad => VCC,
	cin => \lr_freq_divider|Add0~27\,
	combout => \lr_freq_divider|Add0~28_combout\,
	cout => \lr_freq_divider|Add0~29\);

-- Location: FF_X22_Y4_N5
\lr_freq_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~28_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(14));

-- Location: LCCOMB_X22_Y4_N6
\lr_freq_divider|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~30_combout\ = (\lr_freq_divider|counter\(15) & (!\lr_freq_divider|Add0~29\)) # (!\lr_freq_divider|counter\(15) & ((\lr_freq_divider|Add0~29\) # (GND)))
-- \lr_freq_divider|Add0~31\ = CARRY((!\lr_freq_divider|Add0~29\) # (!\lr_freq_divider|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(15),
	datad => VCC,
	cin => \lr_freq_divider|Add0~29\,
	combout => \lr_freq_divider|Add0~30_combout\,
	cout => \lr_freq_divider|Add0~31\);

-- Location: LCCOMB_X22_Y4_N24
\lr_freq_divider|counter~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~9_combout\ = (\lr_freq_divider|Add0~30_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~30_combout\,
	combout => \lr_freq_divider|counter~9_combout\);

-- Location: FF_X22_Y4_N25
\lr_freq_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~9_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(15));

-- Location: LCCOMB_X22_Y4_N8
\lr_freq_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~32_combout\ = (\lr_freq_divider|counter\(16) & (\lr_freq_divider|Add0~31\ $ (GND))) # (!\lr_freq_divider|counter\(16) & (!\lr_freq_divider|Add0~31\ & VCC))
-- \lr_freq_divider|Add0~33\ = CARRY((\lr_freq_divider|counter\(16) & !\lr_freq_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(16),
	datad => VCC,
	cin => \lr_freq_divider|Add0~31\,
	combout => \lr_freq_divider|Add0~32_combout\,
	cout => \lr_freq_divider|Add0~33\);

-- Location: FF_X22_Y4_N9
\lr_freq_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~32_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(16));

-- Location: LCCOMB_X22_Y4_N10
\lr_freq_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~34_combout\ = (\lr_freq_divider|counter\(17) & (!\lr_freq_divider|Add0~33\)) # (!\lr_freq_divider|counter\(17) & ((\lr_freq_divider|Add0~33\) # (GND)))
-- \lr_freq_divider|Add0~35\ = CARRY((!\lr_freq_divider|Add0~33\) # (!\lr_freq_divider|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(17),
	datad => VCC,
	cin => \lr_freq_divider|Add0~33\,
	combout => \lr_freq_divider|Add0~34_combout\,
	cout => \lr_freq_divider|Add0~35\);

-- Location: LCCOMB_X21_Y4_N4
\lr_freq_divider|counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~8_combout\ = (\lr_freq_divider|Add0~34_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Add0~34_combout\,
	datad => \lr_freq_divider|Equal0~6_combout\,
	combout => \lr_freq_divider|counter~8_combout\);

-- Location: FF_X21_Y4_N5
\lr_freq_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~8_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(17));

-- Location: LCCOMB_X22_Y4_N14
\lr_freq_divider|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~38_combout\ = (\lr_freq_divider|counter\(19) & (!\lr_freq_divider|Add0~37\)) # (!\lr_freq_divider|counter\(19) & ((\lr_freq_divider|Add0~37\) # (GND)))
-- \lr_freq_divider|Add0~39\ = CARRY((!\lr_freq_divider|Add0~37\) # (!\lr_freq_divider|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(19),
	datad => VCC,
	cin => \lr_freq_divider|Add0~37\,
	combout => \lr_freq_divider|Add0~38_combout\,
	cout => \lr_freq_divider|Add0~39\);

-- Location: LCCOMB_X21_Y4_N28
\lr_freq_divider|counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~17_combout\ = (\lr_freq_divider|Add0~40_combout\ & (((!\lr_freq_divider|Equal0~5_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~5_combout\,
	datad => \lr_freq_divider|Add0~40_combout\,
	combout => \lr_freq_divider|counter~17_combout\);

-- Location: FF_X21_Y4_N29
\lr_freq_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~17_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(20));

-- Location: LCCOMB_X22_Y4_N26
\lr_freq_divider|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~6_combout\ = (\lr_freq_divider|Add0~38_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Add0~38_combout\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|counter~6_combout\);

-- Location: FF_X22_Y4_N27
\lr_freq_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(19));

-- Location: LCCOMB_X21_Y4_N18
\lr_freq_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~1_combout\ = (\lr_freq_divider|counter\(18) & (\lr_freq_divider|counter\(20) & (\lr_freq_divider|counter\(17) & \lr_freq_divider|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(18),
	datab => \lr_freq_divider|counter\(20),
	datac => \lr_freq_divider|counter\(17),
	datad => \lr_freq_divider|counter\(19),
	combout => \lr_freq_divider|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\lr_freq_divider|counter~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~10_combout\ = (\lr_freq_divider|Add0~26_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~26_combout\,
	combout => \lr_freq_divider|counter~10_combout\);

-- Location: FF_X22_Y4_N31
\lr_freq_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~10_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(13));

-- Location: LCCOMB_X21_Y4_N22
\lr_freq_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~2_combout\ = (!\lr_freq_divider|counter\(14) & (\lr_freq_divider|counter\(15) & (!\lr_freq_divider|counter\(16) & \lr_freq_divider|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(14),
	datab => \lr_freq_divider|counter\(15),
	datac => \lr_freq_divider|counter\(16),
	datad => \lr_freq_divider|counter\(13),
	combout => \lr_freq_divider|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y4_N0
\lr_freq_divider|counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~12_combout\ = (\lr_freq_divider|Add0~22_combout\ & (((!\lr_freq_divider|Equal0~5_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~5_combout\,
	datad => \lr_freq_divider|Add0~22_combout\,
	combout => \lr_freq_divider|counter~12_combout\);

-- Location: FF_X21_Y4_N1
\lr_freq_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~12_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(11));

-- Location: LCCOMB_X21_Y4_N26
\lr_freq_divider|counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~11_combout\ = (\lr_freq_divider|Add0~24_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Add0~24_combout\,
	datac => \lr_freq_divider|Equal0~5_combout\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|counter~11_combout\);

-- Location: FF_X21_Y4_N27
\lr_freq_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~11_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(12));

-- Location: LCCOMB_X21_Y4_N12
\lr_freq_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~3_combout\ = (!\lr_freq_divider|counter\(9) & (\lr_freq_divider|counter\(11) & (\lr_freq_divider|counter\(12) & \lr_freq_divider|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(9),
	datab => \lr_freq_divider|counter\(11),
	datac => \lr_freq_divider|counter\(12),
	datad => \lr_freq_divider|counter\(10),
	combout => \lr_freq_divider|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y4_N24
\lr_freq_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~4_combout\ = (\lr_freq_divider|Equal0~0_combout\ & (\lr_freq_divider|Equal0~1_combout\ & (\lr_freq_divider|Equal0~2_combout\ & \lr_freq_divider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~0_combout\,
	datab => \lr_freq_divider|Equal0~1_combout\,
	datac => \lr_freq_divider|Equal0~2_combout\,
	datad => \lr_freq_divider|Equal0~3_combout\,
	combout => \lr_freq_divider|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y4_N10
\lr_freq_divider|state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|state~0_combout\ = \lr_freq_divider|state~q\ $ (((\lr_freq_divider|Equal0~5_combout\ & (\lr_freq_divider|Equal0~6_combout\ & \lr_freq_divider|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~6_combout\,
	datac => \lr_freq_divider|state~q\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|state~0_combout\);

-- Location: LCCOMB_X21_Y4_N30
\lr_freq_divider|state~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|state~feeder_combout\ = \lr_freq_divider|state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|state~0_combout\,
	combout => \lr_freq_divider|state~feeder_combout\);

-- Location: FF_X21_Y4_N31
\lr_freq_divider|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|state~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|state~q\);

-- Location: CLKCTRL_G19
\lr_freq_divider|state~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \lr_freq_divider|state~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \lr_freq_divider|state~clkctrl_outclk\);

-- Location: IOIBUF_X21_Y29_N22
\key[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(3),
	o => \key[3]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\key[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N22
\key[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X22_Y19_N10
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\key[0]~input_o\ & (!\key[3]~input_o\ & (!\key[1]~input_o\ & !\key[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[3]~input_o\,
	datac => \key[1]~input_o\,
	datad => \key[2]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y19_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (t(0) & t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => t(0),
	datad => t(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal1~0_combout\ & (!\Equal0~0_combout\ & ((\prev_state.key2~q\) # (\prev_state.wait2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.key2~q\,
	datab => \Equal1~0_combout\,
	datac => \prev_state.wait2~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X23_Y19_N23
\prev_state.wait2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.wait2~q\);

-- Location: LCCOMB_X22_Y19_N16
\process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (!\key[0]~input_o\ & (!\key[3]~input_o\ & ((!t(1)) # (!t(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[3]~input_o\,
	datac => t(0),
	datad => t(1),
	combout => \process_2~2_combout\);

-- Location: LCCOMB_X22_Y19_N2
\process_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (!\key[2]~input_o\ & (\key[1]~input_o\ & \process_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[2]~input_o\,
	datac => \key[1]~input_o\,
	datad => \process_2~2_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X22_Y19_N14
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\prev_state.unlocked~q\ & (((\prev_state.wait2~q\ & \process_2~3_combout\)) # (!\Equal0~0_combout\))) # (!\prev_state.unlocked~q\ & (((\prev_state.wait2~q\ & \process_2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.unlocked~q\,
	datab => \Equal0~0_combout\,
	datac => \prev_state.wait2~q\,
	datad => \process_2~3_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X21_Y19_N16
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Equal2~0_combout\ & ((\prev_state.ready~q\) # ((\prev_state.key1~q\ & !\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \prev_state.key1~q\,
	datac => \prev_state.ready~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X21_Y19_N28
\prev_state.key1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_state.key1~feeder_combout\ = \Selector2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector2~1_combout\,
	combout => \prev_state.key1~feeder_combout\);

-- Location: FF_X21_Y19_N29
\prev_state.key1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \prev_state.key1~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.key1~q\);

-- Location: LCCOMB_X21_Y19_N14
\WideOr0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (\prev_state.ready~q\ & ((\prev_state.key1~q\ $ (\Selector2~1_combout\)) # (!\Selector1~0_combout\))) # (!\prev_state.ready~q\ & ((\Selector1~0_combout\) # (\prev_state.key1~q\ $ (\Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.ready~q\,
	datab => \prev_state.key1~q\,
	datac => \Selector1~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \WideOr0~4_combout\);

-- Location: LCCOMB_X22_Y19_N4
\WideOr0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = (\WideOr0~4_combout\) # (\prev_state.unlocked~q\ $ (\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.unlocked~q\,
	datac => \Selector6~0_combout\,
	datad => \WideOr0~4_combout\,
	combout => \WideOr0~5_combout\);

-- Location: LCCOMB_X21_Y19_N0
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\key[0]~input_o\) # ((\key[1]~input_o\) # (\key[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[1]~input_o\,
	datad => \key[2]~input_o\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\next_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state~2_combout\ = (\next_state~3_combout\ & ((\Equal1~0_combout\) # ((t(0) & t(1))))) # (!\next_state~3_combout\ & (((t(0) & t(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~3_combout\,
	datab => \Equal1~0_combout\,
	datac => t(0),
	datad => t(1),
	combout => \next_state~2_combout\);

-- Location: LCCOMB_X21_Y19_N20
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\prev_state.ready~q\) # ((\prev_state.key1~q\ & ((!t(1)) # (!t(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.key1~q\,
	datab => \prev_state.ready~q\,
	datac => t(0),
	datad => t(1),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X21_Y19_N2
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\prev_state.error1~q\ & (((\Selector7~0_combout\ & \Selector2~0_combout\)) # (!\next_state~2_combout\))) # (!\prev_state.error1~q\ & (\Selector7~0_combout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.error1~q\,
	datab => \Selector7~0_combout\,
	datac => \next_state~2_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X21_Y19_N1
\prev_state.error1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	asdata => \Selector7~1_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.error1~q\);

-- Location: LCCOMB_X21_Y19_N30
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Equal1~0_combout\ & (!\Equal0~0_combout\ & ((\prev_state.wait1~q\) # (\prev_state.key1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.wait1~q\,
	datab => \prev_state.key1~q\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X21_Y19_N4
\WideOr0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (\prev_state.wait1~q\ & ((\prev_state.error1~q\ $ (\Selector7~1_combout\)) # (!\Selector3~0_combout\))) # (!\prev_state.wait1~q\ & ((\Selector3~0_combout\) # (\prev_state.error1~q\ $ (\Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.wait1~q\,
	datab => \prev_state.error1~q\,
	datac => \Selector3~0_combout\,
	datad => \Selector7~1_combout\,
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X22_Y19_N20
\process_2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~5_combout\ = (!\key[2]~input_o\) # (!\key[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[3]~input_o\,
	datad => \key[2]~input_o\,
	combout => \process_2~5_combout\);

-- Location: LCCOMB_X22_Y19_N26
\process_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~4_combout\ = (((t(0) & t(1))) # (!\key[1]~input_o\)) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[1]~input_o\,
	datac => t(0),
	datad => t(1),
	combout => \process_2~4_combout\);

-- Location: LCCOMB_X23_Y19_N6
\Selector10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~5_combout\ = (!\Equal0~0_combout\ & (((\process_2~4_combout\) # (!\key[3]~input_o\)) # (!\key[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[3]~input_o\,
	datac => \process_2~4_combout\,
	datad => \Equal0~0_combout\,
	combout => \Selector10~5_combout\);

-- Location: LCCOMB_X23_Y19_N18
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\process_2~7_combout\ & ((\prev_state.error1~q\) # ((\prev_state.error2~q\ & \Selector10~5_combout\)))) # (!\process_2~7_combout\ & (((\prev_state.error2~q\ & \Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~7_combout\,
	datab => \prev_state.error1~q\,
	datac => \prev_state.error2~q\,
	datad => \Selector10~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X23_Y19_N19
\prev_state.error2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.error2~q\);

-- Location: LCCOMB_X22_Y19_N6
\process_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~6_combout\ = (\key[2]~input_o\ & (!\key[1]~input_o\ & \process_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[2]~input_o\,
	datac => \key[1]~input_o\,
	datad => \process_2~2_combout\,
	combout => \process_2~6_combout\);

-- Location: LCCOMB_X21_Y19_N22
\prev_state.wait1~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_state.wait1~feeder_combout\ = \Selector3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector3~0_combout\,
	combout => \prev_state.wait1~feeder_combout\);

-- Location: FF_X21_Y19_N23
\prev_state.wait1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \prev_state.wait1~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.wait1~q\);

-- Location: LCCOMB_X23_Y19_N10
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\Equal1~0_combout\ & (!\Equal0~0_combout\ & ((\prev_state.key2~q\) # (\prev_state.wait1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.key2~q\,
	datab => \Equal1~0_combout\,
	datac => \prev_state.wait1~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X23_Y19_N0
\Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\next_state~2_combout\ & (((!\process_2~6_combout\ & \Selector9~0_combout\)))) # (!\next_state~2_combout\ & ((\prev_state.error3~q\) # ((!\process_2~6_combout\ & \Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state~2_combout\,
	datab => \prev_state.error3~q\,
	datac => \process_2~6_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X23_Y19_N28
\Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (\Selector9~1_combout\) # ((!\process_2~4_combout\ & (!\process_2~5_combout\ & \prev_state.error2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~4_combout\,
	datab => \process_2~5_combout\,
	datac => \prev_state.error2~q\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: FF_X23_Y19_N29
\prev_state.error3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector9~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.error3~q\);

-- Location: FF_X23_Y19_N25
\prev_state.error4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector10~4_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.error4~q\);

-- Location: LCCOMB_X23_Y19_N24
\Selector10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~4_combout\ = (\process_2~7_combout\ & ((\prev_state.error3~q\) # ((\prev_state.error4~q\ & \Selector10~5_combout\)))) # (!\process_2~7_combout\ & (((\prev_state.error4~q\ & \Selector10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~7_combout\,
	datab => \prev_state.error3~q\,
	datac => \prev_state.error4~q\,
	datad => \Selector10~5_combout\,
	combout => \Selector10~4_combout\);

-- Location: LCCOMB_X23_Y19_N4
\WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\prev_state.error4~q\ & ((\prev_state.wait2~q\ $ (\Selector5~0_combout\)) # (!\Selector10~4_combout\))) # (!\prev_state.error4~q\ & ((\Selector10~4_combout\) # (\prev_state.wait2~q\ $ (\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.error4~q\,
	datab => \prev_state.wait2~q\,
	datac => \Selector5~0_combout\,
	datad => \Selector10~4_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X22_Y19_N18
\WideOr0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = (\WideOr0~2_combout\) # ((\WideOr0~5_combout\) # ((\WideOr0~3_combout\) # (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => \WideOr0~5_combout\,
	datac => \WideOr0~3_combout\,
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~6_combout\);

-- Location: LCCOMB_X22_Y19_N12
\t[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[1]~2_combout\ = (!\WideOr0~0_combout\ & (!\WideOr0~6_combout\ & ((t(0)) # (t(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => t(0),
	datac => t(1),
	datad => \WideOr0~6_combout\,
	combout => \t[1]~2_combout\);

-- Location: FF_X22_Y19_N13
\t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \t[1]~2_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(1));

-- Location: LCCOMB_X22_Y19_N30
\t[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[0]~3_combout\ = (!\WideOr0~0_combout\ & (!\WideOr0~6_combout\ & ((t(1)) # (!t(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~0_combout\,
	datab => t(1),
	datac => t(0),
	datad => \WideOr0~6_combout\,
	combout => \t[0]~3_combout\);

-- Location: FF_X22_Y19_N31
\t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \t[0]~3_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(0));

-- Location: LCCOMB_X22_Y19_N0
\process_2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~7_combout\ = (\Equal1~0_combout\ & ((!t(1)) # (!t(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => t(0),
	datad => t(1),
	combout => \process_2~7_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\process_2~7_combout\ & (\prev_state.wait2~q\ & !\process_2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~7_combout\,
	datac => \prev_state.wait2~q\,
	datad => \process_2~3_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X23_Y19_N20
\Selector0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = (\prev_state.error4~q\ & (\key[2]~input_o\ & (!\process_2~4_combout\ & \key[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.error4~q\,
	datab => \key[2]~input_o\,
	datac => \process_2~4_combout\,
	datad => \key[3]~input_o\,
	combout => \Selector0~7_combout\);

-- Location: LCCOMB_X23_Y19_N26
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\prev_state.error4~q\) # ((\prev_state.error3~q\) # ((\prev_state.error2~q\) # (\prev_state.error1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.error4~q\,
	datab => \prev_state.error3~q\,
	datac => \prev_state.error2~q\,
	datad => \prev_state.error1~q\,
	combout => \Selector0~4_combout\);

-- Location: FF_X22_Y19_N21
\prev_state.unlocked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.unlocked~q\);

-- Location: LCCOMB_X23_Y19_N16
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\prev_state.key2~q\) # ((\prev_state.key1~q\) # ((\prev_state.wait1~q\) # (\prev_state.unlocked~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.key2~q\,
	datab => \prev_state.key1~q\,
	datac => \prev_state.wait1~q\,
	datad => \prev_state.unlocked~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X23_Y19_N12
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~7_combout\) # ((\Equal0~0_combout\ & ((\Selector0~4_combout\) # (\Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Selector0~7_combout\,
	datac => \Selector0~4_combout\,
	datad => \Selector0~3_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X23_Y19_N8
\Selector0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (!\Selector0~2_combout\ & (!\Selector0~5_combout\ & ((\Equal1~0_combout\) # (\prev_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Selector0~2_combout\,
	datac => \prev_state.idle~q\,
	datad => \Selector0~5_combout\,
	combout => \Selector0~6_combout\);

-- Location: FF_X23_Y19_N9
\prev_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector0~6_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.idle~q\);

-- Location: LCCOMB_X21_Y19_N26
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\Equal1~0_combout\ & ((\prev_state.ready~q\) # (!\prev_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.ready~q\,
	datac => \Equal1~0_combout\,
	datad => \prev_state.idle~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X21_Y19_N24
\prev_state.ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \prev_state.ready~feeder_combout\ = \Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector1~0_combout\,
	combout => \prev_state.ready~feeder_combout\);

-- Location: FF_X21_Y19_N25
\prev_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \prev_state.ready~feeder_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.ready~q\);

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;
END structure;


