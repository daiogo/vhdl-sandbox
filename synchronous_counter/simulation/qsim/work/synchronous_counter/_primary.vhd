library verilog;
use verilog.vl_types.all;
entity synchronous_counter is
    port(
        clk             : in     vl_logic;
        count           : out    vl_logic_vector(3 downto 0)
    );
end synchronous_counter;
