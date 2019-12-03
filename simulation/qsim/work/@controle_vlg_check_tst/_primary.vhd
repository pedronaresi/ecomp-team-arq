library verilog;
use verilog.vl_types.all;
entity Controle_vlg_check_tst is
    port(
        NegativoEx      : in     vl_logic;
        OpExt           : in     vl_logic;
        OpIO            : in     vl_logic;
        OpMem           : in     vl_logic;
        OpSaida         : in     vl_logic_vector(2 downto 0);
        OpULA           : in     vl_logic_vector(4 downto 0);
        OrigULA         : in     vl_logic;
        PCDst           : in     vl_logic_vector(1 downto 0);
        RegDst          : in     vl_logic;
        escreveReg      : in     vl_logic;
        halt            : in     vl_logic;
        jal             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Controle_vlg_check_tst;
