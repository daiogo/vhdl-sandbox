library verilog;
use verilog.vl_types.all;
entity hamming_weight_calculator_vlg_sample_tst is
    port(
        hwc_in          : in     vl_logic_vector(6 downto 0);
        sampler_tx      : out    vl_logic
    );
end hamming_weight_calculator_vlg_sample_tst;
