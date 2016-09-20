library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------

entity frequency_divider is
	generic (scaler: integer := 25000000);
	port(
		clk_in: in std_logic;
		rst: in std_logic;
		clk_out: out std_logic
	);
end entity;

-------------------------------------------------

architecture a_frequency_divider of frequency_divider is

	signal counter: integer range 0 to scaler;
	signal state: std_logic;

begin

	process(clk_in, rst)
	begin
		if (rst='0') then
			state <= '0';
			counter <= 0;
		elsif (rising_edge(clk_in)) then
			if (counter = scaler) then			--reset scaler
				state <= not state;
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
		
	end process;
	
	clk_out <= state;
end architecture;
