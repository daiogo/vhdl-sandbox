library verilog;
use verilog.vl_types.all;
entity tflipflop is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        enable          : in     vl_logic;
        d_and_enable    : out    vl_logic;
        q               : out    vl_logic
    );
end tflipflop;
