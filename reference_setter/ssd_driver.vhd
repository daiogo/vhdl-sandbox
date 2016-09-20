library ieee;
use ieee.std_logic_1164.all;

---------------------------------------------------------------------------

entity ssd_driver is
	port(
		bcd_in: in std_logic_vector(3 downto 0);
		decimal_out: out std_logic_vector(6 downto 0)
	);
end entity;

---------------------------------------------------------------------------

architecture a_ssd_driver of ssd_driver is
begin
	decimal_out <= "0000001" when bcd_in="0000" else
						"1001111" when bcd_in="0001" else
						"0010010" when bcd_in="0010" else
						"0000110" when bcd_in="0011" else
						"1001100" when bcd_in="0100" else
						"0100100" when bcd_in="0101" else
						"0100000" when bcd_in="0110" else
						"0001111" when bcd_in="0111" else
						"0000000" when bcd_in="1000" else
						"0000100" when bcd_in="1001" else
						"0001000" when bcd_in="1010" else
						"1100000" when bcd_in="1011" else
						"0110001" when bcd_in="1100" else
						"1000010" when bcd_in="1101" else
						"0110000" when bcd_in="1110" else
						"0111000" when bcd_in="1111" else
						"1111111"; --display nothing
end architecture;