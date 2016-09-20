library verilog;
use verilog.vl_types.all;
entity decoder_3to2_vlg_sample_tst is
    port(
        x               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end decoder_3to2_vlg_sample_tst;
