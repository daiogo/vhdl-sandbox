library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-----------------------------------------------------------------

entity multiple_detector is
	generic (N: integer := 8; M: integer := 8); --number of bits of input
	port(
		a: in std_logic_vector(N-1 downto 0);
		b: in std_logic_vector(M-1 downto 0);
		multiple: out std_logic;
		invalid_input: out std_logic
	);
end entity;

-----------------------------------------------------------------

architecture a_multiple_detector of multiple_detector is

	signal a_int_sig: integer range 0 to (2**N)-1;
	signal b_int_sig: integer range 0 to (2**M)-1;

begin

	a_int_sig <= to_integer(unsigned(a));
	b_int_sig <= to_integer(unsigned(b));
	
	invalid_input <= '1' when b_int_sig=0 else '0';

	multiple <= '1' when a_int_sig rem b_int_sig = 0 else '0';

end architecture;