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
		alarm_on: out std_logic
	);
end entity;
----------------------------------------------------------------------------
architecture a_alarm_controller of alarm_controller is

	--FSM declarations
	type state is (disarmed, hold_arm, wait_out, armed, wait_in, off, hold_disarm);
	signal prev_state, next_state: state;

	--Timer declarations
	constant tmax: integer := 20;
	constant tin: integer := 10;
	constant tout: integer := 20;
	signal t: integer range 0 to tmax;
	
begin
	
-----------------FSM TIMER-----------------
	process (clk, rst)
	begin
		if (rst='0') then
			t <= 0;
		elsif (rising_edge(clk)) then
			if (prev_state /= next_state) then
				t <= 0;
			elsif (t /= tmax) then
				t <= t + 1;
			end if;
		end if;
	end process;
	
-----------------LOWER SECTION OF FSM-----------------
	process (clk, rst)
	begin
		if (rst='0') then
			prev_state <= disarmed;
		elsif (rising_edge(clk)) then
			prev_state <= next_state;
		end if;
	end process;
	
-----------------UPPER SECTION OF FSM-----------------
	process (all)
	begin
		case prev_state is
			when disarmed =>
				siren <= '0';
				alarm_on <= '0';
				if (pwd='1') and (sensorA='0') then
					next_state <= hold_arm;
				else
					next_state <= disarmed;
				end if;
			
			when hold_arm =>
				siren <= '0';
				alarm_on <= '1';
				if sensorA='1' then
					next_state <= off;
				elsif pwd='0' then
					next_state <= wait_out;
				else
					next_state <= hold_arm;
				end if;
			
			when wait_out =>
				siren <= '0';
				alarm_on <= '1';
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
				alarm_on <= '1';
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
				alarm_on <= '1';
				if pwd='1' then
					next_state <= hold_disarm;
				elsif (pwd='0') and ((sensorA='1') or (t >= tin)) then
					next_state <= off;
				else
					next_state <= wait_in;
				end if;
			
			when off =>
				siren <= '1';
				alarm_on <= '1';
				if pwd='1' then
					next_state <= hold_disarm;
				else
					next_state <= off;
				end if;
				
			when hold_disarm =>
				siren <= '0';
				alarm_on <= '1';
				if pwd='0' then
					next_state <= disarmed;
				else
					next_state <= hold_disarm;
				end if;
			
		end case;
	end process;	

end architecture;