library ieee;
use ieee.std_logic_1164.all;

entity decoder_3to2 is
	port(
		x: in std_logic_vector(2 downto 0);
		y: out std_logic_vector(1 downto 0)
	);
end entity;

architecture a_decoder_3to2 of decoder_3to2 is

begin

	y <= not x(2) & x(1);

end architecture;
