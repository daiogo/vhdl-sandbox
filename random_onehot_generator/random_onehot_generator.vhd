library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity random_onehot_generator is
	port(
		clk: in std_logic;
		rst: in std_logic;
		onehot: out std_logic_vector(3 downto 0)
	);
end entity;

architecture a_random_onehot_generator of random_onehot_generator is

	component frequency_divider is
		port(
			clk_in: in std_logic;
			rst: in std_logic;
			clk_out: out std_logic
		);
	end component;

	component pseudorandom_generator is
		port(
			clk: in std_logic;
			rst: in std_logic;
			random_number: out std_logic_vector(7 downto 0)
		);
	end component;

	signal random_sig: std_logic_vector(7 downto 0);
	signal divided_clk: std_logic;
	
begin
	
	freq_div: frequency_divider port map(clk_in=>clk, rst=>rst, clk_out=>divided_clk);
	generator: pseudorandom_generator port map(clk=>divided_clk, rst=>rst, random_number=>random_sig);
	
	onehot <= 	"0001" when random_sig(3)='0' and random_sig(7)='0' and divided_clk='1' else
					"0010" when random_sig(3)='0' and random_sig(7)='1' and divided_clk='1' else
					"0100" when random_sig(3)='1' and random_sig(7)='0' and divided_clk='1' else
					"1000" when random_sig(3)='1' and random_sig(7)='1' and divided_clk='1' else
					"0000";

end architecture;