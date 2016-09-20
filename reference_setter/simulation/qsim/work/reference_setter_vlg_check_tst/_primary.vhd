library verilog;
use verilog.vl_types.all;
entity reference_setter_vlg_check_tst is
    port(
        display1        : in     vl_logic_vector(6 downto 0);
        display2        : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end reference_setter_vlg_check_tst;
