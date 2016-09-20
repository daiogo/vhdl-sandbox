library verilog;
use verilog.vl_types.all;
entity decoder_3to2 is
    port(
        x               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(1 downto 0)
    );
end decoder_3to2;
