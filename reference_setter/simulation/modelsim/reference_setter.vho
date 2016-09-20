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

-- DATE "08/09/2016 01:26:36"

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

ENTITY 	reference_setter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	up : IN std_logic;
	down : IN std_logic;
	display1 : OUT std_logic_vector(6 DOWNTO 0);
	display2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END reference_setter;

-- Design Ports Information
-- display1[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display1[6]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[0]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display2[6]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reference_setter IS
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
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_display1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_display2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reference_value[1]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \down_debouncer|next_state.start~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reference_value[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \up_debouncer|next_state.start~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \down_debouncer|t[2]~21_combout\ : std_logic;
SIGNAL \down_debouncer|t[10]~37_combout\ : std_logic;
SIGNAL \down_debouncer|t[11]~39_combout\ : std_logic;
SIGNAL \up_debouncer|t[9]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\ : std_logic;
SIGNAL \up_debouncer|Selector0~0_combout\ : std_logic;
SIGNAL \up_debouncer|Selector1~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \display1[0]~output_o\ : std_logic;
SIGNAL \display1[1]~output_o\ : std_logic;
SIGNAL \display1[2]~output_o\ : std_logic;
SIGNAL \display1[3]~output_o\ : std_logic;
SIGNAL \display1[4]~output_o\ : std_logic;
SIGNAL \display1[5]~output_o\ : std_logic;
SIGNAL \display1[6]~output_o\ : std_logic;
SIGNAL \display2[0]~output_o\ : std_logic;
SIGNAL \display2[1]~output_o\ : std_logic;
SIGNAL \display2[2]~output_o\ : std_logic;
SIGNAL \display2[3]~output_o\ : std_logic;
SIGNAL \display2[4]~output_o\ : std_logic;
SIGNAL \display2[5]~output_o\ : std_logic;
SIGNAL \display2[6]~output_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \down_debouncer|Selector1~0_combout\ : std_logic;
SIGNAL \down_debouncer|next_state.count_157~combout\ : std_logic;
SIGNAL \down_debouncer|prev_state.count~feeder_combout\ : std_logic;
SIGNAL \down_debouncer|prev_state.count~q\ : std_logic;
SIGNAL \down_debouncer|t[0]~17_combout\ : std_logic;
SIGNAL \down_debouncer|WideOr0~0_combout\ : std_logic;
SIGNAL \down_debouncer|WideOr0~combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~14_combout\ : std_logic;
SIGNAL \down_debouncer|t[12]~42\ : std_logic;
SIGNAL \down_debouncer|t[13]~43_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~35_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~16_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~15_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~46_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~45_combout\ : std_logic;
SIGNAL \down_debouncer|t[9]~47_combout\ : std_logic;
SIGNAL \down_debouncer|t[0]~18\ : std_logic;
SIGNAL \down_debouncer|t[1]~19_combout\ : std_logic;
SIGNAL \down_debouncer|t[1]~20\ : std_logic;
SIGNAL \down_debouncer|t[2]~22\ : std_logic;
SIGNAL \down_debouncer|t[3]~23_combout\ : std_logic;
SIGNAL \down_debouncer|t[3]~24\ : std_logic;
SIGNAL \down_debouncer|t[4]~25_combout\ : std_logic;
SIGNAL \down_debouncer|t[4]~26\ : std_logic;
SIGNAL \down_debouncer|t[5]~27_combout\ : std_logic;
SIGNAL \down_debouncer|t[5]~28\ : std_logic;
SIGNAL \down_debouncer|t[6]~29_combout\ : std_logic;
SIGNAL \down_debouncer|t[6]~30\ : std_logic;
SIGNAL \down_debouncer|t[7]~31_combout\ : std_logic;
SIGNAL \down_debouncer|t[7]~32\ : std_logic;
SIGNAL \down_debouncer|t[8]~33_combout\ : std_logic;
SIGNAL \down_debouncer|t[8]~34\ : std_logic;
SIGNAL \down_debouncer|t[9]~36\ : std_logic;
SIGNAL \down_debouncer|t[10]~38\ : std_logic;
SIGNAL \down_debouncer|t[11]~40\ : std_logic;
SIGNAL \down_debouncer|t[12]~41_combout\ : std_logic;
SIGNAL \down_debouncer|next_state.start~0_combout\ : std_logic;
SIGNAL \down_debouncer|LessThan0~0_combout\ : std_logic;
SIGNAL \down_debouncer|next_state.start~1_combout\ : std_logic;
SIGNAL \down_debouncer|next_state.start~1clkctrl_outclk\ : std_logic;
SIGNAL \down_debouncer|next_state.start_168~combout\ : std_logic;
SIGNAL \down_debouncer|prev_state.start~0_combout\ : std_logic;
SIGNAL \down_debouncer|prev_state.start~q\ : std_logic;
SIGNAL \down_debouncer|Selector0~0_combout\ : std_logic;
SIGNAL \down_debouncer|next_state.hold_146~combout\ : std_logic;
SIGNAL \down_debouncer|prev_state.hold~q\ : std_logic;
SIGNAL \up_debouncer|t[0]~17_combout\ : std_logic;
SIGNAL \up_debouncer|next_state.count_157~combout\ : std_logic;
SIGNAL \up_debouncer|WideOr0~0_combout\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \up_debouncer|next_state.start_168~combout\ : std_logic;
SIGNAL \up_debouncer|prev_state.start~0_combout\ : std_logic;
SIGNAL \up_debouncer|prev_state.start~q\ : std_logic;
SIGNAL \up_debouncer|WideOr0~combout\ : std_logic;
SIGNAL \up_debouncer|t[6]~30\ : std_logic;
SIGNAL \up_debouncer|t[7]~31_combout\ : std_logic;
SIGNAL \up_debouncer|t[7]~32\ : std_logic;
SIGNAL \up_debouncer|t[8]~33_combout\ : std_logic;
SIGNAL \up_debouncer|t[8]~34\ : std_logic;
SIGNAL \up_debouncer|t[9]~39\ : std_logic;
SIGNAL \up_debouncer|t[10]~40_combout\ : std_logic;
SIGNAL \up_debouncer|t[10]~41\ : std_logic;
SIGNAL \up_debouncer|t[11]~42_combout\ : std_logic;
SIGNAL \up_debouncer|t[11]~43\ : std_logic;
SIGNAL \up_debouncer|t[12]~44_combout\ : std_logic;
SIGNAL \up_debouncer|t[12]~45\ : std_logic;
SIGNAL \up_debouncer|t[13]~46_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~14_combout\ : std_logic;
SIGNAL \up_debouncer|t[2]~21_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~15_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~36_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~35_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~37_combout\ : std_logic;
SIGNAL \up_debouncer|t[0]~18\ : std_logic;
SIGNAL \up_debouncer|t[1]~19_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~20\ : std_logic;
SIGNAL \up_debouncer|t[2]~22\ : std_logic;
SIGNAL \up_debouncer|t[3]~23_combout\ : std_logic;
SIGNAL \up_debouncer|t[3]~24\ : std_logic;
SIGNAL \up_debouncer|t[4]~26\ : std_logic;
SIGNAL \up_debouncer|t[5]~27_combout\ : std_logic;
SIGNAL \up_debouncer|t[5]~28\ : std_logic;
SIGNAL \up_debouncer|t[6]~29_combout\ : std_logic;
SIGNAL \up_debouncer|t[1]~16_combout\ : std_logic;
SIGNAL \up_debouncer|t[4]~25_combout\ : std_logic;
SIGNAL \up_debouncer|LessThan0~0_combout\ : std_logic;
SIGNAL \up_debouncer|prev_state.count~q\ : std_logic;
SIGNAL \up_debouncer|next_state.start~0_combout\ : std_logic;
SIGNAL \up_debouncer|next_state.start~1_combout\ : std_logic;
SIGNAL \up_debouncer|next_state.start~1clkctrl_outclk\ : std_logic;
SIGNAL \up_debouncer|next_state.hold_146~combout\ : std_logic;
SIGNAL \up_debouncer|prev_state.hold~q\ : std_logic;
SIGNAL \reference_value[1]~1_combout\ : std_logic;
SIGNAL \reference_value[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \reference_value[1]~0_combout\ : std_logic;
SIGNAL \reference_value[1]~0clkctrl_outclk\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \tens_digit_display|decimal_out[0]~0_combout\ : std_logic;
SIGNAL \tens_digit_display|decimal_out[3]~1_combout\ : std_logic;
SIGNAL \tens_digit_display|decimal_out[0]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[0]~0_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[1]~1_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[2]~2_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[3]~3_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[4]~4_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[5]~5_combout\ : std_logic;
SIGNAL \units_digit_display|decimal_out[6]~6_combout\ : std_logic;
SIGNAL units_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL tens_digit : std_logic_vector(3 DOWNTO 0);
SIGNAL reference_value : std_logic_vector(4 DOWNTO 0);
SIGNAL \up_debouncer|t\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \down_debouncer|t\ : std_logic_vector(13 DOWNTO 0);
SIGNAL ALT_INV_tens_digit : std_logic_vector(1 DOWNTO 1);
SIGNAL \units_digit_display|ALT_INV_decimal_out[4]~4_combout\ : std_logic;
SIGNAL \tens_digit_display|ALT_INV_decimal_out[0]~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_up <= up;
ww_down <= down;
display1 <= ww_display1;
display2 <= ww_display2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reference_value[1]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reference_value[1]~0_combout\);

\down_debouncer|next_state.start~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \down_debouncer|next_state.start~1_combout\);

\reference_value[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reference_value[1]~1_combout\);

\up_debouncer|next_state.start~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \up_debouncer|next_state.start~1_combout\);
ALT_INV_tens_digit(1) <= NOT tens_digit(1);
\units_digit_display|ALT_INV_decimal_out[4]~4_combout\ <= NOT \units_digit_display|decimal_out[4]~4_combout\;
\tens_digit_display|ALT_INV_decimal_out[0]~2_combout\ <= NOT \tens_digit_display|decimal_out[0]~2_combout\;

