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

-- DATE "08/17/2016 11:44:37"

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

ENTITY 	light_rotator IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	stop : IN std_logic;
	ssd_display : OUT std_logic_vector(6 DOWNTO 0)
	);
END light_rotator;

-- Design Ports Information
-- stop	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_display[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF light_rotator IS
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
SIGNAL ww_stop : std_logic;
SIGNAL ww_ssd_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \lr_freq_divider|state~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lr_freq_divider|Add0~4_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~14_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~32_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~34_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~38_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~42_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~1_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~8_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~16_combout\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ssd_display[0]~output_o\ : std_logic;
SIGNAL \ssd_display[1]~output_o\ : std_logic;
SIGNAL \ssd_display[2]~output_o\ : std_logic;
SIGNAL \ssd_display[3]~output_o\ : std_logic;
SIGNAL \ssd_display[4]~output_o\ : std_logic;
SIGNAL \ssd_display[5]~output_o\ : std_logic;
SIGNAL \ssd_display[6]~output_o\ : std_logic;
SIGNAL \lr_freq_divider|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \lr_freq_divider|Add0~1\ : std_logic;
SIGNAL \lr_freq_divider|Add0~3\ : std_logic;
SIGNAL \lr_freq_divider|Add0~5\ : std_logic;
SIGNAL \lr_freq_divider|Add0~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~7\ : std_logic;
SIGNAL \lr_freq_divider|Add0~8_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~9\ : std_logic;
SIGNAL \lr_freq_divider|Add0~10_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~13\ : std_logic;
SIGNAL \lr_freq_divider|Add0~15\ : std_logic;
SIGNAL \lr_freq_divider|Add0~16_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~17\ : std_logic;
SIGNAL \lr_freq_divider|Add0~19\ : std_logic;
SIGNAL \lr_freq_divider|Add0~20_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~13_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~21\ : std_logic;
SIGNAL \lr_freq_divider|Add0~22_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~12_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~23\ : std_logic;
SIGNAL \lr_freq_divider|Add0~24_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~11_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~25\ : std_logic;
SIGNAL \lr_freq_divider|Add0~27\ : std_logic;
SIGNAL \lr_freq_divider|Add0~28_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~2_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~6_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~26_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~10_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~29\ : std_logic;
SIGNAL \lr_freq_divider|Add0~30_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~9_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~2_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~31\ : std_logic;
SIGNAL \lr_freq_divider|Add0~33\ : std_logic;
SIGNAL \lr_freq_divider|Add0~35\ : std_logic;
SIGNAL \lr_freq_divider|Add0~36_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~7_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~37\ : std_logic;
SIGNAL \lr_freq_divider|Add0~39\ : std_logic;
SIGNAL \lr_freq_divider|Add0~40_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~17_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~41\ : std_logic;
SIGNAL \lr_freq_divider|Add0~43\ : std_logic;
SIGNAL \lr_freq_divider|Add0~44_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~45\ : std_logic;
SIGNAL \lr_freq_divider|Add0~46_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~15_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~0_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~18_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~3_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~4_combout\ : std_logic;
SIGNAL \lr_freq_divider|counter~14_combout\ : std_logic;
SIGNAL \lr_freq_divider|Add0~11\ : std_logic;
SIGNAL \lr_freq_divider|Add0~12_combout\ : std_logic;
SIGNAL \lr_freq_divider|Equal0~5_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~0_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~feeder_combout\ : std_logic;
SIGNAL \lr_freq_divider|state~q\ : std_logic;
SIGNAL \lr_freq_divider|state~clkctrl_outclk\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \t[1]~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \prev_state.A~q\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \t[0]~3_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \prev_state.AB~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \prev_state.B~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \prev_state.BC~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \prev_state.C~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \prev_state.CD~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \prev_state.D~q\ : std_logic;
SIGNAL \next_state.DE~0_combout\ : std_logic;
SIGNAL \prev_state.DE~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL t : std_logic_vector(1 DOWNTO 0);
SIGNAL \lr_freq_divider|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_prev_state.DE~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_stop <= stop;
ssd_display <= ww_ssd_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\lr_freq_divider|state~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \lr_freq_divider|state~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_prev_state.DE~q\ <= NOT \prev_state.DE~q\;

-- Location: LCCOMB_X10_Y26_N12
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

-- Location: LCCOMB_X10_Y26_N22
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

-- Location: LCCOMB_X10_Y25_N8
\lr_freq_divider|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~32_combout\ = (\lr_freq_divider|counter\(16) & (\lr_freq_divider|Add0~31\ $ (GND))) # (!\lr_freq_divider|counter\(16) & (!\lr_freq_divider|Add0~31\ & VCC))
-- \lr_freq_divider|Add0~33\ = CARRY((\lr_freq_divider|counter\(16) & !\lr_freq_divider|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(16),
	datad => VCC,
	cin => \lr_freq_divider|Add0~31\,
	combout => \lr_freq_divider|Add0~32_combout\,
	cout => \lr_freq_divider|Add0~33\);

-- Location: LCCOMB_X10_Y25_N10
\lr_freq_divider|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~34_combout\ = (\lr_freq_divider|counter\(17) & (!\lr_freq_divider|Add0~33\)) # (!\lr_freq_divider|counter\(17) & ((\lr_freq_divider|Add0~33\) # (GND)))
-- \lr_freq_divider|Add0~35\ = CARRY((!\lr_freq_divider|Add0~33\) # (!\lr_freq_divider|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(17),
	datad => VCC,
	cin => \lr_freq_divider|Add0~33\,
	combout => \lr_freq_divider|Add0~34_combout\,
	cout => \lr_freq_divider|Add0~35\);

-- Location: LCCOMB_X10_Y25_N14
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

-- Location: LCCOMB_X10_Y25_N18
\lr_freq_divider|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~42_combout\ = (\lr_freq_divider|counter\(21) & (!\lr_freq_divider|Add0~41\)) # (!\lr_freq_divider|counter\(21) & ((\lr_freq_divider|Add0~41\) # (GND)))
-- \lr_freq_divider|Add0~43\ = CARRY((!\lr_freq_divider|Add0~41\) # (!\lr_freq_divider|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(21),
	datad => VCC,
	cin => \lr_freq_divider|Add0~41\,
	combout => \lr_freq_divider|Add0~42_combout\,
	cout => \lr_freq_divider|Add0~43\);

-- Location: FF_X11_Y25_N7
\lr_freq_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(21));

-- Location: FF_X10_Y25_N31
\lr_freq_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(19));

