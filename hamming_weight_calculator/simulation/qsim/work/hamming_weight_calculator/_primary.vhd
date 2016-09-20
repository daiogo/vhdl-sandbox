library verilog;
use verilog.vl_types.all;
entity hamming_weight_calculator is
    port(
        hwc_in          : in     vl_logic_vector(6 downto 0);
        hwc_led_out     : out    vl_logic_vector(2 downto 0);
        hwc_ssd_out     : out    vl_logic_vector(6 downto 0)
    );
end hamming_weight_calculator;
