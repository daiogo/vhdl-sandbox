library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reference_setter is
	port(
		clk: in std_logic;
		rst: in std_logic;
		up: in std_logic;
		down: in std_logic;
		tens_ssd: out std_logic_vector(6 downto 0);
		units_ssd: out std_logic_vector(6 downto 0)
	);
end entity;

architecture a_reference_setter of reference_setter is

	component counter is
		generic (MAX: integer := 30);
		port(
			clk: in std_logic;
			rst: in std_logic;
			up: in std_logic;
			down: in std_logic;
			units_digit: out std_logic_vector(3 downto 0);
			tens_digit: out std_logic_vector(3 downto 0)
		);
	end component;

	component debouncer is
		port(
			clk: in std_logic;
			x: in std_logic;
			y: out std_logic
		);
	end component;
	
	component ssd_driver is
		port(
			bcd_in: in std_logic_vector(3 downto 0);
			decimal_out: out std_logic_vector(6 downto 0)
		);
	end component;
	
	signal debounced_up: std_logic;
	signal debounced_down: std_logic;
	signal reference_value: integer range 0 to 30;
	signal tens_digit_sig: std_logic_vector(3 downto 0);
	signal units_digit_sig: std_logic_vector(3 downto 0);
	
begin

	up_debouncer: debouncer port map(clk=>clk, x=>up, y=>debounced_up);
	down_debouncer: debouncer port map(clk=>clk, x=>down, y=>debounced_down);
	value_counter: counter port map(clk=>clk, rst=>rst, up=>debounced_up, down=>debounced_down, units_digit=>units_digit_sig, tens_digit=>tens_digit_sig);
	tens_digit_display: ssd_driver port map(bcd_in=>tens_digit_sig, decimal_out=>tens_ssd);
	units_digit_display: ssd_driver port map(bcd_in=>units_digit_sig, decimal_out=>units_ssd);
	
end architecture;