-- Location: FF_X11_Y25_N5
\lr_freq_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(17));

-- Location: LCCOMB_X11_Y25_N26
\lr_freq_divider|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~1_combout\ = (\lr_freq_divider|counter\(17) & (\lr_freq_divider|counter\(18) & (\lr_freq_divider|counter\(20) & \lr_freq_divider|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(17),
	datab => \lr_freq_divider|counter\(18),
	datac => \lr_freq_divider|counter\(20),
	datad => \lr_freq_divider|counter\(19),
	combout => \lr_freq_divider|Equal0~1_combout\);

-- Location: FF_X10_Y25_N9
\lr_freq_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(16));

-- Location: FF_X10_Y26_N23
\lr_freq_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(7));

-- Location: FF_X10_Y26_N13
\lr_freq_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(2));

-- Location: LCCOMB_X10_Y25_N30
\lr_freq_divider|counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~6_combout\ = (\lr_freq_divider|Add0~38_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Add0~38_combout\,
	datad => \lr_freq_divider|Equal0~6_combout\,
	combout => \lr_freq_divider|counter~6_combout\);

-- Location: LCCOMB_X11_Y25_N4
\lr_freq_divider|counter~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~8_combout\ = (\lr_freq_divider|Add0~34_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~4_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~34_combout\,
	combout => \lr_freq_divider|counter~8_combout\);

-- Location: LCCOMB_X11_Y25_N6
\lr_freq_divider|counter~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~16_combout\ = (\lr_freq_divider|Add0~42_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~4_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~42_combout\,
	combout => \lr_freq_divider|counter~16_combout\);

