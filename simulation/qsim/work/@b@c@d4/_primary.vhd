library verilog;
use verilog.vl_types.all;
entity BCD4 is
    port(
        numero          : in     vl_logic_vector(31 downto 0);
        d1              : out    vl_logic_vector(3 downto 0);
        d2              : out    vl_logic_vector(3 downto 0);
        d3              : out    vl_logic_vector(3 downto 0);
        d4              : out    vl_logic_vector(3 downto 0)
    );
end BCD4;
