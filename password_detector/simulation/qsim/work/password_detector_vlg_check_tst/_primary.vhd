library verilog;
use verilog.vl_types.all;
entity password_detector_vlg_check_tst is
    port(
        led1            : in     vl_logic;
        led2            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end password_detector_vlg_check_tst;