-- Location: IOIBUF_X19_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G12
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

-- Location: IOOBUF_X26_Y29_N16
\ssd_display[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd_display[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\ssd_display[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ssd_display[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\ssd_display[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_prev_state.DE~q\,
	devoe => ww_devoe,
	o => \ssd_display[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\ssd_display[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_display[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\ssd_display[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_display[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\ssd_display[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_display[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\ssd_display[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_display[6]~output_o\);

-- Location: LCCOMB_X10_Y26_N8
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

-- Location: FF_X10_Y26_N9
\lr_freq_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(0));

-- Location: LCCOMB_X10_Y26_N10
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

-- Location: LCCOMB_X10_Y26_N14
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

-- Location: FF_X10_Y26_N15
\lr_freq_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(3));

-- Location: LCCOMB_X10_Y26_N16
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

-- Location: FF_X10_Y26_N17
\lr_freq_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(4));

-- Location: LCCOMB_X10_Y26_N18
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

-- Location: LCCOMB_X10_Y26_N20
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

-- Location: LCCOMB_X10_Y26_N24
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

-- Location: FF_X10_Y26_N25
\lr_freq_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(8));

-- Location: LCCOMB_X10_Y26_N26
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

-- Location: LCCOMB_X10_Y26_N28
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

-- Location: LCCOMB_X10_Y26_N0
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

-- Location: FF_X10_Y26_N1
\lr_freq_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(10));

-- Location: LCCOMB_X10_Y26_N30
\lr_freq_divider|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~22_combout\ = (\lr_freq_divider|counter\(11) & (!\lr_freq_divider|Add0~21\)) # (!\lr_freq_divider|counter\(11) & ((\lr_freq_divider|Add0~21\) # (GND)))
-- \lr_freq_divider|Add0~23\ = CARRY((!\lr_freq_divider|Add0~21\) # (!\lr_freq_divider|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(11),
	datad => VCC,
	cin => \lr_freq_divider|Add0~21\,
	combout => \lr_freq_divider|Add0~22_combout\,
	cout => \lr_freq_divider|Add0~23\);

-- Location: LCCOMB_X11_Y25_N0
\lr_freq_divider|counter~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~12_combout\ = (\lr_freq_divider|Add0~22_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Add0~22_combout\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|counter~12_combout\);

-- Location: FF_X11_Y25_N1
\lr_freq_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(11));

-- Location: LCCOMB_X10_Y25_N0
\lr_freq_divider|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~24_combout\ = (\lr_freq_divider|counter\(12) & (\lr_freq_divider|Add0~23\ $ (GND))) # (!\lr_freq_divider|counter\(12) & (!\lr_freq_divider|Add0~23\ & VCC))
-- \lr_freq_divider|Add0~25\ = CARRY((\lr_freq_divider|counter\(12) & !\lr_freq_divider|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(12),
	datad => VCC,
	cin => \lr_freq_divider|Add0~23\,
	combout => \lr_freq_divider|Add0~24_combout\,
	cout => \lr_freq_divider|Add0~25\);

-- Location: LCCOMB_X11_Y25_N22
\lr_freq_divider|counter~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~11_combout\ = (\lr_freq_divider|Add0~24_combout\ & (((!\lr_freq_divider|Equal0~4_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Add0~24_combout\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|counter~11_combout\);

-- Location: FF_X11_Y25_N23
\lr_freq_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(12));

-- Location: LCCOMB_X10_Y25_N2
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

-- Location: LCCOMB_X10_Y25_N4
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

-- Location: FF_X10_Y25_N5
\lr_freq_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(14));

-- Location: FF_X10_Y26_N11
\lr_freq_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(1));

-- Location: LCCOMB_X10_Y26_N6
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

-- Location: LCCOMB_X10_Y25_N26
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

-- Location: FF_X10_Y25_N27
\lr_freq_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(13));

-- Location: LCCOMB_X10_Y25_N6
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

-- Location: LCCOMB_X10_Y25_N24
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

-- Location: FF_X10_Y25_N25
\lr_freq_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(15));

-- Location: LCCOMB_X11_Y25_N14
\lr_freq_divider|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~2_combout\ = (!\lr_freq_divider|counter\(16) & (!\lr_freq_divider|counter\(14) & (\lr_freq_divider|counter\(13) & \lr_freq_divider|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(16),
	datab => \lr_freq_divider|counter\(14),
	datac => \lr_freq_divider|counter\(13),
	datad => \lr_freq_divider|counter\(15),
	combout => \lr_freq_divider|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y25_N12
\lr_freq_divider|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~36_combout\ = (\lr_freq_divider|counter\(18) & (\lr_freq_divider|Add0~35\ $ (GND))) # (!\lr_freq_divider|counter\(18) & (!\lr_freq_divider|Add0~35\ & VCC))
-- \lr_freq_divider|Add0~37\ = CARRY((\lr_freq_divider|counter\(18) & !\lr_freq_divider|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(18),
	datad => VCC,
	cin => \lr_freq_divider|Add0~35\,
	combout => \lr_freq_divider|Add0~36_combout\,
	cout => \lr_freq_divider|Add0~37\);

-- Location: LCCOMB_X11_Y25_N16
\lr_freq_divider|counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~7_combout\ = (\lr_freq_divider|Add0~36_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~4_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~36_combout\,
	combout => \lr_freq_divider|counter~7_combout\);

-- Location: FF_X11_Y25_N17
\lr_freq_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(18));

-- Location: LCCOMB_X10_Y25_N16
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

-- Location: LCCOMB_X10_Y25_N28
\lr_freq_divider|counter~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~17_combout\ = (\lr_freq_divider|Add0~40_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Equal0~4_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~40_combout\,
	combout => \lr_freq_divider|counter~17_combout\);

-- Location: FF_X10_Y25_N29
\lr_freq_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(20));

-- Location: LCCOMB_X10_Y25_N20
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

-- Location: FF_X10_Y25_N21
\lr_freq_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(22));

-- Location: LCCOMB_X10_Y25_N22
\lr_freq_divider|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Add0~46_combout\ = \lr_freq_divider|counter\(23) $ (\lr_freq_divider|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \lr_freq_divider|counter\(23),
	cin => \lr_freq_divider|Add0~45\,
	combout => \lr_freq_divider|Add0~46_combout\);

-- Location: LCCOMB_X11_Y25_N10
\lr_freq_divider|counter~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~15_combout\ = (\lr_freq_divider|Add0~46_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~5_combout\)) # (!\lr_freq_divider|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~4_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|Equal0~6_combout\,
	datad => \lr_freq_divider|Add0~46_combout\,
	combout => \lr_freq_divider|counter~15_combout\);

-- Location: FF_X11_Y25_N11
\lr_freq_divider|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(23));

-- Location: LCCOMB_X11_Y25_N30
\lr_freq_divider|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~0_combout\ = (\lr_freq_divider|counter\(21) & (\lr_freq_divider|counter\(23) & (!\lr_freq_divider|counter\(22) & \lr_freq_divider|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(21),
	datab => \lr_freq_divider|counter\(23),
	datac => \lr_freq_divider|counter\(22),
	datad => \lr_freq_divider|counter\(0),
	combout => \lr_freq_divider|Equal0~0_combout\);

-- Location: FF_X10_Y26_N27
\lr_freq_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(9));

-- Location: LCCOMB_X11_Y25_N28
\lr_freq_divider|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~3_combout\ = (\lr_freq_divider|counter\(12) & (\lr_freq_divider|counter\(11) & (!\lr_freq_divider|counter\(9) & \lr_freq_divider|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|counter\(12),
	datab => \lr_freq_divider|counter\(11),
	datac => \lr_freq_divider|counter\(9),
	datad => \lr_freq_divider|counter\(10),
	combout => \lr_freq_divider|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y25_N12
\lr_freq_divider|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|Equal0~4_combout\ = (\lr_freq_divider|Equal0~1_combout\ & (\lr_freq_divider|Equal0~2_combout\ & (\lr_freq_divider|Equal0~0_combout\ & \lr_freq_divider|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~1_combout\,
	datab => \lr_freq_divider|Equal0~2_combout\,
	datac => \lr_freq_divider|Equal0~0_combout\,
	datad => \lr_freq_divider|Equal0~3_combout\,
	combout => \lr_freq_divider|Equal0~4_combout\);

-- Location: LCCOMB_X10_Y26_N2
\lr_freq_divider|counter~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|counter~14_combout\ = (\lr_freq_divider|Add0~10_combout\ & (((!\lr_freq_divider|Equal0~6_combout\) # (!\lr_freq_divider|Equal0~4_combout\)) # (!\lr_freq_divider|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~5_combout\,
	datab => \lr_freq_divider|Add0~10_combout\,
	datac => \lr_freq_divider|Equal0~4_combout\,
	datad => \lr_freq_divider|Equal0~6_combout\,
	combout => \lr_freq_divider|counter~14_combout\);

-- Location: FF_X10_Y26_N3
\lr_freq_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|counter~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(5));

-- Location: FF_X10_Y26_N21
\lr_freq_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|counter\(6));

-- Location: LCCOMB_X10_Y26_N4
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

-- Location: LCCOMB_X11_Y25_N20
\lr_freq_divider|state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lr_freq_divider|state~0_combout\ = \lr_freq_divider|state~q\ $ (((\lr_freq_divider|Equal0~6_combout\ & (\lr_freq_divider|Equal0~5_combout\ & \lr_freq_divider|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lr_freq_divider|Equal0~6_combout\,
	datab => \lr_freq_divider|Equal0~5_combout\,
	datac => \lr_freq_divider|state~q\,
	datad => \lr_freq_divider|Equal0~4_combout\,
	combout => \lr_freq_divider|state~0_combout\);

-- Location: LCCOMB_X11_Y25_N18
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

-- Location: FF_X11_Y25_N19
\lr_freq_divider|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \lr_freq_divider|state~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lr_freq_divider|state~q\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X21_Y28_N8
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\prev_state.BC~q\ & (!\prev_state.C~q\ & !\prev_state.CD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prev_state.BC~q\,
	datac => \prev_state.C~q\,
	datad => \prev_state.CD~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X21_Y28_N12
\t[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[1]~2_combout\ = (!\prev_state.DE~q\ & ((t(0) & ((!\WideOr0~1_combout\) # (!t(1)))) # (!t(0) & (t(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.DE~q\,
	datac => t(1),
	datad => \WideOr0~1_combout\,
	combout => \t[1]~2_combout\);

-- Location: FF_X21_Y28_N13
\t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \t[1]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(1));

-- Location: LCCOMB_X21_Y28_N20
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (t(0) & ((t(1)) # ((!\prev_state.DE~q\ & \prev_state.A~q\)))) # (!t(0) & (!\prev_state.DE~q\ & (\prev_state.A~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.DE~q\,
	datac => \prev_state.A~q\,
	datad => t(1),
	combout => \Selector0~0_combout\);

-- Location: FF_X21_Y28_N21
\prev_state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.A~q\);

-- Location: LCCOMB_X21_Y28_N6
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (!\prev_state.AB~q\ & \prev_state.A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prev_state.AB~q\,
	datad => \prev_state.A~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y28_N2
\WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\prev_state.B~q\) # ((\prev_state.D~q\) # ((!\WideOr1~0_combout\) # (!\WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.B~q\,
	datab => \prev_state.D~q\,
	datac => \WideOr3~0_combout\,
	datad => \WideOr1~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X21_Y28_N18
\t[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \t[0]~3_combout\ = (!\prev_state.DE~q\ & (((t(1) & !\WideOr0~1_combout\)) # (!t(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(1),
	datab => \prev_state.DE~q\,
	datac => t(0),
	datad => \WideOr0~1_combout\,
	combout => \t[0]~3_combout\);

-- Location: FF_X21_Y28_N19
\t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \t[0]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => t(0));

-- Location: LCCOMB_X21_Y28_N0
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (t(0) & t(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => t(0),
	datad => t(1),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\WideOr0~0_combout\ & (((\prev_state.DE~q\)) # (!\prev_state.A~q\))) # (!\WideOr0~0_combout\ & (((\prev_state.AB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.A~q\,
	datab => \prev_state.DE~q\,
	datac => \prev_state.AB~q\,
	datad => \WideOr0~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X21_Y28_N15
\prev_state.AB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.AB~q\);

-- Location: LCCOMB_X21_Y28_N4
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (t(0) & ((t(1) & (\prev_state.AB~q\)) # (!t(1) & ((\prev_state.B~q\))))) # (!t(0) & (((\prev_state.B~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.AB~q\,
	datac => \prev_state.B~q\,
	datad => t(1),
	combout => \Selector2~0_combout\);

-- Location: FF_X21_Y28_N5
\prev_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.B~q\);

-- Location: LCCOMB_X21_Y28_N28
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (t(0) & ((t(1) & (\prev_state.B~q\)) # (!t(1) & ((\prev_state.BC~q\))))) # (!t(0) & (((\prev_state.BC~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.B~q\,
	datac => \prev_state.BC~q\,
	datad => t(1),
	combout => \Selector3~0_combout\);

-- Location: FF_X21_Y28_N29
\prev_state.BC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.BC~q\);

-- Location: LCCOMB_X21_Y28_N26
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (t(0) & ((t(1) & (\prev_state.BC~q\)) # (!t(1) & ((\prev_state.C~q\))))) # (!t(0) & (((\prev_state.C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.BC~q\,
	datac => \prev_state.C~q\,
	datad => t(1),
	combout => \Selector4~0_combout\);

-- Location: FF_X21_Y28_N27
\prev_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.C~q\);

-- Location: LCCOMB_X21_Y28_N10
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (t(0) & ((t(1) & (\prev_state.C~q\)) # (!t(1) & ((\prev_state.CD~q\))))) # (!t(0) & (((\prev_state.CD~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.C~q\,
	datac => \prev_state.CD~q\,
	datad => t(1),
	combout => \Selector5~0_combout\);

-- Location: FF_X21_Y28_N11
\prev_state.CD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.CD~q\);

-- Location: LCCOMB_X21_Y28_N24
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (t(0) & ((t(1) & (\prev_state.CD~q\)) # (!t(1) & ((\prev_state.D~q\))))) # (!t(0) & (((\prev_state.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.CD~q\,
	datac => \prev_state.D~q\,
	datad => t(1),
	combout => \Selector6~0_combout\);

-- Location: FF_X21_Y28_N25
\prev_state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.D~q\);

-- Location: LCCOMB_X21_Y28_N16
\next_state.DE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.DE~0_combout\ = (t(0) & (\prev_state.D~q\ & t(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => t(0),
	datab => \prev_state.D~q\,
	datad => t(1),
	combout => \next_state.DE~0_combout\);

-- Location: FF_X21_Y28_N17
\prev_state.DE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \lr_freq_divider|state~clkctrl_outclk\,
	d => \next_state.DE~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_state.DE~q\);

-- Location: LCCOMB_X21_Y28_N30
\WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\prev_state.CD~q\) # ((\prev_state.D~q\) # (\prev_state.DE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.CD~q\,
	datab => \prev_state.D~q\,
	datad => \prev_state.DE~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y28_N22
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\prev_state.BC~q\ & (!\prev_state.B~q\ & !\prev_state.AB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_state.BC~q\,
	datab => \prev_state.B~q\,
	datac => \prev_state.AB~q\,
	combout => \WideOr2~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\stop~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

ww_ssd_display(0) <= \ssd_display[0]~output_o\;

ww_ssd_display(1) <= \ssd_display[1]~output_o\;

ww_ssd_display(2) <= \ssd_display[2]~output_o\;

ww_ssd_display(3) <= \ssd_display[3]~output_o\;

ww_ssd_display(4) <= \ssd_display[4]~output_o\;

ww_ssd_display(5) <= \ssd_display[5]~output_o\;

ww_ssd_display(6) <= \ssd_display[6]~output_o\;
END structure;


