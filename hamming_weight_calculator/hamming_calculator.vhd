library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.math_real.all;

---------------------------------------------------------------------------

entity hamming_calculator is
	generic (N: integer := 7); --number of bits of input and output
	port(
		x: in std_logic_vector(N-1 downto 0);
		y: out std_logic_vector(integer(ceil(log2(real(N))))-1 downto 0);
		integer_out: out integer range 0 to 255
	);
end entity;

---------------------------------------------------------------------------

architecture a_hamming_calculator of hamming_calculator is

constant M : integer := integer(ceil(log2(real(N))));

type int_vector is array (0 to N-1) of integer range 0 to 255;

signal ones: int_vector;

begin
	ones(0) <= 1 when x(0)='1' else 0;
	gen: for i in 1 to N-1 generate
		ones(i) <= 	ones(i-1) + 1 when x(i)='1' else
						ones(i-1);
	end generate;
	y <= conv_std_logic_vector(ones(N-1), M);
	integer_out <= ones(N-1);
end architecture;