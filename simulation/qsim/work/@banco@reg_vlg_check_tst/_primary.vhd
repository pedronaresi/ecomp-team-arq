library verilog;
use verilog.vl_types.all;
entity BancoReg_vlg_check_tst is
    port(
        dado1           : in     vl_logic_vector(31 downto 0);
        dado2           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end BancoReg_vlg_check_tst;
