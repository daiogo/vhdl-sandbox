library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------------------------
entity alarm_controller is
	port(
		clk: in std_logic;
		rst: in std_logic;
		pwd: in std_logic;
		sensorA: in std_logic;
		sensorB: in std_logic;
		siren: out std_logic;
		state_disarmed: out std_logic;
		state_hold_arm: out std_logic;
		state_wait_out: out std_logic;
		state_armed: out std_logic;
		state_wait_in: out std_logic;
		state_off: out std_logic;
		state_hold_disarm: out std_logic
	);
end entity;
----------------------------------------------------------------------------
architecture a_alarm_controller of alarm_controller is

	component frequency_divider is
		port(
			clk_in: in std_logic;
			rst: in std_logic;
			clk_out: out std_logic
		);
	end component;

	--FSM declarations
	type state is (disarmed, hold_arm, wait_out, armed, wait_in, off, hold_disarm);
	signal prev_state, next_state: state;

	--Timer declarations
	constant tmax: integer := 10;
	constant tin: integer := 5;
	constant tout: integer := 10;
	signal t: integer range 0 to tmax;
	signal divided_clk: std_logic;
	
begin
	
	freq_divider: frequency_divider port map(clk_in=>clk, rst=>rst, clk_out=>divided_clk);
	
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
			prev_state <= disarmed;
		elsif (rising_edge(divided_clk)) then
			prev_state <= next_state;
		end if;
	end process;
	
-----------------UPPER SECTION OF FSM-----------------
	process (all)
	begin
		case prev_state is
			when disarmed =>
				siren <= '0';
				state_disarmed <= '1';
				state_hold_arm <= '0';
				state_wait_out <= '0';
				state_armed <= '0';
				state_wait_in <= '0';
				state_off <= '0';
				state_hold_disarm <= '0';
				if (pwd='1') and (sensorA='0') then
					next_state <= hold_arm;
				else
					next_state <= disarmed;
				end if;
			
			when hold_arm =>
				siren <= '0';
				state_disarmed <= '0';
				state_hold_arm <= '1';
				state_wait_out <= '0';
				state_armed <= '0';
				state_wait_in <= '0';
				state_off <= '0';
				state_hold_disarm <= '0';
				if sensorA='1' then
					next_state <= off;
				elsif pwd='0' then
					next_state <= wait_out;
				else
					next_state <= hold_arm;
				end if;
			
			when wait_out =>
				siren <= '0';
				state_disarmed <= '0';
				state_hold_arm <= '0';
				state_wait_out <= '1';
				state_armed <= '0';
				state_wait_in <= '0';
				state_off <= '0';
				state_hold_disarm <= '0';
				if pwd='1' then
					next_state <= hold_disarm;
				elsif (sensorA='1') and (pwd='0') then
					next_state <= off;
				elsif (t >= tout) and (pwd='0') and (sensorA='0') then
					next_state <= armed;
				else
					next_state <= wait_out;
				end if;
			
			when armed =>
				siren <= '0';
				state_disarmed <= '0';
				state_hold_arm <= '0';
				state_wait_out <= '0';
				state_armed <= '1';
				state_wait_in <= '0';
				state_off <= '0';
				state_hold_disarm <= '0';
				if pwd='1' then
					next_state <= hold_disarm;
				elsif (sensorA='1') and (pwd='0') then
					next_state <= off;
				elsif (sensorB='1') and (sensorA='0') and (pwd='0') then
					next_state <= wait_in;
				else
					next_state <= armed;
				end if;
			
			when wait_in =>
				siren <= '0';
				state_disarmed <= '0';
				state_hold_arm <= '0';
				state_wait_out <= '0';
				state_armed <= '0';
				state_wait_in <= '1';
				state_off <= '0';
				state_hold_disarm <= '0';
				if pwd='1' then
					next_state <= hold_disarm;
				elsif (pwd='0') and ((sensorA='1') or (t >= tin)) then
					next_state <= off;
				else
					next_state <= wait_in;
				end if;
			
			when off =>
				siren <= '1';
				state_disarmed <= '0';
				state_hold_arm <= '0';
				state_wait_out <= '0';
				state_armed <= '0';
				state_wait_in <= '0';
				state_off <= '1';
				state_hold_disarm <= '0';
				if pwd='1' then
					next_state <= hold_disarm;
				else
					next_state <= off;
				end if;
				
			when hold_disarm =>
				siren <= '0';
				state_disarmed <= '0';
				state_hold_arm <= '0';
				state_wait_out <= '0';
				state_armed <= '0';
				state_wait_in <= '0';
				state_off <= '0';
				state_hold_disarm <= '1';
				if pwd='0' then
					next_state <= disarmed;
				else
					next_state <= hold_disarm;
				end if;
			
		end case;
	end process;	

end architecture;