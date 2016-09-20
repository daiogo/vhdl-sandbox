library verilog;
use verilog.vl_types.all;
entity tflipflop_vlg_check_tst is
    port(
        d_and_enable    : in     vl_logic;
        q               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end tflipflop_vlg_check_tst;
