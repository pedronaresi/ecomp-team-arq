library verilog;
use verilog.vl_types.all;
entity Processador is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        dadosExternos   : in     vl_logic_vector(15 downto 0);
        display0        : out    vl_logic_vector(6 downto 0);
        display1        : out    vl_logic_vector(6 downto 0);
        display2        : out    vl_logic_vector(6 downto 0);
        display3        : out    vl_logic_vector(6 downto 0);
        display4        : out    vl_logic_vector(6 downto 0);
        display5        : out    vl_logic_vector(6 downto 0);
        display6        : out    vl_logic_vector(6 downto 0);
        display7        : out    vl_logic_vector(6 downto 0);
        neg1            : out    vl_logic;
        neg2            : out    vl_logic;
        neg3            : out    vl_logic;
        botaoEntrada2   : in     vl_logic;
        botaoSaida2     : in     vl_logic;
        ledentrada      : out    vl_logic;
        ledsaida        : out    vl_logic;
        endereco        : out    vl_logic_vector(31 downto 0);
        dadosEscritaReg : out    vl_logic_vector(31 downto 0);
        imediatoEx      : out    vl_logic_vector(31 downto 0);
        saidaULA        : out    vl_logic_vector(31 downto 0);
        enderecoPC      : out    vl_logic_vector(31 downto 0)
    );
end Processador;
