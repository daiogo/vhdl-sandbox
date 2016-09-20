library verilog;
use verilog.vl_types.all;
entity random_onehot_generator_vlg_check_tst is
    port(
        onehot          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end random_onehot_generator_vlg_check_tst;
