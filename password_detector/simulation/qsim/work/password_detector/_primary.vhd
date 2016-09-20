library verilog;
use verilog.vl_types.all;
entity password_detector is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        key             : in     vl_logic_vector(3 downto 0);
        led1            : out    vl_logic;
        led2            : out    vl_logic
    );
end password_detector;
