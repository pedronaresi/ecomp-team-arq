library verilog;
use verilog.vl_types.all;
entity MemDados_vlg_sample_tst is
    port(
        OpIO            : in     vl_logic;
        clock           : in     vl_logic;
        dadosEscrita    : in     vl_logic_vector(31 downto 0);
        endereco        : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end MemDados_vlg_sample_tst;
