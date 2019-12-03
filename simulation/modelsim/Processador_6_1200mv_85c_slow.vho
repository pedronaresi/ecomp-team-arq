-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/29/2017 18:46:26"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ExtSinal IS
    PORT (
	entrada : IN std_logic_vector(15 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0);
	OpExt : IN std_logic
	);
END ExtSinal;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[28]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[29]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[30]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[31]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OpExt	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[11]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[12]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[14]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[15]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ExtSinal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_OpExt : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \OpExt~input_o\ : std_logic;
SIGNAL \saida[0]~0_combout\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \saida[1]~1_combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \saida[2]~2_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saida[3]~3_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \saida[4]~4_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \saida[5]~5_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \saida[6]~6_combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \saida[7]~7_combout\ : std_logic;
SIGNAL \entrada[8]~input_o\ : std_logic;
SIGNAL \saida[8]~8_combout\ : std_logic;
SIGNAL \entrada[9]~input_o\ : std_logic;
SIGNAL \saida[9]~9_combout\ : std_logic;
SIGNAL \entrada[10]~input_o\ : std_logic;
SIGNAL \saida[10]~10_combout\ : std_logic;
SIGNAL \entrada[11]~input_o\ : std_logic;
SIGNAL \saida[11]~11_combout\ : std_logic;
SIGNAL \entrada[12]~input_o\ : std_logic;
SIGNAL \saida[12]~12_combout\ : std_logic;
SIGNAL \entrada[13]~input_o\ : std_logic;
SIGNAL \saida[13]~13_combout\ : std_logic;
SIGNAL \entrada[14]~input_o\ : std_logic;
SIGNAL \saida[14]~14_combout\ : std_logic;
SIGNAL \entrada[15]~input_o\ : std_logic;
SIGNAL \saida[15]~15_combout\ : std_logic;
SIGNAL \saida[16]~16_combout\ : std_logic;
SIGNAL \saida[17]~17_combout\ : std_logic;
SIGNAL \saida[18]~18_combout\ : std_logic;
SIGNAL \saida[19]~19_combout\ : std_logic;
SIGNAL \saida[20]~20_combout\ : std_logic;
SIGNAL \saida[21]~21_combout\ : std_logic;
SIGNAL \saida[22]~22_combout\ : std_logic;
SIGNAL \saida[23]~23_combout\ : std_logic;
SIGNAL \saida[24]~24_combout\ : std_logic;
SIGNAL \saida[25]~25_combout\ : std_logic;
SIGNAL \saida[26]~26_combout\ : std_logic;
SIGNAL \saida[27]~27_combout\ : std_logic;
SIGNAL \saida[28]~28_combout\ : std_logic;
SIGNAL \saida[29]~29_combout\ : std_logic;
SIGNAL \saida[30]~30_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
saida <= ww_saida;
ww_OpExt <= OpExt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X31_Y0_N9
\saida[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\saida[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\saida[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\saida[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\saida[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\saida[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\saida[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\saida[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\saida[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[8]~8_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\saida[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[9]~9_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\saida[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[10]~10_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\saida[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[11]~11_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\saida[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[12]~12_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\saida[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[13]~13_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\saida[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[14]~14_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\saida[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[15]~15_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\saida[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[16]~16_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\saida[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[17]~17_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\saida[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[18]~18_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\saida[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[19]~19_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\saida[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[20]~20_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\saida[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[21]~21_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\saida[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[22]~22_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\saida[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[23]~23_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\saida[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[24]~24_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\saida[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[25]~25_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\saida[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[26]~26_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\saida[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[27]~27_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\saida[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[28]~28_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\saida[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[29]~29_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\saida[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida[30]~30_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\saida[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \entrada[15]~input_o\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

-- Location: IOIBUF_X29_Y0_N1
\entrada[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\OpExt~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OpExt,
	o => \OpExt~input_o\);

-- Location: LCCOMB_X36_Y1_N0
\saida[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[0]~0_combout\ = (\entrada[0]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[0]~0_combout\);

-- Location: IOIBUF_X46_Y41_N22
\entrada[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: LCCOMB_X51_Y31_N8
\saida[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[1]~1_combout\ = (\OpExt~input_o\ & \entrada[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datac => \entrada[1]~input_o\,
	combout => \saida[1]~1_combout\);

-- Location: IOIBUF_X43_Y0_N1
\entrada[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X36_Y1_N26
\saida[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[2]~2_combout\ = (\entrada[2]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[2]~2_combout\);

-- Location: IOIBUF_X29_Y0_N8
\entrada[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X36_Y1_N12
\saida[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[3]~3_combout\ = (\entrada[3]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[3]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[3]~3_combout\);

-- Location: IOIBUF_X36_Y0_N1
\entrada[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: LCCOMB_X36_Y1_N30
\saida[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[4]~4_combout\ = (\entrada[4]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[4]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[4]~4_combout\);

-- Location: IOIBUF_X41_Y0_N1
\entrada[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LCCOMB_X36_Y1_N16
\saida[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[5]~5_combout\ = (\entrada[5]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[5]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[5]~5_combout\);

-- Location: IOIBUF_X41_Y0_N8
\entrada[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X36_Y1_N10
\saida[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[6]~6_combout\ = (\entrada[6]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[6]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[6]~6_combout\);

-- Location: IOIBUF_X46_Y41_N15
\entrada[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: LCCOMB_X51_Y31_N18
\saida[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[7]~7_combout\ = (\OpExt~input_o\ & \entrada[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datac => \entrada[7]~input_o\,
	combout => \saida[7]~7_combout\);

-- Location: IOIBUF_X52_Y32_N15
\entrada[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(8),
	o => \entrada[8]~input_o\);

-- Location: LCCOMB_X51_Y31_N20
\saida[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[8]~8_combout\ = (\OpExt~input_o\ & \entrada[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OpExt~input_o\,
	datad => \entrada[8]~input_o\,
	combout => \saida[8]~8_combout\);

-- Location: IOIBUF_X52_Y32_N8
\entrada[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(9),
	o => \entrada[9]~input_o\);

-- Location: LCCOMB_X51_Y31_N30
\saida[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[9]~9_combout\ = (\OpExt~input_o\ & \entrada[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OpExt~input_o\,
	datad => \entrada[9]~input_o\,
	combout => \saida[9]~9_combout\);

-- Location: IOIBUF_X52_Y27_N1
\entrada[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(10),
	o => \entrada[10]~input_o\);

-- Location: LCCOMB_X51_Y31_N0
\saida[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[10]~10_combout\ = (\OpExt~input_o\ & \entrada[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OpExt~input_o\,
	datad => \entrada[10]~input_o\,
	combout => \saida[10]~10_combout\);

-- Location: IOIBUF_X48_Y41_N8
\entrada[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(11),
	o => \entrada[11]~input_o\);

-- Location: LCCOMB_X51_Y31_N10
\saida[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[11]~11_combout\ = (\OpExt~input_o\ & \entrada[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datac => \entrada[11]~input_o\,
	combout => \saida[11]~11_combout\);

-- Location: IOIBUF_X52_Y32_N1
\entrada[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(12),
	o => \entrada[12]~input_o\);

-- Location: LCCOMB_X51_Y31_N28
\saida[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[12]~12_combout\ = (\entrada[12]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[12]~input_o\,
	datac => \OpExt~input_o\,
	combout => \saida[12]~12_combout\);

-- Location: IOIBUF_X52_Y30_N1
\entrada[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(13),
	o => \entrada[13]~input_o\);

-- Location: LCCOMB_X51_Y31_N6
\saida[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[13]~13_combout\ = (\OpExt~input_o\ & \entrada[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datac => \entrada[13]~input_o\,
	combout => \saida[13]~13_combout\);

-- Location: IOIBUF_X25_Y0_N1
\entrada[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(14),
	o => \entrada[14]~input_o\);

-- Location: LCCOMB_X36_Y1_N28
\saida[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[14]~14_combout\ = (\entrada[14]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada[14]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[14]~14_combout\);

-- Location: IOIBUF_X41_Y41_N15
\entrada[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(15),
	o => \entrada[15]~input_o\);

-- Location: LCCOMB_X36_Y1_N6
\saida[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[15]~15_combout\ = (\entrada[15]~input_o\ & \OpExt~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[15]~15_combout\);

-- Location: LCCOMB_X36_Y1_N24
\saida[16]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[16]~16_combout\ = (\OpExt~input_o\ & ((\entrada[15]~input_o\))) # (!\OpExt~input_o\ & (\entrada[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[0]~input_o\,
	datab => \entrada[15]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[16]~16_combout\);

-- Location: LCCOMB_X51_Y31_N16
\saida[17]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[17]~17_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datab => \entrada[15]~input_o\,
	datac => \entrada[1]~input_o\,
	combout => \saida[17]~17_combout\);

-- Location: LCCOMB_X36_Y1_N2
\saida[18]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[18]~18_combout\ = (\OpExt~input_o\ & ((\entrada[15]~input_o\))) # (!\OpExt~input_o\ & (\entrada[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[2]~input_o\,
	datab => \entrada[15]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[18]~18_combout\);

-- Location: LCCOMB_X36_Y1_N4
\saida[19]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[19]~19_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \entrada[3]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[19]~19_combout\);

-- Location: LCCOMB_X36_Y1_N22
\saida[20]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[20]~20_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \entrada[4]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[20]~20_combout\);

-- Location: LCCOMB_X36_Y1_N8
\saida[21]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[21]~21_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \entrada[5]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[21]~21_combout\);

-- Location: LCCOMB_X36_Y1_N18
\saida[22]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[22]~22_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \entrada[6]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[22]~22_combout\);

-- Location: LCCOMB_X51_Y31_N26
\saida[23]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[23]~23_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datab => \entrada[15]~input_o\,
	datac => \entrada[7]~input_o\,
	combout => \saida[23]~23_combout\);

-- Location: LCCOMB_X51_Y31_N4
\saida[24]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[24]~24_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \OpExt~input_o\,
	datad => \entrada[8]~input_o\,
	combout => \saida[24]~24_combout\);

-- Location: LCCOMB_X51_Y31_N14
\saida[25]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[25]~25_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \OpExt~input_o\,
	datad => \entrada[9]~input_o\,
	combout => \saida[25]~25_combout\);

-- Location: LCCOMB_X51_Y31_N24
\saida[26]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[26]~26_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \OpExt~input_o\,
	datad => \entrada[10]~input_o\,
	combout => \saida[26]~26_combout\);

-- Location: LCCOMB_X51_Y31_N2
\saida[27]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[27]~27_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datab => \entrada[15]~input_o\,
	datac => \entrada[11]~input_o\,
	combout => \saida[27]~27_combout\);

-- Location: LCCOMB_X51_Y31_N12
\saida[28]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[28]~28_combout\ = (\OpExt~input_o\ & ((\entrada[15]~input_o\))) # (!\OpExt~input_o\ & (\entrada[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[12]~input_o\,
	datab => \entrada[15]~input_o\,
	datac => \OpExt~input_o\,
	combout => \saida[28]~28_combout\);

-- Location: LCCOMB_X51_Y31_N22
\saida[29]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[29]~29_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OpExt~input_o\,
	datab => \entrada[15]~input_o\,
	datac => \entrada[13]~input_o\,
	combout => \saida[29]~29_combout\);

-- Location: LCCOMB_X36_Y1_N20
\saida[30]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \saida[30]~30_combout\ = (\OpExt~input_o\ & (\entrada[15]~input_o\)) # (!\OpExt~input_o\ & ((\entrada[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada[15]~input_o\,
	datac => \entrada[14]~input_o\,
	datad => \OpExt~input_o\,
	combout => \saida[30]~30_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;
END structure;


