library verilog;
use verilog.vl_types.all;
entity BCD4_vlg_sample_tst is
    port(
        numero          : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end BCD4_vlg_sample_tst;
