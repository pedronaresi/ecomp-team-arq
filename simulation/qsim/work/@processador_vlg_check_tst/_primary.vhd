library verilog;
use verilog.vl_types.all;
entity Processador_vlg_check_tst is
    port(
        dadosEscritaReg : in     vl_logic_vector(31 downto 0);
        display0        : in     vl_logic_vector(6 downto 0);
        display1        : in     vl_logic_vector(6 downto 0);
        display2        : in     vl_logic_vector(6 downto 0);
        display3        : in     vl_logic_vector(6 downto 0);
        display4        : in     vl_logic_vector(6 downto 0);
        display5        : in     vl_logic_vector(6 downto 0);
        display6        : in     vl_logic_vector(6 downto 0);
        display7        : in     vl_logic_vector(6 downto 0);
        endereco        : in     vl_logic_vector(31 downto 0);
        enderecoPC      : in     vl_logic_vector(31 downto 0);
        imediatoEx      : in     vl_logic_vector(31 downto 0);
        ledentrada      : in     vl_logic;
        ledsaida        : in     vl_logic;
        neg1            : in     vl_logic;
        neg2            : in     vl_logic;
        neg3            : in     vl_logic;
        saidaULA        : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Processador_vlg_check_tst;
