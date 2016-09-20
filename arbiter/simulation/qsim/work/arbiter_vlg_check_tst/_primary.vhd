library verilog;
use verilog.vl_types.all;
entity arbiter_vlg_check_tst is
    port(
        g               : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end arbiter_vlg_check_tst;
