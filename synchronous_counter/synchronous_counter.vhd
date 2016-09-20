library ieee;
use ieee.std_logic_1164.all;

entity synchronous_counter is
	generic(N: integer := 4);
	port(
		clk: in std_logic;
		count: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture a_synchronous_counter of synchronous_counter is

	component tflipflop is
		port(
			clk: in std_logic;
			d: in std_logic;
			enable: in std_logic;
			d_and_enable: buffer std_logic;
			q: buffer std_logic
		);
	end component;
	
	signal d_and_enable_sig: std_logic_vector(1 to N);
	signal q_sig: std_logic_vector(1 to N);
	
begin

	tff_array: for i in 1 to N generate
		begin
			tff1: if i=1 generate
			begin
				tff: component tflipflop port map(clk, '1', '1', d_and_enable_sig(i), q_sig(i));
			end generate tff1;
		
			tffx: if i>1 and i<N generate
			begin
				tff: component tflipflop port map(clk, d_and_enable_sig(i-1), q_sig(i-1), d_and_enable_sig(i), q_sig(i));
			end generate tffx;
			
			tffN: if i=N generate
			begin
				tff: component tflipflop port map(clk, d_and_enable_sig(i-1), q_sig(i-1), open, q_sig(i));
			end generate tffN;
   end generate tff_array;

	count <= q_sig;
end architecture;