-- Location: LCCOMB_X2_Y21_N10
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = reference_value(2) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(reference_value(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reference_value(2),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X2_Y21_N12
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (reference_value(3) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!reference_value(3) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!reference_value(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reference_value(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X3_Y21_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = reference_value(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(reference_value(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X3_Y21_N4
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (reference_value(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!reference_value(4) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((reference_value(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: FF_X2_Y20_N25
\down_debouncer|t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[11]~39_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(11));

-- Location: FF_X2_Y20_N7
\down_debouncer|t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[2]~21_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(2));

-- Location: FF_X2_Y20_N23
\down_debouncer|t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[10]~37_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(10));

-- Location: FF_X1_Y14_N23
\up_debouncer|t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[9]~38_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(9));

-- Location: LCCOMB_X2_Y20_N6
\down_debouncer|t[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[2]~21_combout\ = (\down_debouncer|t\(2) & (\down_debouncer|t[1]~20\ $ (GND))) # (!\down_debouncer|t\(2) & (!\down_debouncer|t[1]~20\ & VCC))
-- \down_debouncer|t[2]~22\ = CARRY((\down_debouncer|t\(2) & !\down_debouncer|t[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(2),
	datad => VCC,
	cin => \down_debouncer|t[1]~20\,
	combout => \down_debouncer|t[2]~21_combout\,
	cout => \down_debouncer|t[2]~22\);

-- Location: LCCOMB_X2_Y20_N22
\down_debouncer|t[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[10]~37_combout\ = (\down_debouncer|t\(10) & (\down_debouncer|t[9]~36\ $ (GND))) # (!\down_debouncer|t\(10) & (!\down_debouncer|t[9]~36\ & VCC))
-- \down_debouncer|t[10]~38\ = CARRY((\down_debouncer|t\(10) & !\down_debouncer|t[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(10),
	datad => VCC,
	cin => \down_debouncer|t[9]~36\,
	combout => \down_debouncer|t[10]~37_combout\,
	cout => \down_debouncer|t[10]~38\);

-- Location: LCCOMB_X2_Y20_N24
\down_debouncer|t[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[11]~39_combout\ = (\down_debouncer|t\(11) & (!\down_debouncer|t[10]~38\)) # (!\down_debouncer|t\(11) & ((\down_debouncer|t[10]~38\) # (GND)))
-- \down_debouncer|t[11]~40\ = CARRY((!\down_debouncer|t[10]~38\) # (!\down_debouncer|t\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(11),
	datad => VCC,
	cin => \down_debouncer|t[10]~38\,
	combout => \down_debouncer|t[11]~39_combout\,
	cout => \down_debouncer|t[11]~40\);

-- Location: LCCOMB_X1_Y14_N22
\up_debouncer|t[9]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[9]~38_combout\ = (\up_debouncer|t\(9) & (!\up_debouncer|t[8]~34\)) # (!\up_debouncer|t\(9) & ((\up_debouncer|t[8]~34\) # (GND)))
-- \up_debouncer|t[9]~39\ = CARRY((!\up_debouncer|t[8]~34\) # (!\up_debouncer|t\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(9),
	datad => VCC,
	cin => \up_debouncer|t[8]~34\,
	combout => \up_debouncer|t[9]~38_combout\,
	cout => \up_debouncer|t[9]~39\);

-- Location: LCCOMB_X1_Y21_N14
\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (reference_value(4) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reference_value(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X2_Y21_N6
\Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (reference_value(3) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reference_value(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X1_Y21_N16
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X2_Y21_N18
\Div0|auto_generated|divider|divider|StageOut[15]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (reference_value(1) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reference_value(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X3_Y21_N8
\Mod0|auto_generated|divider|divider|StageOut[16]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LCCOMB_X4_Y21_N30
\Mod0|auto_generated|divider|divider|StageOut[15]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\ = (reference_value(1) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\);

-- Location: LCCOMB_X3_Y21_N14
\Mod0|auto_generated|divider|divider|StageOut[18]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\);

-- Location: LCCOMB_X4_Y21_N26
\Mod0|auto_generated|divider|divider|StageOut[17]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & reference_value(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => reference_value(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\);

-- Location: LCCOMB_X2_Y14_N0
\up_debouncer|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|Selector0~0_combout\ = (\up~input_o\) # (!\up_debouncer|prev_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|prev_state.start~q\,
	datad => \up~input_o\,
	combout => \up_debouncer|Selector0~0_combout\);

-- Location: LCCOMB_X2_Y14_N8
\up_debouncer|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|Selector1~0_combout\ = (\up_debouncer|prev_state.start~q\) # (\up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|prev_state.start~q\,
	datad => \up~input_o\,
	combout => \up_debouncer|Selector1~0_combout\);

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

-- Location: IOOBUF_X0_Y13_N9
\display1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_tens_digit(1),
	devoe => ww_devoe,
	o => \display1[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\display1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tens_digit_display|decimal_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \display1[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\display1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => tens_digit(0),
	devoe => ww_devoe,
	o => \display1[2]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\display1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tens_digit_display|decimal_out[3]~1_combout\,
	devoe => ww_devoe,
	o => \display1[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\display1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tens_digit_display|ALT_INV_decimal_out[0]~2_combout\,
	devoe => ww_devoe,
	o => \display1[4]~output_o\);

-- Location: IOOBUF_X41_Y26_N9
\display1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \display1[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\display1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tens_digit_display|decimal_out[3]~1_combout\,
	devoe => ww_devoe,
	o => \display1[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\display2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \display2[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\display2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \display2[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\display2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \display2[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\display2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \display2[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\display2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|ALT_INV_decimal_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \display2[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\display2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \display2[5]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\display2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \units_digit_display|decimal_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \display2[6]~output_o\);

-- Location: IOIBUF_X0_Y13_N22
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X3_Y21_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = reference_value(0) $ (VCC)
-- \Add0~1\ = CARRY(reference_value(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reference_value(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y20_N1
\down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: LCCOMB_X1_Y20_N4
\down_debouncer|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|Selector1~0_combout\ = (\down~input_o\) # (\down_debouncer|prev_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down~input_o\,
	datad => \down_debouncer|prev_state.start~q\,
	combout => \down_debouncer|Selector1~0_combout\);

-- Location: LCCOMB_X1_Y20_N0
\down_debouncer|next_state.count_157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|next_state.count_157~combout\ = (GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & (!\down_debouncer|Selector1~0_combout\)) # (!GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & 
-- ((\down_debouncer|next_state.count_157~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|Selector1~0_combout\,
	datac => \down_debouncer|next_state.count_157~combout\,
	datad => \down_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \down_debouncer|next_state.count_157~combout\);

-- Location: LCCOMB_X1_Y20_N24
\down_debouncer|prev_state.count~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|prev_state.count~feeder_combout\ = \down_debouncer|next_state.count_157~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \down_debouncer|next_state.count_157~combout\,
	combout => \down_debouncer|prev_state.count~feeder_combout\);

-- Location: FF_X1_Y20_N25
\down_debouncer|prev_state.count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|prev_state.count~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|prev_state.count~q\);

-- Location: LCCOMB_X2_Y20_N2
\down_debouncer|t[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[0]~17_combout\ = \down_debouncer|t\(0) $ (VCC)
-- \down_debouncer|t[0]~18\ = CARRY(\down_debouncer|t\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(0),
	datad => VCC,
	combout => \down_debouncer|t[0]~17_combout\,
	cout => \down_debouncer|t[0]~18\);

-- Location: LCCOMB_X1_Y20_N26
\down_debouncer|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|WideOr0~0_combout\ = (\down_debouncer|prev_state.hold~q\ & ((\down_debouncer|prev_state.count~q\ $ (\down_debouncer|next_state.count_157~combout\)) # (!\down_debouncer|next_state.hold_146~combout\))) # (!\down_debouncer|prev_state.hold~q\ 
-- & ((\down_debouncer|next_state.hold_146~combout\) # (\down_debouncer|prev_state.count~q\ $ (\down_debouncer|next_state.count_157~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|prev_state.hold~q\,
	datab => \down_debouncer|prev_state.count~q\,
	datac => \down_debouncer|next_state.hold_146~combout\,
	datad => \down_debouncer|next_state.count_157~combout\,
	combout => \down_debouncer|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y20_N0
\down_debouncer|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|WideOr0~combout\ = (\down_debouncer|WideOr0~0_combout\) # (\down_debouncer|next_state.start_168~combout\ $ (!\down_debouncer|prev_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|next_state.start_168~combout\,
	datab => \down_debouncer|prev_state.start~q\,
	datac => \down_debouncer|WideOr0~0_combout\,
	combout => \down_debouncer|WideOr0~combout\);

-- Location: LCCOMB_X1_Y20_N14
\down_debouncer|t[9]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~14_combout\ = (!\down_debouncer|t\(2) & (!\down_debouncer|t\(3) & (!\down_debouncer|t\(0) & !\down_debouncer|t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(2),
	datab => \down_debouncer|t\(3),
	datac => \down_debouncer|t\(0),
	datad => \down_debouncer|t\(1),
	combout => \down_debouncer|t[9]~14_combout\);

-- Location: LCCOMB_X2_Y20_N26
\down_debouncer|t[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[12]~41_combout\ = (\down_debouncer|t\(12) & (\down_debouncer|t[11]~40\ $ (GND))) # (!\down_debouncer|t\(12) & (!\down_debouncer|t[11]~40\ & VCC))
-- \down_debouncer|t[12]~42\ = CARRY((\down_debouncer|t\(12) & !\down_debouncer|t[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(12),
	datad => VCC,
	cin => \down_debouncer|t[11]~40\,
	combout => \down_debouncer|t[12]~41_combout\,
	cout => \down_debouncer|t[12]~42\);

-- Location: LCCOMB_X2_Y20_N28
\down_debouncer|t[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[13]~43_combout\ = \down_debouncer|t[12]~42\ $ (\down_debouncer|t\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \down_debouncer|t\(13),
	cin => \down_debouncer|t[12]~42\,
	combout => \down_debouncer|t[13]~43_combout\);

-- Location: FF_X2_Y20_N29
\down_debouncer|t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[13]~43_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(13));

-- Location: LCCOMB_X2_Y20_N20
\down_debouncer|t[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~35_combout\ = (\down_debouncer|t\(9) & (!\down_debouncer|t[8]~34\)) # (!\down_debouncer|t\(9) & ((\down_debouncer|t[8]~34\) # (GND)))
-- \down_debouncer|t[9]~36\ = CARRY((!\down_debouncer|t[8]~34\) # (!\down_debouncer|t\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(9),
	datad => VCC,
	cin => \down_debouncer|t[8]~34\,
	combout => \down_debouncer|t[9]~35_combout\,
	cout => \down_debouncer|t[9]~36\);

-- Location: FF_X2_Y20_N21
\down_debouncer|t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[9]~35_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(9));

-- Location: LCCOMB_X2_Y20_N30
\down_debouncer|t[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~16_combout\ = (\down_debouncer|t\(10) & (\down_debouncer|t\(13) & (\down_debouncer|t\(9) & \down_debouncer|t\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(10),
	datab => \down_debouncer|t\(13),
	datac => \down_debouncer|t\(9),
	datad => \down_debouncer|t\(8),
	combout => \down_debouncer|t[9]~16_combout\);

-- Location: LCCOMB_X1_Y20_N2
\down_debouncer|t[9]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~15_combout\ = (!\down_debouncer|t\(6) & (!\down_debouncer|t\(5) & !\down_debouncer|t\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(6),
	datac => \down_debouncer|t\(5),
	datad => \down_debouncer|t\(7),
	combout => \down_debouncer|t[9]~15_combout\);

-- Location: LCCOMB_X1_Y20_N22
\down_debouncer|t[9]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~46_combout\ = (\down_debouncer|t\(4) & (\down_debouncer|t[9]~16_combout\ & \down_debouncer|t[9]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(4),
	datac => \down_debouncer|t[9]~16_combout\,
	datad => \down_debouncer|t[9]~15_combout\,
	combout => \down_debouncer|t[9]~46_combout\);

-- Location: LCCOMB_X1_Y20_N20
\down_debouncer|t[9]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~45_combout\ = (!\down_debouncer|t\(11) & (!\down_debouncer|t\(12) & (\down_debouncer|prev_state.start~q\ $ (\down_debouncer|next_state.start_168~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(11),
	datab => \down_debouncer|t\(12),
	datac => \down_debouncer|prev_state.start~q\,
	datad => \down_debouncer|next_state.start_168~combout\,
	combout => \down_debouncer|t[9]~45_combout\);

-- Location: LCCOMB_X1_Y20_N6
\down_debouncer|t[9]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[9]~47_combout\ = (\down_debouncer|WideOr0~0_combout\) # (((!\down_debouncer|t[9]~45_combout\) # (!\down_debouncer|t[9]~46_combout\)) # (!\down_debouncer|t[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|WideOr0~0_combout\,
	datab => \down_debouncer|t[9]~14_combout\,
	datac => \down_debouncer|t[9]~46_combout\,
	datad => \down_debouncer|t[9]~45_combout\,
	combout => \down_debouncer|t[9]~47_combout\);

-- Location: FF_X2_Y20_N3
\down_debouncer|t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[0]~17_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(0));

-- Location: LCCOMB_X2_Y20_N4
\down_debouncer|t[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[1]~19_combout\ = (\down_debouncer|t\(1) & (!\down_debouncer|t[0]~18\)) # (!\down_debouncer|t\(1) & ((\down_debouncer|t[0]~18\) # (GND)))
-- \down_debouncer|t[1]~20\ = CARRY((!\down_debouncer|t[0]~18\) # (!\down_debouncer|t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(1),
	datad => VCC,
	cin => \down_debouncer|t[0]~18\,
	combout => \down_debouncer|t[1]~19_combout\,
	cout => \down_debouncer|t[1]~20\);

-- Location: FF_X2_Y20_N5
\down_debouncer|t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[1]~19_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(1));

-- Location: LCCOMB_X2_Y20_N8
\down_debouncer|t[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[3]~23_combout\ = (\down_debouncer|t\(3) & (!\down_debouncer|t[2]~22\)) # (!\down_debouncer|t\(3) & ((\down_debouncer|t[2]~22\) # (GND)))
-- \down_debouncer|t[3]~24\ = CARRY((!\down_debouncer|t[2]~22\) # (!\down_debouncer|t\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(3),
	datad => VCC,
	cin => \down_debouncer|t[2]~22\,
	combout => \down_debouncer|t[3]~23_combout\,
	cout => \down_debouncer|t[3]~24\);

-- Location: FF_X2_Y20_N9
\down_debouncer|t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[3]~23_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(3));

-- Location: LCCOMB_X2_Y20_N10
\down_debouncer|t[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[4]~25_combout\ = (\down_debouncer|t\(4) & (\down_debouncer|t[3]~24\ $ (GND))) # (!\down_debouncer|t\(4) & (!\down_debouncer|t[3]~24\ & VCC))
-- \down_debouncer|t[4]~26\ = CARRY((\down_debouncer|t\(4) & !\down_debouncer|t[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(4),
	datad => VCC,
	cin => \down_debouncer|t[3]~24\,
	combout => \down_debouncer|t[4]~25_combout\,
	cout => \down_debouncer|t[4]~26\);

-- Location: FF_X2_Y20_N11
\down_debouncer|t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[4]~25_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(4));

-- Location: LCCOMB_X2_Y20_N12
\down_debouncer|t[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[5]~27_combout\ = (\down_debouncer|t\(5) & (!\down_debouncer|t[4]~26\)) # (!\down_debouncer|t\(5) & ((\down_debouncer|t[4]~26\) # (GND)))
-- \down_debouncer|t[5]~28\ = CARRY((!\down_debouncer|t[4]~26\) # (!\down_debouncer|t\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(5),
	datad => VCC,
	cin => \down_debouncer|t[4]~26\,
	combout => \down_debouncer|t[5]~27_combout\,
	cout => \down_debouncer|t[5]~28\);

-- Location: FF_X2_Y20_N13
\down_debouncer|t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[5]~27_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(5));

-- Location: LCCOMB_X2_Y20_N14
\down_debouncer|t[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[6]~29_combout\ = (\down_debouncer|t\(6) & (\down_debouncer|t[5]~28\ $ (GND))) # (!\down_debouncer|t\(6) & (!\down_debouncer|t[5]~28\ & VCC))
-- \down_debouncer|t[6]~30\ = CARRY((\down_debouncer|t\(6) & !\down_debouncer|t[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(6),
	datad => VCC,
	cin => \down_debouncer|t[5]~28\,
	combout => \down_debouncer|t[6]~29_combout\,
	cout => \down_debouncer|t[6]~30\);

-- Location: FF_X2_Y20_N15
\down_debouncer|t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[6]~29_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(6));

-- Location: LCCOMB_X2_Y20_N16
\down_debouncer|t[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[7]~31_combout\ = (\down_debouncer|t\(7) & (!\down_debouncer|t[6]~30\)) # (!\down_debouncer|t\(7) & ((\down_debouncer|t[6]~30\) # (GND)))
-- \down_debouncer|t[7]~32\ = CARRY((!\down_debouncer|t[6]~30\) # (!\down_debouncer|t\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(7),
	datad => VCC,
	cin => \down_debouncer|t[6]~30\,
	combout => \down_debouncer|t[7]~31_combout\,
	cout => \down_debouncer|t[7]~32\);

-- Location: FF_X2_Y20_N17
\down_debouncer|t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[7]~31_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(7));

-- Location: LCCOMB_X2_Y20_N18
\down_debouncer|t[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|t[8]~33_combout\ = (\down_debouncer|t\(8) & (\down_debouncer|t[7]~32\ $ (GND))) # (!\down_debouncer|t\(8) & (!\down_debouncer|t[7]~32\ & VCC))
-- \down_debouncer|t[8]~34\ = CARRY((\down_debouncer|t\(8) & !\down_debouncer|t[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(8),
	datad => VCC,
	cin => \down_debouncer|t[7]~32\,
	combout => \down_debouncer|t[8]~33_combout\,
	cout => \down_debouncer|t[8]~34\);

-- Location: FF_X2_Y20_N19
\down_debouncer|t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[8]~33_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(8));

-- Location: FF_X2_Y20_N27
\down_debouncer|t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \down_debouncer|t[12]~41_combout\,
	clrn => \rst~input_o\,
	sclr => \down_debouncer|WideOr0~combout\,
	ena => \down_debouncer|t[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|t\(12));

-- Location: LCCOMB_X1_Y20_N8
\down_debouncer|next_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|next_state.start~0_combout\ = (\down~input_o\) # ((\down_debouncer|t\(13) & ((\down_debouncer|t\(11)) # (\down_debouncer|t\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t\(11),
	datab => \down_debouncer|t\(12),
	datac => \down~input_o\,
	datad => \down_debouncer|t\(13),
	combout => \down_debouncer|next_state.start~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\down_debouncer|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|LessThan0~0_combout\ = ((\down_debouncer|t\(4) & !\down_debouncer|t[9]~14_combout\)) # (!\down_debouncer|t[9]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|t\(4),
	datac => \down_debouncer|t[9]~14_combout\,
	datad => \down_debouncer|t[9]~15_combout\,
	combout => \down_debouncer|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y20_N18
\down_debouncer|next_state.start~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|next_state.start~1_combout\ = ((\down_debouncer|next_state.start~0_combout\) # ((\down_debouncer|t[9]~16_combout\ & \down_debouncer|LessThan0~0_combout\))) # (!\down_debouncer|prev_state.count~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|t[9]~16_combout\,
	datab => \down_debouncer|prev_state.count~q\,
	datac => \down_debouncer|next_state.start~0_combout\,
	datad => \down_debouncer|LessThan0~0_combout\,
	combout => \down_debouncer|next_state.start~1_combout\);

-- Location: CLKCTRL_G0
\down_debouncer|next_state.start~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \down_debouncer|next_state.start~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \down_debouncer|next_state.start~1clkctrl_outclk\);

-- Location: LCCOMB_X1_Y20_N10
\down_debouncer|next_state.start_168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|next_state.start_168~combout\ = (GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & ((\down~input_o\))) # (!GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & (\down_debouncer|next_state.start_168~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down_debouncer|next_state.start_168~combout\,
	datab => \down~input_o\,
	datad => \down_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \down_debouncer|next_state.start_168~combout\);

-- Location: LCCOMB_X1_Y20_N16
\down_debouncer|prev_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|prev_state.start~0_combout\ = !\down_debouncer|next_state.start_168~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \down_debouncer|next_state.start_168~combout\,
	combout => \down_debouncer|prev_state.start~0_combout\);

-- Location: FF_X1_Y20_N17
\down_debouncer|prev_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \down_debouncer|prev_state.start~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|prev_state.start~q\);

-- Location: LCCOMB_X1_Y20_N28
\down_debouncer|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|Selector0~0_combout\ = (\down~input_o\) # (!\down_debouncer|prev_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|prev_state.start~q\,
	datad => \down~input_o\,
	combout => \down_debouncer|Selector0~0_combout\);

-- Location: LCCOMB_X1_Y20_N30
\down_debouncer|next_state.hold_146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \down_debouncer|next_state.hold_146~combout\ = (GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & (!\down_debouncer|Selector0~0_combout\)) # (!GLOBAL(\down_debouncer|next_state.start~1clkctrl_outclk\) & 
-- ((\down_debouncer|next_state.hold_146~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|Selector0~0_combout\,
	datac => \down_debouncer|next_state.hold_146~combout\,
	datad => \down_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \down_debouncer|next_state.hold_146~combout\);

-- Location: FF_X1_Y20_N5
\down_debouncer|prev_state.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \down_debouncer|next_state.hold_146~combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \down_debouncer|prev_state.hold~q\);

-- Location: LCCOMB_X1_Y14_N4
\up_debouncer|t[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[0]~17_combout\ = \up_debouncer|t\(0) $ (VCC)
-- \up_debouncer|t[0]~18\ = CARRY(\up_debouncer|t\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(0),
	datad => VCC,
	combout => \up_debouncer|t[0]~17_combout\,
	cout => \up_debouncer|t[0]~18\);

-- Location: LCCOMB_X2_Y14_N14
\up_debouncer|next_state.count_157\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|next_state.count_157~combout\ = (GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & (!\up_debouncer|Selector1~0_combout\)) # (!GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & ((\up_debouncer|next_state.count_157~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|Selector1~0_combout\,
	datac => \up_debouncer|next_state.count_157~combout\,
	datad => \up_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \up_debouncer|next_state.count_157~combout\);

-- Location: LCCOMB_X2_Y14_N12
\up_debouncer|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|WideOr0~0_combout\ = (\up_debouncer|prev_state.count~q\ & ((\up_debouncer|prev_state.hold~q\ $ (\up_debouncer|next_state.hold_146~combout\)) # (!\up_debouncer|next_state.count_157~combout\))) # (!\up_debouncer|prev_state.count~q\ & 
-- ((\up_debouncer|next_state.count_157~combout\) # (\up_debouncer|prev_state.hold~q\ $ (\up_debouncer|next_state.hold_146~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|prev_state.count~q\,
	datab => \up_debouncer|prev_state.hold~q\,
	datac => \up_debouncer|next_state.count_157~combout\,
	datad => \up_debouncer|next_state.hold_146~combout\,
	combout => \up_debouncer|WideOr0~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X2_Y14_N30
\up_debouncer|next_state.start_168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|next_state.start_168~combout\ = (GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & (\up~input_o\)) # (!GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & ((\up_debouncer|next_state.start_168~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up~input_o\,
	datac => \up_debouncer|next_state.start_168~combout\,
	datad => \up_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \up_debouncer|next_state.start_168~combout\);

-- Location: LCCOMB_X3_Y14_N12
\up_debouncer|prev_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|prev_state.start~0_combout\ = !\up_debouncer|next_state.start_168~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \up_debouncer|next_state.start_168~combout\,
	combout => \up_debouncer|prev_state.start~0_combout\);

-- Location: FF_X2_Y14_N17
\up_debouncer|prev_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \up_debouncer|prev_state.start~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|prev_state.start~q\);

-- Location: LCCOMB_X1_Y14_N0
\up_debouncer|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|WideOr0~combout\ = (\up_debouncer|WideOr0~0_combout\) # (\up_debouncer|next_state.start_168~combout\ $ (!\up_debouncer|prev_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|next_state.start_168~combout\,
	datac => \up_debouncer|WideOr0~0_combout\,
	datad => \up_debouncer|prev_state.start~q\,
	combout => \up_debouncer|WideOr0~combout\);

-- Location: LCCOMB_X1_Y14_N16
\up_debouncer|t[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[6]~29_combout\ = (\up_debouncer|t\(6) & (\up_debouncer|t[5]~28\ $ (GND))) # (!\up_debouncer|t\(6) & (!\up_debouncer|t[5]~28\ & VCC))
-- \up_debouncer|t[6]~30\ = CARRY((\up_debouncer|t\(6) & !\up_debouncer|t[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(6),
	datad => VCC,
	cin => \up_debouncer|t[5]~28\,
	combout => \up_debouncer|t[6]~29_combout\,
	cout => \up_debouncer|t[6]~30\);

-- Location: LCCOMB_X1_Y14_N18
\up_debouncer|t[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[7]~31_combout\ = (\up_debouncer|t\(7) & (!\up_debouncer|t[6]~30\)) # (!\up_debouncer|t\(7) & ((\up_debouncer|t[6]~30\) # (GND)))
-- \up_debouncer|t[7]~32\ = CARRY((!\up_debouncer|t[6]~30\) # (!\up_debouncer|t\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(7),
	datad => VCC,
	cin => \up_debouncer|t[6]~30\,
	combout => \up_debouncer|t[7]~31_combout\,
	cout => \up_debouncer|t[7]~32\);

-- Location: FF_X1_Y14_N19
\up_debouncer|t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[7]~31_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(7));

-- Location: LCCOMB_X1_Y14_N20
\up_debouncer|t[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[8]~33_combout\ = (\up_debouncer|t\(8) & (\up_debouncer|t[7]~32\ $ (GND))) # (!\up_debouncer|t\(8) & (!\up_debouncer|t[7]~32\ & VCC))
-- \up_debouncer|t[8]~34\ = CARRY((\up_debouncer|t\(8) & !\up_debouncer|t[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(8),
	datad => VCC,
	cin => \up_debouncer|t[7]~32\,
	combout => \up_debouncer|t[8]~33_combout\,
	cout => \up_debouncer|t[8]~34\);

-- Location: FF_X1_Y14_N21
\up_debouncer|t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[8]~33_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(8));

-- Location: LCCOMB_X1_Y14_N24
\up_debouncer|t[10]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[10]~40_combout\ = (\up_debouncer|t\(10) & (\up_debouncer|t[9]~39\ $ (GND))) # (!\up_debouncer|t\(10) & (!\up_debouncer|t[9]~39\ & VCC))
-- \up_debouncer|t[10]~41\ = CARRY((\up_debouncer|t\(10) & !\up_debouncer|t[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(10),
	datad => VCC,
	cin => \up_debouncer|t[9]~39\,
	combout => \up_debouncer|t[10]~40_combout\,
	cout => \up_debouncer|t[10]~41\);

-- Location: FF_X1_Y14_N25
\up_debouncer|t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[10]~40_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(10));

-- Location: LCCOMB_X1_Y14_N26
\up_debouncer|t[11]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[11]~42_combout\ = (\up_debouncer|t\(11) & (!\up_debouncer|t[10]~41\)) # (!\up_debouncer|t\(11) & ((\up_debouncer|t[10]~41\) # (GND)))
-- \up_debouncer|t[11]~43\ = CARRY((!\up_debouncer|t[10]~41\) # (!\up_debouncer|t\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(11),
	datad => VCC,
	cin => \up_debouncer|t[10]~41\,
	combout => \up_debouncer|t[11]~42_combout\,
	cout => \up_debouncer|t[11]~43\);

-- Location: FF_X1_Y14_N27
\up_debouncer|t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[11]~42_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(11));

-- Location: LCCOMB_X1_Y14_N28
\up_debouncer|t[12]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[12]~44_combout\ = (\up_debouncer|t\(12) & (\up_debouncer|t[11]~43\ $ (GND))) # (!\up_debouncer|t\(12) & (!\up_debouncer|t[11]~43\ & VCC))
-- \up_debouncer|t[12]~45\ = CARRY((\up_debouncer|t\(12) & !\up_debouncer|t[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(12),
	datad => VCC,
	cin => \up_debouncer|t[11]~43\,
	combout => \up_debouncer|t[12]~44_combout\,
	cout => \up_debouncer|t[12]~45\);

-- Location: FF_X1_Y14_N29
\up_debouncer|t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[12]~44_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(12));

-- Location: LCCOMB_X1_Y14_N30
\up_debouncer|t[13]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[13]~46_combout\ = \up_debouncer|t[12]~45\ $ (\up_debouncer|t\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \up_debouncer|t\(13),
	cin => \up_debouncer|t[12]~45\,
	combout => \up_debouncer|t[13]~46_combout\);

-- Location: FF_X1_Y14_N31
\up_debouncer|t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[13]~46_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(13));

-- Location: LCCOMB_X2_Y14_N26
\up_debouncer|t[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~14_combout\ = (\up_debouncer|t\(9) & (\up_debouncer|t\(10) & (\up_debouncer|t\(8) & \up_debouncer|t\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(9),
	datab => \up_debouncer|t\(10),
	datac => \up_debouncer|t\(8),
	datad => \up_debouncer|t\(13),
	combout => \up_debouncer|t[1]~14_combout\);

-- Location: LCCOMB_X1_Y14_N8
\up_debouncer|t[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[2]~21_combout\ = (\up_debouncer|t\(2) & (\up_debouncer|t[1]~20\ $ (GND))) # (!\up_debouncer|t\(2) & (!\up_debouncer|t[1]~20\ & VCC))
-- \up_debouncer|t[2]~22\ = CARRY((\up_debouncer|t\(2) & !\up_debouncer|t[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(2),
	datad => VCC,
	cin => \up_debouncer|t[1]~20\,
	combout => \up_debouncer|t[2]~21_combout\,
	cout => \up_debouncer|t[2]~22\);

-- Location: FF_X1_Y14_N9
\up_debouncer|t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[2]~21_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(2));

-- Location: LCCOMB_X1_Y14_N2
\up_debouncer|t[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~15_combout\ = (!\up_debouncer|t\(3) & (!\up_debouncer|t\(2) & (!\up_debouncer|t\(0) & !\up_debouncer|t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(3),
	datab => \up_debouncer|t\(2),
	datac => \up_debouncer|t\(0),
	datad => \up_debouncer|t\(1),
	combout => \up_debouncer|t[1]~15_combout\);

-- Location: LCCOMB_X2_Y14_N22
\up_debouncer|t[1]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~36_combout\ = (\up_debouncer|t\(4) & (\up_debouncer|t[1]~16_combout\ & \up_debouncer|t[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(4),
	datac => \up_debouncer|t[1]~16_combout\,
	datad => \up_debouncer|t[1]~15_combout\,
	combout => \up_debouncer|t[1]~36_combout\);

-- Location: LCCOMB_X2_Y14_N24
\up_debouncer|t[1]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~35_combout\ = (!\up_debouncer|t\(11) & (!\up_debouncer|t\(12) & (\up_debouncer|next_state.start_168~combout\ $ (\up_debouncer|prev_state.start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(11),
	datab => \up_debouncer|t\(12),
	datac => \up_debouncer|next_state.start_168~combout\,
	datad => \up_debouncer|prev_state.start~q\,
	combout => \up_debouncer|t[1]~35_combout\);

-- Location: LCCOMB_X2_Y14_N18
\up_debouncer|t[1]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~37_combout\ = (\up_debouncer|WideOr0~0_combout\) # (((!\up_debouncer|t[1]~35_combout\) # (!\up_debouncer|t[1]~36_combout\)) # (!\up_debouncer|t[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|WideOr0~0_combout\,
	datab => \up_debouncer|t[1]~14_combout\,
	datac => \up_debouncer|t[1]~36_combout\,
	datad => \up_debouncer|t[1]~35_combout\,
	combout => \up_debouncer|t[1]~37_combout\);

-- Location: FF_X1_Y14_N5
\up_debouncer|t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[0]~17_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(0));

-- Location: LCCOMB_X1_Y14_N6
\up_debouncer|t[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~19_combout\ = (\up_debouncer|t\(1) & (!\up_debouncer|t[0]~18\)) # (!\up_debouncer|t\(1) & ((\up_debouncer|t[0]~18\) # (GND)))
-- \up_debouncer|t[1]~20\ = CARRY((!\up_debouncer|t[0]~18\) # (!\up_debouncer|t\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(1),
	datad => VCC,
	cin => \up_debouncer|t[0]~18\,
	combout => \up_debouncer|t[1]~19_combout\,
	cout => \up_debouncer|t[1]~20\);

-- Location: FF_X1_Y14_N7
\up_debouncer|t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[1]~19_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(1));

-- Location: LCCOMB_X1_Y14_N10
\up_debouncer|t[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[3]~23_combout\ = (\up_debouncer|t\(3) & (!\up_debouncer|t[2]~22\)) # (!\up_debouncer|t\(3) & ((\up_debouncer|t[2]~22\) # (GND)))
-- \up_debouncer|t[3]~24\ = CARRY((!\up_debouncer|t[2]~22\) # (!\up_debouncer|t\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(3),
	datad => VCC,
	cin => \up_debouncer|t[2]~22\,
	combout => \up_debouncer|t[3]~23_combout\,
	cout => \up_debouncer|t[3]~24\);

-- Location: FF_X1_Y14_N11
\up_debouncer|t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[3]~23_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(3));

-- Location: LCCOMB_X1_Y14_N12
\up_debouncer|t[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[4]~25_combout\ = (\up_debouncer|t\(4) & (\up_debouncer|t[3]~24\ $ (GND))) # (!\up_debouncer|t\(4) & (!\up_debouncer|t[3]~24\ & VCC))
-- \up_debouncer|t[4]~26\ = CARRY((\up_debouncer|t\(4) & !\up_debouncer|t[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(4),
	datad => VCC,
	cin => \up_debouncer|t[3]~24\,
	combout => \up_debouncer|t[4]~25_combout\,
	cout => \up_debouncer|t[4]~26\);

-- Location: LCCOMB_X1_Y14_N14
\up_debouncer|t[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[5]~27_combout\ = (\up_debouncer|t\(5) & (!\up_debouncer|t[4]~26\)) # (!\up_debouncer|t\(5) & ((\up_debouncer|t[4]~26\) # (GND)))
-- \up_debouncer|t[5]~28\ = CARRY((!\up_debouncer|t[4]~26\) # (!\up_debouncer|t\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|t\(5),
	datad => VCC,
	cin => \up_debouncer|t[4]~26\,
	combout => \up_debouncer|t[5]~27_combout\,
	cout => \up_debouncer|t[5]~28\);

-- Location: FF_X1_Y14_N15
\up_debouncer|t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[5]~27_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(5));

-- Location: FF_X1_Y14_N17
\up_debouncer|t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[6]~29_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(6));

-- Location: LCCOMB_X2_Y14_N4
\up_debouncer|t[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|t[1]~16_combout\ = (!\up_debouncer|t\(5) & (!\up_debouncer|t\(6) & !\up_debouncer|t\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(5),
	datac => \up_debouncer|t\(6),
	datad => \up_debouncer|t\(7),
	combout => \up_debouncer|t[1]~16_combout\);

-- Location: FF_X1_Y14_N13
\up_debouncer|t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \up_debouncer|t[4]~25_combout\,
	clrn => \rst~input_o\,
	sclr => \up_debouncer|WideOr0~combout\,
	ena => \up_debouncer|t[1]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|t\(4));

-- Location: LCCOMB_X2_Y14_N28
\up_debouncer|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|LessThan0~0_combout\ = (\up_debouncer|t[1]~14_combout\ & (((!\up_debouncer|t[1]~15_combout\ & \up_debouncer|t\(4))) # (!\up_debouncer|t[1]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t[1]~15_combout\,
	datab => \up_debouncer|t[1]~16_combout\,
	datac => \up_debouncer|t[1]~14_combout\,
	datad => \up_debouncer|t\(4),
	combout => \up_debouncer|LessThan0~0_combout\);

-- Location: FF_X2_Y14_N9
\up_debouncer|prev_state.count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \up_debouncer|next_state.count_157~combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|prev_state.count~q\);

-- Location: LCCOMB_X2_Y14_N10
\up_debouncer|next_state.start~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|next_state.start~0_combout\ = (\up~input_o\) # ((\up_debouncer|t\(13) & ((\up_debouncer|t\(11)) # (\up_debouncer|t\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|t\(11),
	datab => \up_debouncer|t\(12),
	datac => \up~input_o\,
	datad => \up_debouncer|t\(13),
	combout => \up_debouncer|next_state.start~0_combout\);

-- Location: LCCOMB_X2_Y14_N2
\up_debouncer|next_state.start~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|next_state.start~1_combout\ = (\up_debouncer|LessThan0~0_combout\) # ((\up_debouncer|next_state.start~0_combout\) # (!\up_debouncer|prev_state.count~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_debouncer|LessThan0~0_combout\,
	datac => \up_debouncer|prev_state.count~q\,
	datad => \up_debouncer|next_state.start~0_combout\,
	combout => \up_debouncer|next_state.start~1_combout\);

-- Location: CLKCTRL_G2
\up_debouncer|next_state.start~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \up_debouncer|next_state.start~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \up_debouncer|next_state.start~1clkctrl_outclk\);

-- Location: LCCOMB_X2_Y14_N20
\up_debouncer|next_state.hold_146\ : cycloneiii_lcell_comb
-- Equation(s):
-- \up_debouncer|next_state.hold_146~combout\ = (GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & (!\up_debouncer|Selector0~0_combout\)) # (!GLOBAL(\up_debouncer|next_state.start~1clkctrl_outclk\) & ((\up_debouncer|next_state.hold_146~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|Selector0~0_combout\,
	datac => \up_debouncer|next_state.hold_146~combout\,
	datad => \up_debouncer|next_state.start~1clkctrl_outclk\,
	combout => \up_debouncer|next_state.hold_146~combout\);

-- Location: FF_X2_Y14_N1
\up_debouncer|prev_state.hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \up_debouncer|next_state.hold_146~combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \up_debouncer|prev_state.hold~q\);

-- Location: LCCOMB_X2_Y14_N6
\reference_value[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reference_value[1]~1_combout\ = (\rst~input_o\ & ((\down_debouncer|prev_state.hold~q\) # (\up_debouncer|prev_state.hold~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \down_debouncer|prev_state.hold~q\,
	datad => \up_debouncer|prev_state.hold~q\,
	combout => \reference_value[1]~1_combout\);

-- Location: CLKCTRL_G3
\reference_value[1]~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reference_value[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reference_value[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X3_Y20_N0
\reference_value[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- reference_value(0) = (GLOBAL(\reference_value[1]~1clkctrl_outclk\) & ((\Add0~0_combout\))) # (!GLOBAL(\reference_value[1]~1clkctrl_outclk\) & (reference_value(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reference_value(0),
	datac => \Add0~0_combout\,
	datad => \reference_value[1]~1clkctrl_outclk\,
	combout => reference_value(0));

-- Location: LCCOMB_X3_Y21_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\up_debouncer|prev_state.hold~q\ & ((reference_value(1) & (!\Add0~1\)) # (!reference_value(1) & ((\Add0~1\) # (GND))))) # (!\up_debouncer|prev_state.hold~q\ & ((reference_value(1) & (\Add0~1\ & VCC)) # (!reference_value(1) & 
-- (!\Add0~1\))))
-- \Add0~3\ = CARRY((\up_debouncer|prev_state.hold~q\ & ((!\Add0~1\) # (!reference_value(1)))) # (!\up_debouncer|prev_state.hold~q\ & (!reference_value(1) & !\Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|prev_state.hold~q\,
	datab => reference_value(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X3_Y21_N26
\reference_value[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- reference_value(1) = (GLOBAL(\reference_value[1]~1clkctrl_outclk\) & (\Add0~2_combout\)) # (!GLOBAL(\reference_value[1]~1clkctrl_outclk\) & ((reference_value(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datac => reference_value(1),
	datad => \reference_value[1]~1clkctrl_outclk\,
	combout => reference_value(1));

-- Location: LCCOMB_X3_Y21_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\up_debouncer|prev_state.hold~q\ $ (reference_value(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\up_debouncer|prev_state.hold~q\ & (reference_value(2) & !\Add0~3\)) # (!\up_debouncer|prev_state.hold~q\ & ((reference_value(2)) # (!\Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|prev_state.hold~q\,
	datab => reference_value(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X3_Y21_N12
\reference_value[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- reference_value(2) = (GLOBAL(\reference_value[1]~1clkctrl_outclk\) & ((\Add0~4_combout\))) # (!GLOBAL(\reference_value[1]~1clkctrl_outclk\) & (reference_value(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(2),
	datab => \Add0~4_combout\,
	datad => \reference_value[1]~1clkctrl_outclk\,
	combout => reference_value(2));

-- Location: LCCOMB_X3_Y21_N22
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\up_debouncer|prev_state.hold~q\ & ((reference_value(3) & (!\Add0~5\)) # (!reference_value(3) & ((\Add0~5\) # (GND))))) # (!\up_debouncer|prev_state.hold~q\ & ((reference_value(3) & (\Add0~5\ & VCC)) # (!reference_value(3) & 
-- (!\Add0~5\))))
-- \Add0~7\ = CARRY((\up_debouncer|prev_state.hold~q\ & ((!\Add0~5\) # (!reference_value(3)))) # (!\up_debouncer|prev_state.hold~q\ & (!reference_value(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|prev_state.hold~q\,
	datab => reference_value(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X3_Y21_N10
\reference_value[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- reference_value(3) = (GLOBAL(\reference_value[1]~1clkctrl_outclk\) & ((\Add0~6_combout\))) # (!GLOBAL(\reference_value[1]~1clkctrl_outclk\) & (reference_value(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(3),
	datac => \Add0~6_combout\,
	datad => \reference_value[1]~1clkctrl_outclk\,
	combout => reference_value(3));

-- Location: LCCOMB_X2_Y21_N14
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (reference_value(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!reference_value(4) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((reference_value(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X2_Y21_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X2_Y14_N16
\reference_value[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reference_value[1]~0_combout\ = (\down_debouncer|prev_state.hold~q\) # (\up_debouncer|prev_state.hold~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \down_debouncer|prev_state.hold~q\,
	datad => \up_debouncer|prev_state.hold~q\,
	combout => \reference_value[1]~0_combout\);

-- Location: CLKCTRL_G1
\reference_value[1]~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reference_value[1]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reference_value[1]~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N26
\tens_digit[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tens_digit(1) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((tens_digit(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => tens_digit(1),
	datad => \reference_value[1]~0clkctrl_outclk\,
	combout => tens_digit(1));

-- Location: LCCOMB_X2_Y21_N20
\Div0|auto_generated|divider|divider|StageOut[18]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X2_Y21_N0
\Div0|auto_generated|divider|divider|StageOut[17]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X2_Y21_N2
\Div0|auto_generated|divider|divider|StageOut[16]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (reference_value(2) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reference_value(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X2_Y21_N4
\Div0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (reference_value(1) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reference_value(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X2_Y21_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~7_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X2_Y21_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X2_Y21_N26
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X2_Y21_N28
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X2_Y21_N30
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X2_Y21_N8
\tens_digit[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- tens_digit(0) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (tens_digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => tens_digit(0),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \reference_value[1]~0clkctrl_outclk\,
	combout => tens_digit(0));

-- Location: LCCOMB_X1_Y21_N20
\tens_digit_display|decimal_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tens_digit_display|decimal_out[0]~0_combout\ = (tens_digit(1)) # (tens_digit(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tens_digit(1),
	datad => tens_digit(0),
	combout => \tens_digit_display|decimal_out[0]~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\tens_digit_display|decimal_out[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tens_digit_display|decimal_out[3]~1_combout\ = (!tens_digit(1) & tens_digit(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tens_digit(1),
	datad => tens_digit(0),
	combout => \tens_digit_display|decimal_out[3]~1_combout\);

-- Location: LCCOMB_X1_Y21_N12
\tens_digit_display|decimal_out[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tens_digit_display|decimal_out[0]~2_combout\ = (tens_digit(0)) # (!tens_digit(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tens_digit(1),
	datad => tens_digit(0),
	combout => \tens_digit_display|decimal_out[0]~2_combout\);

-- Location: LCCOMB_X3_Y21_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (reference_value(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!reference_value(3) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!reference_value(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X3_Y21_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X4_Y21_N28
\Mod0|auto_generated|divider|divider|StageOut[16]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & reference_value(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => reference_value(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\);

-- Location: LCCOMB_X3_Y21_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \up_debouncer|prev_state.hold~q\ $ (\Add0~7\ $ (reference_value(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_debouncer|prev_state.hold~q\,
	datad => reference_value(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X3_Y21_N30
\reference_value[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- reference_value(4) = (GLOBAL(\reference_value[1]~1clkctrl_outclk\) & ((\Add0~8_combout\))) # (!GLOBAL(\reference_value[1]~1clkctrl_outclk\) & (reference_value(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(4),
	datac => \reference_value[1]~1clkctrl_outclk\,
	datad => \Add0~8_combout\,
	combout => reference_value(4));

-- Location: LCCOMB_X4_Y21_N16
\Mod0|auto_generated|divider|divider|StageOut[18]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & reference_value(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => reference_value(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\);

-- Location: LCCOMB_X3_Y21_N28
\Mod0|auto_generated|divider|divider|StageOut[17]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\);

-- Location: LCCOMB_X4_Y21_N20
\Mod0|auto_generated|divider|divider|StageOut[15]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\ = (reference_value(1) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\);

-- Location: LCCOMB_X4_Y21_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~3_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X4_Y21_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X4_Y21_N10
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X4_Y21_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X4_Y21_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X4_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[22]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\);

-- Location: LCCOMB_X4_Y21_N22
\units_digit[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- units_digit(2) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((\Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\))) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (units_digit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => units_digit(2),
	datac => \reference_value[1]~0clkctrl_outclk\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[22]~8_combout\,
	combout => units_digit(2));

-- Location: LCCOMB_X4_Y21_N24
\Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~7_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X4_Y21_N18
\units_digit[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- units_digit(3) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (units_digit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => units_digit(3),
	datac => \reference_value[1]~0clkctrl_outclk\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	combout => units_digit(3));

-- Location: LCCOMB_X4_Y21_N2
\Mod0|auto_generated|divider|divider|StageOut[21]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (reference_value(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reference_value(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\);

-- Location: LCCOMB_X4_Y21_N4
\units_digit[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- units_digit(1) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((\Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\))) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (units_digit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => units_digit(1),
	datac => \reference_value[1]~0clkctrl_outclk\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[21]~9_combout\,
	combout => units_digit(1));

-- Location: LCCOMB_X3_Y20_N10
\units_digit[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- units_digit(0) = (\rst~input_o\ & ((GLOBAL(\reference_value[1]~0clkctrl_outclk\) & ((reference_value(0)))) # (!GLOBAL(\reference_value[1]~0clkctrl_outclk\) & (units_digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(0),
	datab => reference_value(0),
	datac => \rst~input_o\,
	datad => \reference_value[1]~0clkctrl_outclk\,
	combout => units_digit(0));

-- Location: LCCOMB_X3_Y20_N16
\units_digit_display|decimal_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[0]~0_combout\ = (units_digit(0) & (!units_digit(3) & (units_digit(2) $ (!units_digit(1))))) # (!units_digit(0) & (!units_digit(1) & (units_digit(2) $ (!units_digit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[0]~0_combout\);

-- Location: LCCOMB_X3_Y20_N26
\units_digit_display|decimal_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[1]~1_combout\ = (units_digit(2) & (units_digit(0) & (units_digit(3) $ (units_digit(1))))) # (!units_digit(2) & (!units_digit(3) & ((units_digit(1)) # (units_digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[1]~1_combout\);

-- Location: LCCOMB_X3_Y20_N28
\units_digit_display|decimal_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[2]~2_combout\ = (units_digit(1) & (((!units_digit(3) & units_digit(0))))) # (!units_digit(1) & ((units_digit(2) & (!units_digit(3))) # (!units_digit(2) & ((units_digit(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[2]~2_combout\);

-- Location: LCCOMB_X3_Y20_N14
\units_digit_display|decimal_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[3]~3_combout\ = (units_digit(1) & ((units_digit(2) & ((units_digit(0)))) # (!units_digit(2) & (units_digit(3) & !units_digit(0))))) # (!units_digit(1) & (!units_digit(3) & (units_digit(2) $ (units_digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[3]~3_combout\);

-- Location: LCCOMB_X3_Y20_N24
\units_digit_display|decimal_out[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[4]~4_combout\ = (units_digit(2) & (((!units_digit(1) & units_digit(0))) # (!units_digit(3)))) # (!units_digit(2) & ((units_digit(3)) # ((units_digit(0)) # (!units_digit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[4]~4_combout\);

-- Location: LCCOMB_X3_Y20_N22
\units_digit_display|decimal_out[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[5]~5_combout\ = (units_digit(3) & ((units_digit(0) & ((units_digit(1)))) # (!units_digit(0) & (units_digit(2))))) # (!units_digit(3) & (units_digit(2) & (units_digit(1) $ (units_digit(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[5]~5_combout\);

-- Location: LCCOMB_X3_Y20_N12
\units_digit_display|decimal_out[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \units_digit_display|decimal_out[6]~6_combout\ = (units_digit(2) & (!units_digit(1) & (units_digit(3) $ (!units_digit(0))))) # (!units_digit(2) & (units_digit(0) & (units_digit(3) $ (!units_digit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => units_digit(2),
	datab => units_digit(3),
	datac => units_digit(1),
	datad => units_digit(0),
	combout => \units_digit_display|decimal_out[6]~6_combout\);

ww_display1(0) <= \display1[0]~output_o\;

ww_display1(1) <= \display1[1]~output_o\;

ww_display1(2) <= \display1[2]~output_o\;

ww_display1(3) <= \display1[3]~output_o\;

ww_display1(4) <= \display1[4]~output_o\;

ww_display1(5) <= \display1[5]~output_o\;

ww_display1(6) <= \display1[6]~output_o\;

ww_display2(0) <= \display2[0]~output_o\;

ww_display2(1) <= \display2[1]~output_o\;

ww_display2(2) <= \display2[2]~output_o\;

ww_display2(3) <= \display2[3]~output_o\;

ww_display2(4) <= \display2[4]~output_o\;

ww_display2(5) <= \display2[5]~output_o\;

ww_display2(6) <= \display2[6]~output_o\;
END structure;


