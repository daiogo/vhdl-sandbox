library verilog;
use verilog.vl_types.all;
entity code_converter_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end code_converter_vlg_sample_tst;
