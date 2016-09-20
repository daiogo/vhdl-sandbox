library verilog;
use verilog.vl_types.all;
entity hamming_weight_calculator_vlg_check_tst is
    port(
        hwc_led_out     : in     vl_logic_vector(2 downto 0);
        hwc_ssd_out     : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end hamming_weight_calculator_vlg_check_tst;
