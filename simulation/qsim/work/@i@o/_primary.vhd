library verilog;
use verilog.vl_types.all;
entity IO is
    port(
        dadosEscrita    : in     vl_logic_vector(31 downto 0);
        endereco        : in     vl_logic_vector(31 downto 0);
        dadosExternos   : in     vl_logic_vector(15 downto 0);
        dadosLidos      : out    vl_logic_vector(31 downto 0);
        OpIO            : in     vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        display0        : out    vl_logic_vector(3 downto 0);
        display1        : out    vl_logic_vector(3 downto 0);
        display2        : out    vl_logic_vector(3 downto 0);
        display3        : out    vl_logic_vector(3 downto 0);
        display4        : out    vl_logic_vector(3 downto 0);
        display5        : out    vl_logic_vector(3 downto 0);
        display6        : out    vl_logic_vector(3 downto 0);
        display7        : out    vl_logic_vector(3 downto 0);
        neg1            : out    vl_logic;
        neg2            : out    vl_logic;
        neg3            : out    vl_logic
    );
end IO;
