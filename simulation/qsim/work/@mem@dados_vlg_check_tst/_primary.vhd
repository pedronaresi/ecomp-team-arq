library verilog;
use verilog.vl_types.all;
entity MemDados_vlg_check_tst is
    port(
        dadosLidos      : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end MemDados_vlg_check_tst;
