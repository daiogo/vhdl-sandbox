library ieee;
use ieee.std_logic_1164.all;

entity alarm is
	port(
		clk: in std_logic;
		rst: in std_logic;
		key: in std_logic_vector(3 downto 0);
		sensorA: in std_logic;
		sensorB: in std_logic;
		siren: out std_logic;
		alarm_on: out std_logic
	);
end entity;

architecture a_alarm of alarm is

	component password_detector is
		port(
			clk: in std_logic;
			rst: in std_logic;
			key: in std_logic_vector(3 downto 0);
			led1: out std_logic;
			led2: out std_logic
		);
	end component;

	component frequency_divider is
		port(
			clk_in: in std_logic;
			rst: in std_logic;
			clk_out: out std_logic
		);
	end component;
	
	component alarm_controller is
		port(
			clk: in std_logic;
			rst: in std_logic;
			pwd: in std_logic;
			sensorA: in std_logic;
			sensorB: in std_logic;
			siren: out std_logic;
			alarm_on: out std_logic
		);
	end component;
	
	signal divided_clk: std_logic;
	signal pwd_sig: std_logic;
	
begin
	
	ra_freq_divider: frequency_divider port map(clk_in=>clk, rst=>rst, clk_out=>divided_clk);
	ra_pwd_detector: password_detector port map(clk=>divided_clk, rst=>rst, key=>key, led1=>open, led2=>pwd_sig);
	ra_alarm_controller: alarm_controller port map(clk=>divided_clk, rst=>rst, pwd=>pwd_sig, sensorA=>sensorA, sensorB=>sensorB, siren=>siren, alarm_on=>alarm_on);

end architecture;