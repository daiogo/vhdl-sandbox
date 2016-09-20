library verilog;
use verilog.vl_types.all;
entity arbiter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        r               : in     vl_logic_vector(2 downto 0);
        g               : out    vl_logic_vector(2 downto 0)
    );
end arbiter;
