library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity signed_adder is
	generic (N : integer := 4);
	port(
		a: in std_logic_vector(N-1 downto 0);
		b: in std_logic_vector(N-1 downto 0);
		cin: in std_logic;
		sum: out std_logic_vector(N-1 downto 0);
		cout: out std_logic
	);
end entity;

architecture a_signed_adder of signed_adder is

	signal a_sig, b_sig: signed(N downto 0);
	signal cin_sig, sum_sig: signed(N downto 0);
	
begin
	
	a_sig <= a(N-1)&signed(a);
	b_sig <= b(N-1)&signed(b);
	cin_sig <= (N downto 1 => '0')&cin;
	
	sum_sig <= a_sig + b_sig + cin_sig;
	
	sum <= std_logic_vector(sum_sig(N-1 downto 0));
	
	cout <= sum_sig(N);

end architecture;