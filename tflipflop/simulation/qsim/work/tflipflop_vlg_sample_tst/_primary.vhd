library verilog;
use verilog.vl_types.all;
entity tflipflop_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        enable          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end tflipflop_vlg_sample_tst;
