library verilog;
use verilog.vl_types.all;
entity BCD4_vlg_check_tst is
    port(
        d1              : in     vl_logic_vector(3 downto 0);
        d2              : in     vl_logic_vector(3 downto 0);
        d3              : in     vl_logic_vector(3 downto 0);
        d4              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end BCD4_vlg_check_tst;
