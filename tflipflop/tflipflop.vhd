library ieee;
use ieee.std_logic_1164.all;

entity tflipflop is
	port(
		clk: in std_logic;
		d: in std_logic;
		enable: in std_logic;
		d_and_enable: buffer std_logic;
		q: buffer std_logic
	);
end entity;

architecture a_tflipflop of tflipflop is

	signal xor_sig: std_logic;

begin
	
	d_and_enable <= d and enable;
	xor_sig <= d_and_enable xor q;
	
	process(clk)
	begin
		if rising_edge(clk) then
			q <= xor_sig;
		end if;
	end process;

end architecture;