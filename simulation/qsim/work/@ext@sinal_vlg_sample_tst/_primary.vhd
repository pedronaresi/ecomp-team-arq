library verilog;
use verilog.vl_types.all;
entity ExtSinal_vlg_sample_tst is
    port(
        Negativo        : in     vl_logic;
        OpExt           : in     vl_logic;
        entrada         : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end ExtSinal_vlg_sample_tst;
