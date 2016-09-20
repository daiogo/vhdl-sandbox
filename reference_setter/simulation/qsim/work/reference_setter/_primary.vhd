library verilog;
use verilog.vl_types.all;
entity reference_setter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        up              : in     vl_logic;
        down            : in     vl_logic;
        display1        : out    vl_logic_vector(6 downto 0);
        display2        : out    vl_logic_vector(6 downto 0)
    );
end reference_setter;
