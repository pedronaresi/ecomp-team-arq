library verilog;
use verilog.vl_types.all;
entity Controle is
    port(
        Inst            : in     vl_logic_vector(5 downto 0);
        botaoEntrada    : in     vl_logic;
        botaoSaida      : in     vl_logic;
        halt            : out    vl_logic;
        escreveReg      : out    vl_logic;
        OpExt           : out    vl_logic;
        NegativoEx      : out    vl_logic;
        RegDst          : out    vl_logic;
        OrigULA         : out    vl_logic;
        OpULA           : out    vl_logic_vector(4 downto 0);
        PCDst           : out    vl_logic_vector(1 downto 0);
        OpMem           : out    vl_logic;
        OpIO            : out    vl_logic;
        OpSaida         : out    vl_logic_vector(2 downto 0);
        jal             : out    vl_logic
    );
end Controle;
