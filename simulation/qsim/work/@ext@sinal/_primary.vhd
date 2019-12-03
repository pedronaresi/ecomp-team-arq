library verilog;
use verilog.vl_types.all;
entity ExtSinal is
    port(
        entrada         : in     vl_logic_vector(15 downto 0);
        saida           : out    vl_logic_vector(31 downto 0);
        OpExt           : in     vl_logic;
        Negativo        : in     vl_logic
    );
end ExtSinal;
