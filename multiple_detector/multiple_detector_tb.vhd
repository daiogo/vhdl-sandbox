library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiple_detector_tb is
	generic (N: integer := 4; M: integer := 3); --number of bits of input and output
end;

architecture a_multiple_detector_tb of multiple_detector_tb is
	component multiple_detector
	port(
		a: in std_logic_vector(N-1 downto 0);
		b: in std_logic_vector(N-1 downto 0);
		multiple: out std_logic;
		invalid_input: out std_logic
	);
	end component;

	signal a_sig: std_logic_vector(N-1 downto 0);
	signal b_sig: std_logic_vector(N-1 downto 0);
	signal multiple_sig: std_logic;
	signal invalid_input_sig: std_logic;

begin
	uut: multiple_detector port map(a=>a_sig, b=>b_sig, multiple=>multiple_sig, invalid_input=>invalid_input_sig);
	
process
	begin
	
	--b = 0
	a_sig <= "00000";
	b_sig <= "00000";
	wait for 50 ns;
	a_sig <= "00001";
	wait for 50 ns;
	a_sig <= "00010";
	wait for 50 ns;
	a_sig <= "00011";
	wait for 50 ns;
	a_sig <= "00100";
	wait for 50 ns;
	a_sig <= "00101";
	wait for 50 ns;
	a_sig <= "00110";
	wait for 50 ns;
	a_sig <= "00111";
	wait for 50 ns;
	a_sig <= "01000";
	wait for 50 ns;
	a_sig <= "01001";
	wait for 50 ns;
	a_sig <= "01010";
	wait for 50 ns;
	a_sig <= "11110";
	wait for 50 ns;
	a_sig <= "11111";
	wait for 50 ns;
	
	--b = 1
	a_sig <= "00000";
	b_sig <= "00001";
	wait for 50 ns;
	a_sig <= "00001";
	wait for 50 ns;
	a_sig <= "00010";
	wait for 50 ns;
	a_sig <= "00011";
	wait for 50 ns;
	a_sig <= "00100";
	wait for 50 ns;
	a_sig <= "00101";
	wait for 50 ns;
	a_sig <= "00110";
	wait for 50 ns;
	a_sig <= "00111";
	wait for 50 ns;
	a_sig <= "01000";
	wait for 50 ns;
	a_sig <= "01001";
	wait for 50 ns;
	a_sig <= "01010";
	wait for 50 ns;
	a_sig <= "11110";
	wait for 50 ns;
	a_sig <= "11111";
	wait for 50 ns;
	
	--b = 2
	a_sig <= "00000";
	b_sig <= "00000";
	wait for 50 ns;
	a_sig <= "00001";
	wait for 50 ns;
	a_sig <= "00010";
	wait for 50 ns;
	a_sig <= "00011";
	wait for 50 ns;
	a_sig <= "00100";
	wait for 50 ns;
	a_sig <= "00101";
	wait for 50 ns;
	a_sig <= "00110";
	wait for 50 ns;
	a_sig <= "00111";
	wait for 50 ns;
	a_sig <= "01000";
	wait for 50 ns;
	a_sig <= "01001";
	wait for 50 ns;
	a_sig <= "01010";
	wait for 50 ns;
	a_sig <= "11110";
	wait for 50 ns;
	a_sig <= "11111";
	wait for 50 ns;
	
	--b = 3
	a_sig <= "00000";
	b_sig <= "00000";
	wait for 50 ns;
	a_sig <= "00001";
	wait for 50 ns;
	a_sig <= "00010";
	wait for 50 ns;
	a_sig <= "00011";
	wait for 50 ns;
	a_sig <= "00100";
	wait for 50 ns;
	a_sig <= "00101";
	wait for 50 ns;
	a_sig <= "00110";
	wait for 50 ns;
	a_sig <= "00111";
	wait for 50 ns;
	a_sig <= "01000";
	wait for 50 ns;
	a_sig <= "01001";
	wait for 50 ns;
	a_sig <= "01010";
	wait for 50 ns;
	a_sig <= "11110";
	wait for 50 ns;
	a_sig <= "11111";
	wait for 50 ns;
end process;
end architecture;
