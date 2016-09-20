library verilog;
use verilog.vl_types.all;
entity pseudorandom_generator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pseudorandom_generator_vlg_sample_tst;
