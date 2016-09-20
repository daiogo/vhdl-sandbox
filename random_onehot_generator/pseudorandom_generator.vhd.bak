library ieee;
use ieee.std_logic_1164.all;

entity pseudorandom_generator is
	port(
		clk: in std_logic;
		rst: in std_logic;
		random_number: out std_logic_vector(7 downto 0)
	);
end entity;

architecture a_pseudorandom_generator of pseudorandom_generator is

	signal count: std_logic_vector(7 downto 0);
	
begin
	
	process (clk, rst) begin
		if (rst = '0') then
			count <= "01010101";
		elsif (rising_edge(clk)) then
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

	random_number <= count;

end architecture;