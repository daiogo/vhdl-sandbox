library verilog;
use verilog.vl_types.all;
entity password_detector_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        key             : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end password_detector_vlg_sample_tst;
