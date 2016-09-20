library verilog;
use verilog.vl_types.all;
entity arbiter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        r               : in     vl_logic_vector(2 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end arbiter_vlg_sample_tst;
