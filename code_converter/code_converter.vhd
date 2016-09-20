library ieee;
use ieee.std_logic_1164.all;

entity code_converter is
	generic (N: integer := 3); --number of bits on input
	port(
		x: in integer range 0 to 2**N-1;
		y: out std_logic_vector(2**N-2 downto 0)
	);
end entity;

architecture a_code_converter of code_converter is
	
	function natural_to_thermometer (input: integer) return std_logic_vector is
		variable thermometer: std_logic_vector(2**N-2 downto 0) := (others=>'0');
	begin
		for i in 0 to 2**N-2 loop
			if i < input then
				thermometer(i) := '1';
			end if;
		end loop;
		
		return thermometer;
	
	end function;

begin
	y <= natural_to_thermometer(x);
end architecture;