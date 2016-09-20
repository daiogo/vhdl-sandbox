library verilog;
use verilog.vl_types.all;
entity multiple_detector is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(4 downto 0);
        multiple        : out    vl_logic;
        invalid_input   : out    vl_logic
    );
end multiple_detector;
