library ieee;
use ieee.std_logic_1164.all;

entity debouncer is
	generic(
		fclk: integer:=50000;	--system clock in kHz
		twindow: integer:=20		--time window in ms
	);
	port(
		clk: in std_logic;
		x: in std_logic;
		y: buffer std_logic
	);
end entity;

architecture a_debouncer of debouncer is
	
	constant max: integer := fclk * twindow;
		
begin

	process(clk)
		variable count: integer range 0 to max;
	begin
		if rising_edge(clk) then
			if x /= y then
				count := count + 1;
				if count=max then
					y <= x;
					count := 0;
				end if;
			else
				count := 0;
			end if;
		end if;
	end process;

end architecture;
