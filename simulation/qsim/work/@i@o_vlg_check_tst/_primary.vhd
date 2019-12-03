library verilog;
use verilog.vl_types.all;
entity IO_vlg_check_tst is
    port(
        dadosLidos      : in     vl_logic_vector(31 downto 0);
        display0        : in     vl_logic_vector(3 downto 0);
        display1        : in     vl_logic_vector(3 downto 0);
        display2        : in     vl_logic_vector(3 downto 0);
        display3        : in     vl_logic_vector(3 downto 0);
        display4        : in     vl_logic_vector(3 downto 0);
        display5        : in     vl_logic_vector(3 downto 0);
        display6        : in     vl_logic_vector(3 downto 0);
        display7        : in     vl_logic_vector(3 downto 0);
        neg1            : in     vl_logic;
        neg2            : in     vl_logic;
        neg3            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end IO_vlg_check_tst;
