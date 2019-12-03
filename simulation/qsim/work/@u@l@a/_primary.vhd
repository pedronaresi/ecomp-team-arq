library verilog;
use verilog.vl_types.all;
entity ULA is
    port(
        OpULA           : in     vl_logic_vector(4 downto 0);
        dado1           : in     vl_logic_vector(31 downto 0);
        dado2           : in     vl_logic_vector(31 downto 0);
        saida           : out    vl_logic_vector(31 downto 0);
        shamt           : in     vl_logic_vector(4 downto 0);
        UlaCrl          : out    vl_logic
    );
end ULA;
