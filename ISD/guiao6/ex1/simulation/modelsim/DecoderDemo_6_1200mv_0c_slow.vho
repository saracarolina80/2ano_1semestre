-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "11/22/2020 21:28:37"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DecoderDemo2 IS
    PORT (
	Y0 : OUT std_logic;
	X3 : IN std_logic;
	X2 : IN std_logic;
	X1 : IN std_logic;
	X0 : IN std_logic;
	EOL : IN std_logic;
	E1 : IN std_logic;
	Y1 : OUT std_logic;
	Y2 : OUT std_logic;
	Y3 : OUT std_logic;
	Y4 : OUT std_logic;
	Y5 : OUT std_logic;
	Y6 : OUT std_logic;
	Y7 : OUT std_logic;
	Y8 : OUT std_logic;
	Y9 : OUT std_logic;
	Y10 : OUT std_logic;
	Y11 : OUT std_logic;
	Y12 : OUT std_logic;
	Y13 : OUT std_logic;
	Y14 : OUT std_logic;
	Y15 : OUT std_logic
	);
END DecoderDemo2;

-- Design Ports Information
-- Y0	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y3	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y4	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y5	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y6	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y7	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y8	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y9	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y10	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y11	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y12	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y13	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y14	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y15	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X0	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X1	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOL	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X3	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X2	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DecoderDemo2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_X3 : std_logic;
SIGNAL ww_X2 : std_logic;
SIGNAL ww_X1 : std_logic;
SIGNAL ww_X0 : std_logic;
SIGNAL ww_EOL : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y4 : std_logic;
SIGNAL ww_Y5 : std_logic;
SIGNAL ww_Y6 : std_logic;
SIGNAL ww_Y7 : std_logic;
SIGNAL ww_Y8 : std_logic;
SIGNAL ww_Y9 : std_logic;
SIGNAL ww_Y10 : std_logic;
SIGNAL ww_Y11 : std_logic;
SIGNAL ww_Y12 : std_logic;
SIGNAL ww_Y13 : std_logic;
SIGNAL ww_Y14 : std_logic;
SIGNAL ww_Y15 : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y4~output_o\ : std_logic;
SIGNAL \Y5~output_o\ : std_logic;
SIGNAL \Y6~output_o\ : std_logic;
SIGNAL \Y7~output_o\ : std_logic;
SIGNAL \Y8~output_o\ : std_logic;
SIGNAL \Y9~output_o\ : std_logic;
SIGNAL \Y10~output_o\ : std_logic;
SIGNAL \Y11~output_o\ : std_logic;
SIGNAL \Y12~output_o\ : std_logic;
SIGNAL \Y13~output_o\ : std_logic;
SIGNAL \Y14~output_o\ : std_logic;
SIGNAL \Y15~output_o\ : std_logic;
SIGNAL \X2~input_o\ : std_logic;
SIGNAL \X1~input_o\ : std_logic;
SIGNAL \E1~input_o\ : std_logic;
SIGNAL \X0~input_o\ : std_logic;
SIGNAL \EOL~input_o\ : std_logic;
SIGNAL \inst|inst|inst1~combout\ : std_logic;
SIGNAL \X3~input_o\ : std_logic;
SIGNAL \inst|inst1|inst1~combout\ : std_logic;
SIGNAL \inst|inst1|inst~combout\ : std_logic;
SIGNAL \inst|inst1|inst2~combout\ : std_logic;
SIGNAL \inst|inst1|inst3~combout\ : std_logic;
SIGNAL \inst|inst|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst1~combout\ : std_logic;
SIGNAL \inst|inst2|inst~combout\ : std_logic;
SIGNAL \inst|inst2|inst2~combout\ : std_logic;
SIGNAL \inst|inst2|inst3~combout\ : std_logic;
SIGNAL \inst|inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst1~combout\ : std_logic;
SIGNAL \inst|inst3|inst~combout\ : std_logic;
SIGNAL \inst|inst3|inst2~combout\ : std_logic;
SIGNAL \inst|inst3|inst3~combout\ : std_logic;
SIGNAL \inst|inst|inst3~combout\ : std_logic;
SIGNAL \inst|inst4|inst1~combout\ : std_logic;
SIGNAL \inst|inst4|inst~combout\ : std_logic;
SIGNAL \inst|inst4|inst2~combout\ : std_logic;
SIGNAL \inst|inst4|inst3~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y0 <= ww_Y0;
ww_X3 <= X3;
ww_X2 <= X2;
ww_X1 <= X1;
ww_X0 <= X0;
ww_EOL <= EOL;
ww_E1 <= E1;
Y1 <= ww_Y1;
Y2 <= ww_Y2;
Y3 <= ww_Y3;
Y4 <= ww_Y4;
Y5 <= ww_Y5;
Y6 <= ww_Y6;
Y7 <= ww_Y7;
Y8 <= ww_Y8;
Y9 <= ww_Y9;
Y10 <= ww_Y10;
Y11 <= ww_Y11;
Y12 <= ww_Y12;
Y13 <= ww_Y13;
Y14 <= ww_Y14;
Y15 <= ww_Y15;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\Y0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst1~combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\Y1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst~combout\,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\Y2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst2~combout\,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Y3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1|inst3~combout\,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Y4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst1~combout\,
	devoe => ww_devoe,
	o => \Y4~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Y5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst~combout\,
	devoe => ww_devoe,
	o => \Y5~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Y6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst2~combout\,
	devoe => ww_devoe,
	o => \Y6~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Y7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2|inst3~combout\,
	devoe => ww_devoe,
	o => \Y7~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Y8~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst1~combout\,
	devoe => ww_devoe,
	o => \Y8~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Y9~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst~combout\,
	devoe => ww_devoe,
	o => \Y9~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Y10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst2~combout\,
	devoe => ww_devoe,
	o => \Y10~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\Y11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3|inst3~combout\,
	devoe => ww_devoe,
	o => \Y11~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\Y12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst1~combout\,
	devoe => ww_devoe,
	o => \Y12~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\Y13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst~combout\,
	devoe => ww_devoe,
	o => \Y13~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\Y14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst2~combout\,
	devoe => ww_devoe,
	o => \Y14~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\Y15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4|inst3~combout\,
	devoe => ww_devoe,
	o => \Y15~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\X2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X2,
	o => \X2~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\X1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X1,
	o => \X1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\E1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E1,
	o => \E1~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\X0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X0,
	o => \X0~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\EOL~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EOL,
	o => \EOL~input_o\);

