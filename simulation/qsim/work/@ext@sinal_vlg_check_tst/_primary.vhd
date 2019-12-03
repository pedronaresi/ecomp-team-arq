library verilog;
use verilog.vl_types.all;
entity ExtSinal_vlg_check_tst is
    port(
        saida           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end ExtSinal_vlg_check_tst;
