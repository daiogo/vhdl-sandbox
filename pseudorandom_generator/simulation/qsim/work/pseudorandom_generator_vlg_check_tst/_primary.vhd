library verilog;
use verilog.vl_types.all;
entity pseudorandom_generator_vlg_check_tst is
    port(
        random_number   : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end pseudorandom_generator_vlg_check_tst;
