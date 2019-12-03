library verilog;
use verilog.vl_types.all;
entity BancoReg is
    port(
        reg1            : in     vl_logic_vector(4 downto 0);
        reg2            : in     vl_logic_vector(4 downto 0);
        regEscrita      : in     vl_logic_vector(4 downto 0);
        dado1           : out    vl_logic_vector(31 downto 0);
        dado2           : out    vl_logic_vector(31 downto 0);
        dadosEscrita    : in     vl_logic_vector(31 downto 0);
        escreveReg      : in     vl_logic;
        clock           : in     vl_logic;
        jal             : in     vl_logic
    );
end BancoReg;
