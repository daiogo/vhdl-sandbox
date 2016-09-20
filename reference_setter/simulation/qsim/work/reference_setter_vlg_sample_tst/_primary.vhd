library verilog;
use verilog.vl_types.all;
entity reference_setter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        down            : in     vl_logic;
        rst             : in     vl_logic;
        up              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end reference_setter_vlg_sample_tst;
