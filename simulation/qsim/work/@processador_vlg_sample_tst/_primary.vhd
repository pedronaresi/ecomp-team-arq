library verilog;
use verilog.vl_types.all;
entity Processador_vlg_sample_tst is
    port(
        botaoEntrada2   : in     vl_logic;
        botaoSaida2     : in     vl_logic;
        clock           : in     vl_logic;
        dadosExternos   : in     vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Processador_vlg_sample_tst;
