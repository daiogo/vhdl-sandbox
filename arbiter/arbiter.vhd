library ieee;
use ieee.std_logic_1164.all;

entity arbiter is
	port(
		clk: in std_logic;
		rst: in std_logic;
		r: in std_logic_vector(2 downto 0);
		g: out std_logic_vector(2 downto 0)
	);
end entity;

architecture a_arbiter of arbiter is

	type state is (idle, p1, p2, p3);
	signal prev_state, next_state: state;

begin

-----------------LOWER SECTION OF FSM-----------------
	process (clk, rst)
	begin
		if (rst='0') then
			prev_state <= idle;
		elsif (rising_edge(clk)) then
			prev_state <= next_state;
		end if;
	end process;

-----------------UPPER SECTION OF FSM-----------------
	process (all)
	begin
		case prev_state is
			when idle =>
				g <= "000";
				if r(2)='1' and r(1)='-' and r(0)='-' then
					next_state <= p1;
				elsif r(2)='0' and r(1)='1' and r(0)='-' then
					next_state <= p2;
				elsif r(2)='0' and r(1)='0' and r(0)='1' then
					next_state <= p3;
				else
					next_state <= idle;
				end if;
			when p1 =>
				g <= "100";
				if r(2)='0' and r(1)='-' and r(0)='-' then
					next_state <= idle;
				else
					next_state <= p1;
				end if;
			when p2 =>
				g <= "010";
				if r(2)='-' and r(1)='0' and r(0)='-' then
					next_state <= idle;
				else
					next_state <= p2;
				end if;
			when p3 =>
				g <= "001";
				if r(2)='-' and r(1)='-' and r(0)='0' then
					next_state <= idle;
				else
					next_state <= p3;
				end if;
		end case;
	end process;
	
end architecture;