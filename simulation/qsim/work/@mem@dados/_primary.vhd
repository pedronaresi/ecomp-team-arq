library verilog;
use verilog.vl_types.all;
entity MemDados is
    port(
        dadosEscrita    : in     vl_logic_vector(31 downto 0);
        dadosLidos      : out    vl_logic_vector(31 downto 0);
        endereco        : in     vl_logic_vector(31 downto 0);
        OpIO            : in     vl_logic;
        clock           : in     vl_logic
    );
end MemDados;
