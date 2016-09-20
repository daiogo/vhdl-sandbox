library ieee;
use ieee.std_logic_1164.all;

entity pseudorandom_generator is
	port(
		clk: in std_logic;
		rst: in std_logic;
		--random_number: out std_logic_vector(7 downto 0);
		led1: out std_logic;
		led2: out std_logic
	);
end entity;

architecture a_pseudorandom_generator of pseudorandom_generator is

	component frequency_divider is
		port(
			clk_in: in std_logic;
			rst: in std_logic;
			clk_out: out std_logic
		);
	end component;

	signal count: std_logic_vector(7 downto 0);
	signal divided_clk: std_logic;
	
begin
	
	freq_div: frequency_divider port map(clk_in=>clk, rst=>rst, clk_out=>divided_clk);
	
	process (divided_clk, rst) begin
		if (rst = '0') then
			count <= "01010101";
		elsif (rising_edge(divided_clk)) then
			--count(7) is the feedback signal
			count <= count(6) & 
						count(5) & 
						count(4) &
						(count(2) xor count(7)) & 
						(count(1) xor count(7)) & 
						(count(0) xor count(7)) &
						count(0) &
						count(7);
		end if;
	end process;

	--random_number <= count;
	led1 <= count(7) when divided_clk='1' else '0';
	led2 <= not count(7) when divided_clk='1' else '0';
	
end architecture;