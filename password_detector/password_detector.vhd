library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------------------
entity password_detector is
	port(
		clk: in std_logic;
		rst: in std_logic;
		key: in std_logic_vector(3 downto 0);
		led1: out std_logic;
		led2: out std_logic
	);
end entity;
----------------------------------------------------------------------------
architecture a_password_detector of password_detector is

	--FSM declarations
	type state is (idle, ready, key1, wait1, key2, wait2, unlocked, error1, error2, error3, error4);
	signal prev_state, next_state: state;

	--Timer declarations
	constant tmax: integer := 3;
	signal t: integer range 0 to tmax;

	component frequency_divider is
		port(
			clk_in: in std_logic;
			rst: in std_logic;
			clk_out: out std_logic
		);
	end component;
	
	component debouncer is
		port(
			clk: in std_logic;
			x: in std_logic;
			y: buffer std_logic
		);
	end component;

	signal divided_clk: std_logic;
	signal test_clk: std_logic;
	constant n: std_logic_vector(3 downto 0) := "0000";
	constant a: std_logic_vector(3 downto 0) := "1000";
	constant b: std_logic_vector(3 downto 0) := "0100";
	constant c: std_logic_vector(3 downto 0) := "0010";
	
begin
	
	test_clk <= clk;
	lr_freq_divider: frequency_divider port map(clk_in=>clk, rst=>rst, clk_out=>divided_clk);
	
-----------------FSM TIMER-----------------
	process (divided_clk, rst)
	begin
		if (rst='0') then
			t <= 0;
		elsif (rising_edge(divided_clk)) then
			if (prev_state /= next_state) then
				t <= 0;
			elsif (t /= tmax) then
				t <= t + 1;
			end if;
		end if;
	end process;
	
-----------------LOWER SECTION OF FSM-----------------
	process (divided_clk, rst)
	begin
		if (rst='0') then
			prev_state <= idle;
		elsif (rising_edge(divided_clk)) then
			prev_state <= next_state;
		end if;
	end process;
	
-----------------UPPER SECTION OF FSM-----------------
	process (all)
	begin
		case prev_state is
			when idle =>
				led1 <= '1';
				led2 <= '0';
				if key=n then
					next_state <= ready;
				else
					next_state <= idle;
				end if;
			
			when ready =>
				led1 <= '1';
				led2 <= '0';
				if key=n then
					next_state <= ready;
				elsif key=a then
					next_state <= key1;
				elsif (not key=a) and (not key=n) then
					next_state <= error1;
				else
					next_state <= ready;
				end if;
			
			when key1 =>
				led1 <= '0';
				led2 <= '0';
				if key=n and t < tmax then
					next_state <= wait1;
				elsif key=a and t < tmax then
					next_state <= key1;
				elsif t >= tmax then
					next_state <= idle;
				elsif (not key=a) and (not key=n) and (t < tmax) then
					next_state <= error1;
				else
					next_state <= key1;
				end if;
			
			when wait1 =>
				led1 <= '0';
				led2 <= '0';
				if key=n and t < tmax then
					next_state <= wait1;
				elsif key=b and t < tmax then
					next_state <= key2;
				elsif t >= tmax then
					next_state <= idle;
				elsif (not key=b) and (not key=n) and (t < tmax) then
					next_state <= error3;
				else
					next_state <= wait1;
				end if;
			
			when key2 =>
				led1 <= '0';
				led2 <= '0';
				if key=n and t < tmax then
					next_state <= wait2;
				elsif key=b and t < tmax then
					next_state <= key2;
				elsif t >= tmax then
					next_state <= idle;
				elsif (not key=b) and (not key=n) and (t < tmax) then
					next_state <= error3;
				else
					next_state <= key2;
				end if;
			
			when wait2 =>
				led1 <= '0';
				led2 <= '0';
				if key=n and t < tmax then
					next_state <= wait2;
				elsif key=c and t < tmax then
					next_state <= unlocked;
				elsif t >= tmax then
					next_state <= idle;
				elsif (not key=c) and (not key=n) and (t < tmax) then
					next_state <= idle;
				else
					next_state <= wait2;
				end if;
			
			when unlocked =>
				led1 <= '0';
				led2 <= '1';
				if t >= tmax then
					next_state <= idle;
				else
					next_state <= unlocked;
				end if;
			
			when error1 =>
				led1 <= '0';
				led2 <= '0';
				if (not key=n) and (t < tmax) then
					next_state <= error1;
				elsif key=n and t < tmax then
					next_state <= error2;
				elsif t >= tmax then
					next_state <= idle;
				else
					next_state <= error1;
				end if;
			
			when error2 =>
				led1 <= '0';
				led2 <= '0';
				if (not key=n) and (t < tmax) then
					next_state <= error3;
				elsif key=n and t < tmax then
					next_state <= error2;
				elsif t >= tmax then
					next_state <= idle;
				else
					next_state <= error2;
				end if;
			
			when error3 =>
				led1 <= '0';
				led2 <= '0';
				if (not key=n) and (t < tmax) then
					next_state <= error3;
				elsif key=n and t < tmax then
					next_state <= error4;
				elsif t >= tmax then
					next_state <= idle;
				else
					next_state <= error3;
				end if;
			
			when error4 =>
				led1 <= '0';
				led2 <= '0';
				if (not key=n) and (t < tmax) then
					next_state <= idle;
				elsif key=n and t < tmax then
					next_state <= error4;
				elsif t >= tmax then
					next_state <= idle;
				else
					next_state <= error4;
				end if;
			
		end case;
	end process;	

end architecture;