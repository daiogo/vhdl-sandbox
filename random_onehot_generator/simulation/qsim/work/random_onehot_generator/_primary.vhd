library verilog;
use verilog.vl_types.all;
entity random_onehot_generator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        onehot          : out    vl_logic_vector(7 downto 0)
    );
end random_onehot_generator;
