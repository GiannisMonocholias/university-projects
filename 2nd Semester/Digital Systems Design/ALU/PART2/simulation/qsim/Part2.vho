-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/25/2024 17:37:27"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Part2 IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	s : BUFFER std_logic_vector(15 DOWNTO 0);
	Overflow : BUFFER std_logic
	);
END Part2;

-- Design Ports Information
-- s[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[4]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[7]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[11]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[13]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[15]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \s[0]~output_o\ : std_logic;
SIGNAL \s[1]~output_o\ : std_logic;
SIGNAL \s[2]~output_o\ : std_logic;
SIGNAL \s[3]~output_o\ : std_logic;
SIGNAL \s[4]~output_o\ : std_logic;
SIGNAL \s[5]~output_o\ : std_logic;
SIGNAL \s[6]~output_o\ : std_logic;
SIGNAL \s[7]~output_o\ : std_logic;
SIGNAL \s[8]~output_o\ : std_logic;
SIGNAL \s[9]~output_o\ : std_logic;
SIGNAL \s[10]~output_o\ : std_logic;
SIGNAL \s[11]~output_o\ : std_logic;
SIGNAL \s[12]~output_o\ : std_logic;
SIGNAL \s[13]~output_o\ : std_logic;
SIGNAL \s[14]~output_o\ : std_logic;
SIGNAL \s[15]~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \U0|comb~3_combout\ : std_logic;
SIGNAL \U0|comb~2_combout\ : std_logic;
SIGNAL \U0|operation[1]~0_combout\ : std_logic;
SIGNAL \U0|comb~1_combout\ : std_logic;
SIGNAL \U0|comb~0_combout\ : std_logic;
SIGNAL \U0|Binvert~combout\ : std_logic;
SIGNAL \U0|operation[1]~1_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|CarryIn~combout\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \U1|I6|Mux0~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \U0|Binvert~0_combout\ : std_logic;
SIGNAL \U0|comb~4_combout\ : std_logic;
SIGNAL \U0|Ainvert~combout\ : std_logic;
SIGNAL \U1|I6|Mux0~1_combout\ : std_logic;
SIGNAL \U1|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \U1|I6|Mux0~2_combout\ : std_logic;
SIGNAL \U1|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \GEN:1:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:1:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:1:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:1:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \GEN:1:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \GEN:2:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \GEN:1:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:2:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:2:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:2:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \GEN:2:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:3:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:3:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:3:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:3:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:3:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \GEN:4:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:3:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:4:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \GEN:4:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:4:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:4:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \GEN:5:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:5:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:5:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \GEN:5:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:5:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \GEN:5:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:6:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \GEN:6:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:6:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:6:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \GEN:6:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:7:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:7:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:7:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \GEN:7:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:7:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \GEN:7:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \GEN:8:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:8:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:8:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:8:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \GEN:8:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:9:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:9:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:9:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:9:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:9:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \GEN:10:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \GEN:9:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:10:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:10:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:10:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \GEN:10:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:11:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:11:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:11:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:11:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:11:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \GEN:11:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:12:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:12:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:12:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:12:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \GEN:13:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:12:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:13:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:13:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \GEN:13:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \GEN:13:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \GEN:13:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:14:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:14:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:14:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:14:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \GEN:14:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \GEN:15:U2|I6|Mux0~0_combout\ : std_logic;
SIGNAL \GEN:15:U2|I1|output_mux2_1~0_combout\ : std_logic;
SIGNAL \GEN:15:U2|I6|Mux0~2_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \GEN:15:U2|I6|Mux0~1_combout\ : std_logic;
SIGNAL \GEN:15:U2|I6|Mux0~3_combout\ : std_logic;
SIGNAL \GEN:15:U2|I4|CarryOut~0_combout\ : std_logic;
SIGNAL \Overflow~0_combout\ : std_logic;
SIGNAL \U0|operation\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
s <= ww_s;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X31_Y12_N9
\s[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[0]~output_o\);

-- Location: IOOBUF_X31_Y13_N2
\s[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:1:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[1]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\s[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:2:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[2]~output_o\);

-- Location: IOOBUF_X10_Y18_N16
\s[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:3:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[3]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\s[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:4:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\s[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:5:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\s[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:6:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[6]~output_o\);

-- Location: IOOBUF_X3_Y10_N2
\s[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:7:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[7]~output_o\);

-- Location: IOOBUF_X3_Y10_N9
\s[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:8:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[8]~output_o\);

-- Location: IOOBUF_X6_Y10_N23
\s[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:9:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[9]~output_o\);

-- Location: IOOBUF_X10_Y15_N9
\s[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:10:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[10]~output_o\);

-- Location: IOOBUF_X10_Y15_N2
\s[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:11:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\s[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:12:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\s[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:13:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\s[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:14:U2|I6|Mux0~2_combout\,
	devoe => ww_devoe,
	o => \s[14]~output_o\);

-- Location: IOOBUF_X17_Y0_N23
\s[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN:15:U2|I6|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \s[15]~output_o\);

-- Location: IOOBUF_X17_Y0_N30
\Overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Overflow~0_combout\,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOIBUF_X13_Y0_N1
\opcode[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\opcode[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\opcode[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: LCCOMB_X19_Y8_N10
\U0|comb~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|comb~3_combout\ = (\opcode[1]~input_o\ & (!\opcode[0]~input_o\ & \opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & (\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|comb~3_combout\);

-- Location: LCCOMB_X19_Y8_N8
\U0|comb~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|comb~2_combout\ = (\opcode[1]~input_o\ & ((!\opcode[2]~input_o\))) # (!\opcode[1]~input_o\ & (!\opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|comb~2_combout\);

-- Location: LCCOMB_X19_Y8_N0
\U0|operation[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|operation\(0) = (!\U0|comb~2_combout\ & ((\U0|comb~3_combout\) # (\U0|operation\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|comb~3_combout\,
	datac => \U0|comb~2_combout\,
	datad => \U0|operation\(0),
	combout => \U0|operation\(0));

-- Location: LCCOMB_X19_Y8_N12
\U0|operation[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|operation[1]~0_combout\ = (!\opcode[2]~input_o\) # (!\opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|operation[1]~0_combout\);

-- Location: LCCOMB_X19_Y8_N18
\U0|operation[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|operation\(1) = (\opcode[1]~input_o\ & ((\U0|operation[1]~0_combout\) # (\U0|operation\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation[1]~0_combout\,
	datab => \opcode[1]~input_o\,
	datad => \U0|operation\(1),
	combout => \U0|operation\(1));

-- Location: LCCOMB_X19_Y8_N22
\U0|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|comb~1_combout\ = (\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\)) # (!\opcode[1]~input_o\ & ((\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|comb~1_combout\);

-- Location: LCCOMB_X19_Y8_N20
\U0|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|comb~0_combout\ = (\opcode[1]~input_o\ & (!\opcode[0]~input_o\)) # (!\opcode[1]~input_o\ & ((!\opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|comb~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\U0|Binvert\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Binvert~combout\ = (!\U0|comb~0_combout\ & ((\U0|comb~1_combout\) # (\U0|Binvert~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|comb~1_combout\,
	datab => \U0|comb~0_combout\,
	datac => \U0|Binvert~combout\,
	combout => \U0|Binvert~combout\);

-- Location: LCCOMB_X19_Y8_N2
\U0|operation[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|operation[1]~1_combout\ = (\opcode[1]~input_o\ & \opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	combout => \U0|operation[1]~1_combout\);

-- Location: LCCOMB_X19_Y8_N4
\U0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (\opcode[1]~input_o\ & (\opcode[0]~input_o\ & !\opcode[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\U0|CarryIn\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|CarryIn~combout\ = (\U0|operation[1]~1_combout\ & ((\U0|Equal0~0_combout\) # (\U0|CarryIn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|operation[1]~1_combout\,
	datac => \U0|Equal0~0_combout\,
	datad => \U0|CarryIn~combout\,
	combout => \U0|CarryIn~combout\);

-- Location: IOIBUF_X31_Y11_N15
\b[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X28_Y12_N10
\U1|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\U0|Binvert~combout\ $ (((\b[0]~input_o\))))) # (!\U0|operation\(0) & (((\U0|CarryIn~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \U0|Binvert~combout\,
	datac => \U0|CarryIn~combout\,
	datad => \b[0]~input_o\,
	combout => \U1|I6|Mux0~0_combout\);

-- Location: IOIBUF_X31_Y13_N15
\a[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: LCCOMB_X19_Y8_N24
\U0|Binvert~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Binvert~0_combout\ = (!\opcode[1]~input_o\ & \opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|Binvert~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\U0|comb~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|comb~4_combout\ = ((\opcode[1]~input_o\ & !\opcode[0]~input_o\)) # (!\opcode[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opcode[1]~input_o\,
	datac => \opcode[0]~input_o\,
	datad => \opcode[2]~input_o\,
	combout => \U0|comb~4_combout\);

-- Location: LCCOMB_X19_Y8_N28
\U0|Ainvert\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|Ainvert~combout\ = (!\U0|comb~4_combout\ & ((\U0|Binvert~0_combout\) # (\U0|Ainvert~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Binvert~0_combout\,
	datac => \U0|comb~4_combout\,
	datad => \U0|Ainvert~combout\,
	combout => \U0|Ainvert~combout\);

-- Location: LCCOMB_X28_Y12_N4
\U1|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|I6|Mux0~1_combout\ = \a[0]~input_o\ $ (\U0|Ainvert~combout\ $ (((\U1|I6|Mux0~0_combout\ & \U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|I6|Mux0~0_combout\,
	datab => \U0|operation\(1),
	datac => \a[0]~input_o\,
	datad => \U0|Ainvert~combout\,
	combout => \U1|I6|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y12_N24
\U1|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[0]~input_o\,
	combout => \U1|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\U1|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|I6|Mux0~2_combout\ = (\U1|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\U0|operation\(1) $ (\U1|I1|output_mux2_1~0_combout\)))) # (!\U1|I6|Mux0~1_combout\ & (\U1|I1|output_mux2_1~0_combout\ & (\U0|operation\(0) $ (\U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \U0|operation\(1),
	datac => \U1|I6|Mux0~1_combout\,
	datad => \U1|I1|output_mux2_1~0_combout\,
	combout => \U1|I6|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y12_N26
\U1|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|I4|CarryOut~0_combout\ = (\U0|CarryIn~combout\ & ((\U1|I1|output_mux2_1~0_combout\) # (\a[0]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\U0|CarryIn~combout\ & (\U1|I1|output_mux2_1~0_combout\ & (\a[0]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \U0|CarryIn~combout\,
	datad => \U1|I1|output_mux2_1~0_combout\,
	combout => \U1|I4|CarryOut~0_combout\);

-- Location: IOIBUF_X31_Y12_N22
\b[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: LCCOMB_X28_Y12_N28
\GEN:1:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (\U1|I4|CarryOut~0_combout\)) # (!\U0|operation\(1) & ((\U0|Binvert~combout\ $ (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|I4|CarryOut~0_combout\,
	datab => \U0|operation\(1),
	datac => \U0|Binvert~combout\,
	datad => \b[1]~input_o\,
	combout => \GEN:1:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y12_N16
\GEN:1:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[1]~input_o\,
	combout => \GEN:1:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X28_Y12_N22
\GEN:1:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:1:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:1:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:1:U2|I6|Mux0~0_combout\,
	datab => \GEN:1:U2|I1|output_mux2_1~0_combout\,
	datac => \U0|operation\(0),
	datad => \U0|operation\(1),
	combout => \GEN:1:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y12_N8
\GEN:1:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:1:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:1:U2|I6|Mux0~0_combout\ $ (\GEN:1:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:1:U2|I6|Mux0~0_combout\,
	datab => \GEN:1:U2|I1|output_mux2_1~0_combout\,
	datac => \U0|operation\(0),
	datad => \U0|operation\(1),
	combout => \GEN:1:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X31_Y12_N15
\a[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X28_Y12_N2
\GEN:1:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I6|Mux0~3_combout\ = \GEN:1:U2|I6|Mux0~2_combout\ $ (((\GEN:1:U2|I6|Mux0~1_combout\ & (\a[1]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:1:U2|I6|Mux0~1_combout\,
	datab => \GEN:1:U2|I6|Mux0~2_combout\,
	datac => \a[1]~input_o\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:1:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X31_Y12_N1
\b[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: LCCOMB_X28_Y12_N12
\GEN:2:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:2:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[2]~input_o\,
	combout => \GEN:2:U2|I1|output_mux2_1~0_combout\);

-- Location: IOIBUF_X31_Y15_N8
\a[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X28_Y12_N14
\GEN:1:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:1:U2|I4|CarryOut~0_combout\ = (\U1|I4|CarryOut~0_combout\ & ((\GEN:1:U2|I1|output_mux2_1~0_combout\) # (\a[1]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\U1|I4|CarryOut~0_combout\ & (\GEN:1:U2|I1|output_mux2_1~0_combout\ & (\a[1]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|I4|CarryOut~0_combout\,
	datab => \GEN:1:U2|I1|output_mux2_1~0_combout\,
	datac => \a[1]~input_o\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:1:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X28_Y12_N0
\GEN:2:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:2:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & ((\U0|Binvert~combout\ $ (\b[2]~input_o\)))) # (!\U0|operation\(0) & (\GEN:1:U2|I4|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \GEN:1:U2|I4|CarryOut~0_combout\,
	datac => \U0|Binvert~combout\,
	datad => \b[2]~input_o\,
	combout => \GEN:2:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y12_N18
\GEN:2:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:2:U2|I6|Mux0~1_combout\ = \a[2]~input_o\ $ (\U0|Ainvert~combout\ $ (((\GEN:2:U2|I6|Mux0~0_combout\ & \U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:2:U2|I6|Mux0~0_combout\,
	datad => \U0|operation\(1),
	combout => \GEN:2:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y12_N20
\GEN:2:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:2:U2|I6|Mux0~2_combout\ = (\GEN:2:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\GEN:2:U2|I1|output_mux2_1~0_combout\ $ (\U0|operation\(1))))) # (!\GEN:2:U2|I6|Mux0~1_combout\ & (\GEN:2:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(1) $ 
-- (\U0|operation\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:2:U2|I1|output_mux2_1~0_combout\,
	datab => \U0|operation\(1),
	datac => \U0|operation\(0),
	datad => \GEN:2:U2|I6|Mux0~1_combout\,
	combout => \GEN:2:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X22_Y0_N1
\a[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\b[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X28_Y12_N30
\GEN:2:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:2:U2|I4|CarryOut~0_combout\ = (\GEN:2:U2|I1|output_mux2_1~0_combout\ & ((\GEN:1:U2|I4|CarryOut~0_combout\) # (\U0|Ainvert~combout\ $ (\a[2]~input_o\)))) # (!\GEN:2:U2|I1|output_mux2_1~0_combout\ & (\GEN:1:U2|I4|CarryOut~0_combout\ & 
-- (\U0|Ainvert~combout\ $ (\a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:2:U2|I1|output_mux2_1~0_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:1:U2|I4|CarryOut~0_combout\,
	datad => \a[2]~input_o\,
	combout => \GEN:2:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\GEN:3:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:2:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\b[3]~input_o\ $ ((\U0|Binvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \b[3]~input_o\,
	datac => \U0|Binvert~combout\,
	datad => \GEN:2:U2|I4|CarryOut~0_combout\,
	combout => \GEN:3:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\GEN:3:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[3]~input_o\,
	combout => \GEN:3:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X19_Y4_N18
\GEN:3:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:3:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:3:U2|I6|Mux0~0_combout\ $ (\GEN:3:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:3:U2|I6|Mux0~0_combout\,
	datac => \U0|operation\(0),
	datad => \GEN:3:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:3:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y4_N8
\GEN:3:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:3:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:3:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:3:U2|I6|Mux0~0_combout\,
	datac => \U0|operation\(0),
	datad => \GEN:3:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:3:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y4_N28
\GEN:3:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I6|Mux0~3_combout\ = \GEN:3:U2|I6|Mux0~2_combout\ $ (((\GEN:3:U2|I6|Mux0~1_combout\ & (\a[3]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \GEN:3:U2|I6|Mux0~2_combout\,
	datac => \GEN:3:U2|I6|Mux0~1_combout\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:3:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X19_Y0_N15
\b[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N22
\GEN:4:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:4:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datac => \b[4]~input_o\,
	combout => \GEN:4:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X19_Y4_N24
\GEN:3:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:3:U2|I4|CarryOut~0_combout\ = (\GEN:3:U2|I1|output_mux2_1~0_combout\ & ((\GEN:2:U2|I4|CarryOut~0_combout\) # (\a[3]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:3:U2|I1|output_mux2_1~0_combout\ & (\GEN:2:U2|I4|CarryOut~0_combout\ & (\a[3]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \GEN:3:U2|I1|output_mux2_1~0_combout\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:2:U2|I4|CarryOut~0_combout\,
	combout => \GEN:3:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X19_Y4_N26
\GEN:4:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:4:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\U0|Binvert~combout\ $ ((\b[4]~input_o\)))) # (!\U0|operation\(0) & (((\GEN:3:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datab => \b[4]~input_o\,
	datac => \U0|operation\(0),
	datad => \GEN:3:U2|I4|CarryOut~0_combout\,
	combout => \GEN:4:U2|I6|Mux0~0_combout\);

-- Location: IOIBUF_X19_Y0_N1
\a[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N4
\GEN:4:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:4:U2|I6|Mux0~1_combout\ = \U0|Ainvert~combout\ $ (\a[4]~input_o\ $ (((\GEN:4:U2|I6|Mux0~0_combout\ & \U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:4:U2|I6|Mux0~0_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \U0|operation\(1),
	datad => \a[4]~input_o\,
	combout => \GEN:4:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y4_N6
\GEN:4:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:4:U2|I6|Mux0~2_combout\ = (\GEN:4:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\GEN:4:U2|I1|output_mux2_1~0_combout\ $ (\U0|operation\(1))))) # (!\GEN:4:U2|I6|Mux0~1_combout\ & (\GEN:4:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(0) $ 
-- (\U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:4:U2|I1|output_mux2_1~0_combout\,
	datab => \GEN:4:U2|I6|Mux0~1_combout\,
	datac => \U0|operation\(0),
	datad => \U0|operation\(1),
	combout => \GEN:4:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y4_N2
\GEN:4:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:4:U2|I4|CarryOut~0_combout\ = (\GEN:4:U2|I1|output_mux2_1~0_combout\ & ((\GEN:3:U2|I4|CarryOut~0_combout\) # (\a[4]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:4:U2|I1|output_mux2_1~0_combout\ & (\GEN:3:U2|I4|CarryOut~0_combout\ & (\a[4]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:4:U2|I1|output_mux2_1~0_combout\,
	datab => \a[4]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:3:U2|I4|CarryOut~0_combout\,
	combout => \GEN:4:U2|I4|CarryOut~0_combout\);

-- Location: IOIBUF_X22_Y0_N29
\b[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\GEN:5:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:4:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\U0|Binvert~combout\ $ (((\b[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datab => \GEN:4:U2|I4|CarryOut~0_combout\,
	datac => \U0|operation\(1),
	datad => \b[5]~input_o\,
	combout => \GEN:5:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y4_N0
\GEN:5:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datad => \b[5]~input_o\,
	combout => \GEN:5:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X19_Y4_N30
\GEN:5:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:5:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:5:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:5:U2|I6|Mux0~0_combout\,
	datac => \U0|operation\(0),
	datad => \GEN:5:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:5:U2|I6|Mux0~1_combout\);

-- Location: IOIBUF_X22_Y0_N22
\a[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: LCCOMB_X19_Y4_N16
\GEN:5:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:5:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:5:U2|I6|Mux0~0_combout\ $ (\GEN:5:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:5:U2|I6|Mux0~0_combout\,
	datac => \U0|operation\(0),
	datad => \GEN:5:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:5:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y4_N10
\GEN:5:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I6|Mux0~3_combout\ = \GEN:5:U2|I6|Mux0~2_combout\ $ (((\GEN:5:U2|I6|Mux0~1_combout\ & (\U0|Ainvert~combout\ $ (\a[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:5:U2|I6|Mux0~1_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \a[5]~input_o\,
	datad => \GEN:5:U2|I6|Mux0~2_combout\,
	combout => \GEN:5:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X13_Y0_N22
\b[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X19_Y4_N12
\GEN:5:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:5:U2|I4|CarryOut~0_combout\ = (\GEN:4:U2|I4|CarryOut~0_combout\ & ((\GEN:5:U2|I1|output_mux2_1~0_combout\) # (\a[5]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:4:U2|I4|CarryOut~0_combout\ & (\GEN:5:U2|I1|output_mux2_1~0_combout\ & (\a[5]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:4:U2|I4|CarryOut~0_combout\,
	datab => \GEN:5:U2|I1|output_mux2_1~0_combout\,
	datac => \a[5]~input_o\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:5:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\GEN:6:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:6:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\U0|Binvert~combout\ $ ((\b[6]~input_o\)))) # (!\U0|operation\(0) & (((\GEN:5:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \U0|Binvert~combout\,
	datac => \b[6]~input_o\,
	datad => \GEN:5:U2|I4|CarryOut~0_combout\,
	combout => \GEN:6:U2|I6|Mux0~0_combout\);

-- Location: IOIBUF_X6_Y10_N29
\a[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: LCCOMB_X12_Y10_N10
\GEN:6:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:6:U2|I6|Mux0~1_combout\ = \U0|Ainvert~combout\ $ (\a[6]~input_o\ $ (((\GEN:6:U2|I6|Mux0~0_combout\ & \U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:6:U2|I6|Mux0~0_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \a[6]~input_o\,
	datad => \U0|operation\(1),
	combout => \GEN:6:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y10_N16
\GEN:6:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:6:U2|I1|output_mux2_1~0_combout\ = \b[6]~input_o\ $ (\U0|Binvert~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[6]~input_o\,
	datac => \U0|Binvert~combout\,
	combout => \GEN:6:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X12_Y10_N20
\GEN:6:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:6:U2|I6|Mux0~2_combout\ = (\GEN:6:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\GEN:6:U2|I1|output_mux2_1~0_combout\ $ (\U0|operation\(1))))) # (!\GEN:6:U2|I6|Mux0~1_combout\ & (\GEN:6:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(0) $ 
-- (\U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:6:U2|I6|Mux0~1_combout\,
	datab => \GEN:6:U2|I1|output_mux2_1~0_combout\,
	datac => \U0|operation\(0),
	datad => \U0|operation\(1),
	combout => \GEN:6:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X6_Y10_N15
\b[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X12_Y10_N0
\GEN:6:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:6:U2|I4|CarryOut~0_combout\ = (\GEN:5:U2|I4|CarryOut~0_combout\ & ((\GEN:6:U2|I1|output_mux2_1~0_combout\) # (\U0|Ainvert~combout\ $ (\a[6]~input_o\)))) # (!\GEN:5:U2|I4|CarryOut~0_combout\ & (\GEN:6:U2|I1|output_mux2_1~0_combout\ & 
-- (\U0|Ainvert~combout\ $ (\a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:5:U2|I4|CarryOut~0_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \a[6]~input_o\,
	datad => \GEN:6:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:6:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X12_Y10_N26
\GEN:7:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:6:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\U0|Binvert~combout\ $ ((\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datab => \b[7]~input_o\,
	datac => \U0|operation\(1),
	datad => \GEN:6:U2|I4|CarryOut~0_combout\,
	combout => \GEN:7:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y10_N14
\GEN:7:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datad => \b[7]~input_o\,
	combout => \GEN:7:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X12_Y10_N22
\GEN:7:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:7:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:7:U2|I6|Mux0~0_combout\ $ (\GEN:7:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:7:U2|I6|Mux0~0_combout\,
	datab => \U0|operation\(1),
	datac => \GEN:7:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:7:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X10_Y17_N1
\a[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X12_Y10_N28
\GEN:7:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:7:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:7:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:7:U2|I6|Mux0~0_combout\,
	datab => \U0|operation\(1),
	datac => \GEN:7:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:7:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y10_N8
\GEN:7:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I6|Mux0~3_combout\ = \GEN:7:U2|I6|Mux0~2_combout\ $ (((\GEN:7:U2|I6|Mux0~1_combout\ & (\U0|Ainvert~combout\ $ (\a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:7:U2|I6|Mux0~2_combout\,
	datab => \U0|Ainvert~combout\,
	datac => \a[7]~input_o\,
	datad => \GEN:7:U2|I6|Mux0~1_combout\,
	combout => \GEN:7:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X3_Y10_N29
\a[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: LCCOMB_X12_Y10_N4
\GEN:7:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:7:U2|I4|CarryOut~0_combout\ = (\GEN:7:U2|I1|output_mux2_1~0_combout\ & ((\GEN:6:U2|I4|CarryOut~0_combout\) # (\a[7]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:7:U2|I1|output_mux2_1~0_combout\ & (\GEN:6:U2|I4|CarryOut~0_combout\ & (\a[7]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:7:U2|I1|output_mux2_1~0_combout\,
	datab => \a[7]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:6:U2|I4|CarryOut~0_combout\,
	combout => \GEN:7:U2|I4|CarryOut~0_combout\);

-- Location: IOIBUF_X10_Y18_N22
\b[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: LCCOMB_X12_Y10_N30
\GEN:8:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:8:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\U0|Binvert~combout\ $ (((\b[8]~input_o\))))) # (!\U0|operation\(0) & (((\GEN:7:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datab => \GEN:7:U2|I4|CarryOut~0_combout\,
	datac => \b[8]~input_o\,
	datad => \U0|operation\(0),
	combout => \GEN:8:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y10_N24
\GEN:8:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:8:U2|I6|Mux0~1_combout\ = \a[8]~input_o\ $ (\U0|Ainvert~combout\ $ (((\GEN:8:U2|I6|Mux0~0_combout\ & \U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:8:U2|I6|Mux0~0_combout\,
	datad => \U0|operation\(1),
	combout => \GEN:8:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y10_N18
\GEN:8:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:8:U2|I1|output_mux2_1~0_combout\ = \b[8]~input_o\ $ (\U0|Binvert~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[8]~input_o\,
	datac => \U0|Binvert~combout\,
	combout => \GEN:8:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X12_Y10_N2
\GEN:8:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:8:U2|I6|Mux0~2_combout\ = (\GEN:8:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\GEN:8:U2|I1|output_mux2_1~0_combout\ $ (\U0|operation\(1))))) # (!\GEN:8:U2|I6|Mux0~1_combout\ & (\GEN:8:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(0) $ 
-- (\U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:8:U2|I6|Mux0~1_combout\,
	datab => \GEN:8:U2|I1|output_mux2_1~0_combout\,
	datac => \U0|operation\(0),
	datad => \U0|operation\(1),
	combout => \GEN:8:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X10_Y15_N15
\a[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X10_Y16_N1
\b[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: LCCOMB_X12_Y10_N12
\GEN:8:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:8:U2|I4|CarryOut~0_combout\ = (\GEN:7:U2|I4|CarryOut~0_combout\ & ((\GEN:8:U2|I1|output_mux2_1~0_combout\) # (\a[8]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:7:U2|I4|CarryOut~0_combout\ & (\GEN:8:U2|I1|output_mux2_1~0_combout\ & (\a[8]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[8]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:7:U2|I4|CarryOut~0_combout\,
	datad => \GEN:8:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:8:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X13_Y12_N18
\GEN:9:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:8:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\U0|Binvert~combout\ $ ((\b[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \U0|Binvert~combout\,
	datac => \b[9]~input_o\,
	datad => \GEN:8:U2|I4|CarryOut~0_combout\,
	combout => \GEN:9:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y12_N24
\GEN:9:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I1|output_mux2_1~0_combout\ = \b[9]~input_o\ $ (\U0|Binvert~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[9]~input_o\,
	datad => \U0|Binvert~combout\,
	combout => \GEN:9:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X13_Y12_N20
\GEN:9:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:9:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:9:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:9:U2|I6|Mux0~0_combout\,
	datac => \GEN:9:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:9:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y12_N22
\GEN:9:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:9:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:9:U2|I6|Mux0~0_combout\ $ (\GEN:9:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:9:U2|I6|Mux0~0_combout\,
	datac => \GEN:9:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:9:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y10_N6
\GEN:9:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I6|Mux0~3_combout\ = \GEN:9:U2|I6|Mux0~2_combout\ $ (((\GEN:9:U2|I6|Mux0~1_combout\ & (\a[9]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:9:U2|I6|Mux0~1_combout\,
	datad => \GEN:9:U2|I6|Mux0~2_combout\,
	combout => \GEN:9:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X6_Y10_N1
\b[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: LCCOMB_X13_Y12_N8
\GEN:10:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:10:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Binvert~combout\,
	datad => \b[10]~input_o\,
	combout => \GEN:10:U2|I1|output_mux2_1~0_combout\);

-- Location: IOIBUF_X10_Y17_N8
\a[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: LCCOMB_X13_Y12_N10
\GEN:9:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:9:U2|I4|CarryOut~0_combout\ = (\GEN:9:U2|I1|output_mux2_1~0_combout\ & ((\GEN:8:U2|I4|CarryOut~0_combout\) # (\a[9]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:9:U2|I1|output_mux2_1~0_combout\ & (\GEN:8:U2|I4|CarryOut~0_combout\ & (\a[9]~input_o\ $ 
-- (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[9]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:9:U2|I1|output_mux2_1~0_combout\,
	datad => \GEN:8:U2|I4|CarryOut~0_combout\,
	combout => \GEN:9:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X13_Y12_N28
\GEN:10:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:10:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & ((\b[10]~input_o\ $ (\U0|Binvert~combout\)))) # (!\U0|operation\(0) & (\GEN:9:U2|I4|CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:9:U2|I4|CarryOut~0_combout\,
	datab => \b[10]~input_o\,
	datac => \U0|Binvert~combout\,
	datad => \U0|operation\(0),
	combout => \GEN:10:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y12_N30
\GEN:10:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:10:U2|I6|Mux0~1_combout\ = \U0|Ainvert~combout\ $ (\a[10]~input_o\ $ (((\U0|operation\(1) & \GEN:10:U2|I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \U0|Ainvert~combout\,
	datac => \a[10]~input_o\,
	datad => \GEN:10:U2|I6|Mux0~0_combout\,
	combout => \GEN:10:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y12_N0
\GEN:10:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:10:U2|I6|Mux0~2_combout\ = (\GEN:10:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\GEN:10:U2|I1|output_mux2_1~0_combout\ $ (\U0|operation\(1))))) # (!\GEN:10:U2|I6|Mux0~1_combout\ & (\GEN:10:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(0) $ 
-- (\U0|operation\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \GEN:10:U2|I1|output_mux2_1~0_combout\,
	datac => \GEN:10:U2|I6|Mux0~1_combout\,
	datad => \U0|operation\(1),
	combout => \GEN:10:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X10_Y16_N8
\a[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X10_Y15_N22
\b[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: LCCOMB_X13_Y12_N4
\GEN:10:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:10:U2|I4|CarryOut~0_combout\ = (\GEN:10:U2|I1|output_mux2_1~0_combout\ & ((\GEN:9:U2|I4|CarryOut~0_combout\) # (\a[10]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:10:U2|I1|output_mux2_1~0_combout\ & (\GEN:9:U2|I4|CarryOut~0_combout\ & 
-- (\a[10]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[10]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:10:U2|I1|output_mux2_1~0_combout\,
	datad => \GEN:9:U2|I4|CarryOut~0_combout\,
	combout => \GEN:10:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X13_Y12_N6
\GEN:11:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:10:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\b[11]~input_o\ $ (((\U0|Binvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \b[11]~input_o\,
	datac => \GEN:10:U2|I4|CarryOut~0_combout\,
	datad => \U0|Binvert~combout\,
	combout => \GEN:11:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y12_N26
\GEN:11:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|Binvert~combout\,
	datad => \b[11]~input_o\,
	combout => \GEN:11:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X13_Y12_N2
\GEN:11:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:11:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:11:U2|I6|Mux0~0_combout\ $ (\GEN:11:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:11:U2|I6|Mux0~0_combout\,
	datac => \GEN:11:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:11:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y12_N16
\GEN:11:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:11:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:11:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:11:U2|I6|Mux0~0_combout\,
	datac => \GEN:11:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|operation\(0),
	combout => \GEN:11:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X13_Y12_N12
\GEN:11:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I6|Mux0~3_combout\ = \GEN:11:U2|I6|Mux0~2_combout\ $ (((\GEN:11:U2|I6|Mux0~1_combout\ & (\a[11]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \U0|Ainvert~combout\,
	datac => \GEN:11:U2|I6|Mux0~2_combout\,
	datad => \GEN:11:U2|I6|Mux0~1_combout\,
	combout => \GEN:11:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X15_Y0_N1
\a[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\b[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: LCCOMB_X13_Y12_N14
\GEN:11:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:11:U2|I4|CarryOut~0_combout\ = (\GEN:10:U2|I4|CarryOut~0_combout\ & ((\GEN:11:U2|I1|output_mux2_1~0_combout\) # (\a[11]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:10:U2|I4|CarryOut~0_combout\ & (\GEN:11:U2|I1|output_mux2_1~0_combout\ & 
-- (\a[11]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[11]~input_o\,
	datab => \GEN:10:U2|I4|CarryOut~0_combout\,
	datac => \GEN:11:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:11:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X15_Y4_N2
\GEN:12:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:12:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\b[12]~input_o\ $ ((\U0|Binvert~combout\)))) # (!\U0|operation\(0) & (((\GEN:11:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datab => \U0|operation\(0),
	datac => \U0|Binvert~combout\,
	datad => \GEN:11:U2|I4|CarryOut~0_combout\,
	combout => \GEN:12:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y4_N28
\GEN:12:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:12:U2|I6|Mux0~1_combout\ = \U0|Ainvert~combout\ $ (\a[12]~input_o\ $ (((\U0|operation\(1) & \GEN:12:U2|I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Ainvert~combout\,
	datab => \U0|operation\(1),
	datac => \a[12]~input_o\,
	datad => \GEN:12:U2|I6|Mux0~0_combout\,
	combout => \GEN:12:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y4_N24
\GEN:12:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:12:U2|I1|output_mux2_1~0_combout\ = \b[12]~input_o\ $ (\U0|Binvert~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[12]~input_o\,
	datac => \U0|Binvert~combout\,
	combout => \GEN:12:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X15_Y4_N30
\GEN:12:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:12:U2|I6|Mux0~2_combout\ = (\GEN:12:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\U0|operation\(1) $ (\GEN:12:U2|I1|output_mux2_1~0_combout\)))) # (!\GEN:12:U2|I6|Mux0~1_combout\ & (\GEN:12:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(1) $ 
-- (\U0|operation\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(1),
	datab => \GEN:12:U2|I6|Mux0~1_combout\,
	datac => \U0|operation\(0),
	datad => \GEN:12:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:12:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X15_Y0_N29
\b[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: LCCOMB_X15_Y4_N8
\GEN:13:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[13]~input_o\,
	combout => \GEN:13:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X15_Y4_N26
\GEN:12:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:12:U2|I4|CarryOut~0_combout\ = (\GEN:11:U2|I4|CarryOut~0_combout\ & ((\GEN:12:U2|I1|output_mux2_1~0_combout\) # (\a[12]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:11:U2|I4|CarryOut~0_combout\ & (\GEN:12:U2|I1|output_mux2_1~0_combout\ & 
-- (\a[12]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:11:U2|I4|CarryOut~0_combout\,
	datab => \a[12]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:12:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:12:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X15_Y4_N4
\GEN:13:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (\GEN:12:U2|I4|CarryOut~0_combout\)) # (!\U0|operation\(1) & ((\U0|Binvert~combout\ $ (\b[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:12:U2|I4|CarryOut~0_combout\,
	datab => \U0|operation\(1),
	datac => \U0|Binvert~combout\,
	datad => \b[13]~input_o\,
	combout => \GEN:13:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y4_N22
\GEN:13:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & (!\GEN:13:U2|I1|output_mux2_1~0_combout\)) # (!\U0|operation\(0) & ((\GEN:13:U2|I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \GEN:13:U2|I1|output_mux2_1~0_combout\,
	datac => \GEN:13:U2|I6|Mux0~0_combout\,
	datad => \U0|operation\(1),
	combout => \GEN:13:U2|I6|Mux0~1_combout\);

-- Location: IOIBUF_X15_Y0_N8
\a[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: LCCOMB_X15_Y4_N0
\GEN:13:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (\GEN:13:U2|I1|output_mux2_1~0_combout\)) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:13:U2|I1|output_mux2_1~0_combout\ $ (\GEN:13:U2|I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|operation\(0),
	datab => \GEN:13:U2|I1|output_mux2_1~0_combout\,
	datac => \GEN:13:U2|I6|Mux0~0_combout\,
	datad => \U0|operation\(1),
	combout => \GEN:13:U2|I6|Mux0~2_combout\);

-- Location: LCCOMB_X15_Y4_N18
\GEN:13:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I6|Mux0~3_combout\ = \GEN:13:U2|I6|Mux0~2_combout\ $ (((\GEN:13:U2|I6|Mux0~1_combout\ & (\a[13]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:13:U2|I6|Mux0~1_combout\,
	datab => \a[13]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:13:U2|I6|Mux0~2_combout\,
	combout => \GEN:13:U2|I6|Mux0~3_combout\);

-- Location: IOIBUF_X15_Y0_N15
\a[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X13_Y0_N8
\b[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: LCCOMB_X15_Y4_N14
\GEN:13:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:13:U2|I4|CarryOut~0_combout\ = (\GEN:12:U2|I4|CarryOut~0_combout\ & ((\GEN:13:U2|I1|output_mux2_1~0_combout\) # (\a[13]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:12:U2|I4|CarryOut~0_combout\ & (\GEN:13:U2|I1|output_mux2_1~0_combout\ & 
-- (\a[13]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:12:U2|I4|CarryOut~0_combout\,
	datab => \a[13]~input_o\,
	datac => \GEN:13:U2|I1|output_mux2_1~0_combout\,
	datad => \U0|Ainvert~combout\,
	combout => \GEN:13:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X15_Y4_N16
\GEN:14:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:14:U2|I6|Mux0~0_combout\ = (\U0|operation\(0) & (\b[14]~input_o\ $ (((\U0|Binvert~combout\))))) # (!\U0|operation\(0) & (((\GEN:13:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[14]~input_o\,
	datab => \U0|operation\(0),
	datac => \GEN:13:U2|I4|CarryOut~0_combout\,
	datad => \U0|Binvert~combout\,
	combout => \GEN:14:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y4_N10
\GEN:14:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:14:U2|I6|Mux0~1_combout\ = \a[14]~input_o\ $ (\U0|Ainvert~combout\ $ (((\U0|operation\(1) & \GEN:14:U2|I6|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \U0|operation\(1),
	datac => \U0|Ainvert~combout\,
	datad => \GEN:14:U2|I6|Mux0~0_combout\,
	combout => \GEN:14:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y4_N12
\GEN:14:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:14:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Binvert~combout\,
	datad => \b[14]~input_o\,
	combout => \GEN:14:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X15_Y4_N20
\GEN:14:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:14:U2|I6|Mux0~2_combout\ = (\GEN:14:U2|I6|Mux0~1_combout\ & ((\U0|operation\(0)) # (\U0|operation\(1) $ (\GEN:14:U2|I1|output_mux2_1~0_combout\)))) # (!\GEN:14:U2|I6|Mux0~1_combout\ & (\GEN:14:U2|I1|output_mux2_1~0_combout\ & (\U0|operation\(1) $ 
-- (\U0|operation\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:14:U2|I6|Mux0~1_combout\,
	datab => \U0|operation\(1),
	datac => \U0|operation\(0),
	datad => \GEN:14:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:14:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X17_Y0_N1
\b[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: LCCOMB_X15_Y4_N6
\GEN:14:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:14:U2|I4|CarryOut~0_combout\ = (\GEN:13:U2|I4|CarryOut~0_combout\ & ((\GEN:14:U2|I1|output_mux2_1~0_combout\) # (\a[14]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:13:U2|I4|CarryOut~0_combout\ & (\GEN:14:U2|I1|output_mux2_1~0_combout\ & 
-- (\a[14]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[14]~input_o\,
	datab => \GEN:13:U2|I4|CarryOut~0_combout\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:14:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:14:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X17_Y4_N10
\GEN:15:U2|I6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I6|Mux0~0_combout\ = (\U0|operation\(1) & (((\GEN:14:U2|I4|CarryOut~0_combout\)))) # (!\U0|operation\(1) & (\U0|Binvert~combout\ $ ((\b[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datab => \U0|operation\(1),
	datac => \b[15]~input_o\,
	datad => \GEN:14:U2|I4|CarryOut~0_combout\,
	combout => \GEN:15:U2|I6|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y4_N24
\GEN:15:U2|I1|output_mux2_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I1|output_mux2_1~0_combout\ = \U0|Binvert~combout\ $ (\b[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Binvert~combout\,
	datac => \b[15]~input_o\,
	combout => \GEN:15:U2|I1|output_mux2_1~0_combout\);

-- Location: LCCOMB_X17_Y4_N6
\GEN:15:U2|I6|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I6|Mux0~2_combout\ = (\U0|operation\(0) & (((\GEN:15:U2|I1|output_mux2_1~0_combout\)))) # (!\U0|operation\(0) & (\U0|operation\(1) & (\GEN:15:U2|I6|Mux0~0_combout\ $ (\GEN:15:U2|I1|output_mux2_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:15:U2|I6|Mux0~0_combout\,
	datab => \U0|operation\(1),
	datac => \U0|operation\(0),
	datad => \GEN:15:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:15:U2|I6|Mux0~2_combout\);

-- Location: IOIBUF_X17_Y0_N8
\a[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: LCCOMB_X17_Y4_N12
\GEN:15:U2|I6|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I6|Mux0~1_combout\ = (\U0|operation\(1)) # ((\U0|operation\(0) & ((!\GEN:15:U2|I1|output_mux2_1~0_combout\))) # (!\U0|operation\(0) & (\GEN:15:U2|I6|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:15:U2|I6|Mux0~0_combout\,
	datab => \U0|operation\(1),
	datac => \U0|operation\(0),
	datad => \GEN:15:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:15:U2|I6|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y4_N0
\GEN:15:U2|I6|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I6|Mux0~3_combout\ = \GEN:15:U2|I6|Mux0~2_combout\ $ (((\GEN:15:U2|I6|Mux0~1_combout\ & (\a[15]~input_o\ $ (\U0|Ainvert~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:15:U2|I6|Mux0~2_combout\,
	datab => \a[15]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:15:U2|I6|Mux0~1_combout\,
	combout => \GEN:15:U2|I6|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y4_N26
\GEN:15:U2|I4|CarryOut~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN:15:U2|I4|CarryOut~0_combout\ = (\GEN:14:U2|I4|CarryOut~0_combout\ & ((\GEN:15:U2|I1|output_mux2_1~0_combout\) # (\a[15]~input_o\ $ (\U0|Ainvert~combout\)))) # (!\GEN:14:U2|I4|CarryOut~0_combout\ & (\GEN:15:U2|I1|output_mux2_1~0_combout\ & 
-- (\a[15]~input_o\ $ (\U0|Ainvert~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:14:U2|I4|CarryOut~0_combout\,
	datab => \a[15]~input_o\,
	datac => \U0|Ainvert~combout\,
	datad => \GEN:15:U2|I1|output_mux2_1~0_combout\,
	combout => \GEN:15:U2|I4|CarryOut~0_combout\);

-- Location: LCCOMB_X17_Y4_N28
\Overflow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Overflow~0_combout\ = (\opcode[1]~input_o\ & (!\opcode[2]~input_o\ & (\GEN:14:U2|I4|CarryOut~0_combout\ $ (\GEN:15:U2|I4|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN:14:U2|I4|CarryOut~0_combout\,
	datab => \opcode[1]~input_o\,
	datac => \GEN:15:U2|I4|CarryOut~0_combout\,
	datad => \opcode[2]~input_o\,
	combout => \Overflow~0_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_s(0) <= \s[0]~output_o\;

ww_s(1) <= \s[1]~output_o\;

ww_s(2) <= \s[2]~output_o\;

ww_s(3) <= \s[3]~output_o\;

ww_s(4) <= \s[4]~output_o\;

ww_s(5) <= \s[5]~output_o\;

ww_s(6) <= \s[6]~output_o\;

ww_s(7) <= \s[7]~output_o\;

ww_s(8) <= \s[8]~output_o\;

ww_s(9) <= \s[9]~output_o\;

ww_s(10) <= \s[10]~output_o\;

ww_s(11) <= \s[11]~output_o\;

ww_s(12) <= \s[12]~output_o\;

ww_s(13) <= \s[13]~output_o\;

ww_s(14) <= \s[14]~output_o\;

ww_s(15) <= \s[15]~output_o\;

ww_Overflow <= \Overflow~output_o\;
END structure;


