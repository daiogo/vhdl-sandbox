library verilog;
use verilog.vl_types.all;
entity decoder_3to2_vlg_check_tst is
    port(
        y               : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end decoder_3to2_vlg_check_tst;
