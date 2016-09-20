library verilog;
use verilog.vl_types.all;
entity pseudorandom_generator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        random_number   : out    vl_logic_vector(7 downto 0)
    );
end pseudorandom_generator;