-- Location: LCCOMB_X2_Y11_N16
\inst|inst|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst1~combout\ = (!\X1~input_o\ & (\E1~input_o\ & (!\X0~input_o\ & !\EOL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1~input_o\,
	datab => \E1~input_o\,
	datac => \X0~input_o\,
	datad => \EOL~input_o\,
	combout => \inst|inst|inst1~combout\);

-- Location: IOIBUF_X7_Y24_N1
\X3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X3,
	o => \X3~input_o\);

-- Location: LCCOMB_X2_Y11_N10
\inst|inst1|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst1~combout\ = (!\X2~input_o\ & (\inst|inst|inst1~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst1~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst1|inst1~combout\);

-- Location: LCCOMB_X2_Y11_N28
\inst|inst1|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst~combout\ = (!\X2~input_o\ & (\inst|inst|inst1~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst1~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst1|inst~combout\);

-- Location: LCCOMB_X2_Y11_N14
\inst|inst1|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst2~combout\ = (\X2~input_o\ & (\inst|inst|inst1~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst1~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst1|inst2~combout\);

-- Location: LCCOMB_X2_Y11_N24
\inst|inst1|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst1|inst3~combout\ = (\X2~input_o\ & (\inst|inst|inst1~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst1~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst1|inst3~combout\);

-- Location: LCCOMB_X2_Y11_N18
\inst|inst|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst~combout\ = (\X1~input_o\ & (\E1~input_o\ & (!\X0~input_o\ & !\EOL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1~input_o\,
	datab => \E1~input_o\,
	datac => \X0~input_o\,
	datad => \EOL~input_o\,
	combout => \inst|inst|inst~combout\);

-- Location: LCCOMB_X2_Y11_N12
\inst|inst2|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst1~combout\ = (!\X2~input_o\ & (\inst|inst|inst~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst2|inst1~combout\);

-- Location: LCCOMB_X2_Y11_N6
\inst|inst2|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst~combout\ = (!\X2~input_o\ & (\inst|inst|inst~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst2|inst~combout\);

-- Location: LCCOMB_X2_Y11_N8
\inst|inst2|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst2~combout\ = (\X2~input_o\ & (\inst|inst|inst~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst2|inst2~combout\);

-- Location: LCCOMB_X2_Y11_N26
\inst|inst2|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2|inst3~combout\ = (\X2~input_o\ & (\inst|inst|inst~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst2|inst3~combout\);

-- Location: LCCOMB_X2_Y11_N20
\inst|inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst2~combout\ = (!\X1~input_o\ & (\E1~input_o\ & (\X0~input_o\ & !\EOL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1~input_o\,
	datab => \E1~input_o\,
	datac => \X0~input_o\,
	datad => \EOL~input_o\,
	combout => \inst|inst|inst2~combout\);

-- Location: LCCOMB_X2_Y11_N22
\inst|inst3|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst1~combout\ = (!\X2~input_o\ & (\inst|inst|inst2~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst2~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst3|inst1~combout\);

-- Location: LCCOMB_X2_Y11_N0
\inst|inst3|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst~combout\ = (!\X2~input_o\ & (\inst|inst|inst2~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst2~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst3|inst~combout\);

-- Location: LCCOMB_X2_Y11_N2
\inst|inst3|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst2~combout\ = (\X2~input_o\ & (\inst|inst|inst2~combout\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst2~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst3|inst2~combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst|inst3|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3|inst3~combout\ = (\X2~input_o\ & (\inst|inst|inst2~combout\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X2~input_o\,
	datab => \inst|inst|inst2~combout\,
	datad => \X3~input_o\,
	combout => \inst|inst3|inst3~combout\);

-- Location: LCCOMB_X2_Y11_N30
\inst|inst|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst|inst3~combout\ = (\X1~input_o\ & (\E1~input_o\ & (\X0~input_o\ & !\EOL~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X1~input_o\,
	datab => \E1~input_o\,
	datac => \X0~input_o\,
	datad => \EOL~input_o\,
	combout => \inst|inst|inst3~combout\);

-- Location: LCCOMB_X8_Y4_N24
\inst|inst4|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst1~combout\ = (\inst|inst|inst3~combout\ & (!\X2~input_o\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3~combout\,
	datab => \X2~input_o\,
	datac => \X3~input_o\,
	combout => \inst|inst4|inst1~combout\);

-- Location: LCCOMB_X8_Y4_N18
\inst|inst4|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst~combout\ = (\inst|inst|inst3~combout\ & (!\X2~input_o\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3~combout\,
	datab => \X2~input_o\,
	datac => \X3~input_o\,
	combout => \inst|inst4|inst~combout\);

-- Location: LCCOMB_X8_Y4_N28
\inst|inst4|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst2~combout\ = (\inst|inst|inst3~combout\ & (\X2~input_o\ & !\X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3~combout\,
	datab => \X2~input_o\,
	datac => \X3~input_o\,
	combout => \inst|inst4|inst2~combout\);

-- Location: LCCOMB_X8_Y4_N22
\inst|inst4|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst4|inst3~combout\ = (\inst|inst|inst3~combout\ & (\X2~input_o\ & \X3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst|inst3~combout\,
	datab => \X2~input_o\,
	datac => \X3~input_o\,
	combout => \inst|inst4|inst3~combout\);

ww_Y0 <= \Y0~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y3 <= \Y3~output_o\;

ww_Y4 <= \Y4~output_o\;

ww_Y5 <= \Y5~output_o\;

ww_Y6 <= \Y6~output_o\;

ww_Y7 <= \Y7~output_o\;

ww_Y8 <= \Y8~output_o\;

ww_Y9 <= \Y9~output_o\;

ww_Y10 <= \Y10~output_o\;

ww_Y11 <= \Y11~output_o\;

ww_Y12 <= \Y12~output_o\;

ww_Y13 <= \Y13~output_o\;

ww_Y14 <= \Y14~output_o\;

ww_Y15 <= \Y15~output_o\;
END structure;


