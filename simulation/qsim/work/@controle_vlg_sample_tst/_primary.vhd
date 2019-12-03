library verilog;
use verilog.vl_types.all;
entity Controle_vlg_sample_tst is
    port(
        Inst            : in     vl_logic_vector(5 downto 0);
        botaoEntrada    : in     vl_logic;
        botaoSaida      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Controle_vlg_sample_tst;
