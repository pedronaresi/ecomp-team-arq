library verilog;
use verilog.vl_types.all;
entity BancoReg_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        dadosEscrita    : in     vl_logic_vector(31 downto 0);
        escreveReg      : in     vl_logic;
        jal             : in     vl_logic;
        reg1            : in     vl_logic_vector(4 downto 0);
        reg2            : in     vl_logic_vector(4 downto 0);
        regEscrita      : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end BancoReg_vlg_sample_tst;
