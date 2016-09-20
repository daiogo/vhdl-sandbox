library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
	generic (MAX: integer := 30);
	port(
		clk: in std_logic;
		rst: in std_logic;
		up: in std_logic;
		down: in std_logic;
		units_digit: out std_logic_vector(3 downto 0);
		tens_digit: out std_logic_vector(3 downto 0)
	);
end entity;

-------------------------------------------------

architecture a_counter of counter is

	signal count: integer range 0 to MAX;
	signal up_pressed: std_logic;
	signal down_pressed: std_logic;

begin
	process(all)
	begin
		if (rst='0') then
			count <= 0;
		elsif (rising_edge(clk) and up='0' and count < MAX and up_pressed='0') then
			up_pressed <= '1';
			count <= count + 1;
		elsif (rising_edge(clk) and down='0' and count > 0 and down_pressed='0') then
			down_pressed <= '1';
			count <= count - 1;
		end if;

		if rising_edge(clk) and up='1' then
			up_pressed <= '0';
		end if;
		
		if rising_edge(clk) and down='1' then
			down_pressed <= '0';
		end if;
		
		
		units_digit <= std_logic_vector(to_unsigned((count mod 10), 4));
		tens_digit <= std_logic_vector(to_unsigned((count/10), 4));
	end process;
end architecture;