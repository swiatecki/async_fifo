-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/06/2015 12:44:35"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fifo_wc IS
    PORT (
	wclk : IN std_logic;
	reset : IN std_logic;
	write_enable : IN std_logic;
	fifo_occu_in : OUT std_logic_vector(4 DOWNTO 0);
	full : OUT std_logic;
	waddr : OUT std_logic_vector(3 DOWNTO 0);
	wen : OUT std_logic;
	wptr : OUT std_logic_vector(4 DOWNTO 0);
	rptr_s : IN std_logic_vector(4 DOWNTO 0)
	);
END fifo_wc;

-- Design Ports Information
-- fifo_occu_in[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fifo_occu_in[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fifo_occu_in[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fifo_occu_in[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fifo_occu_in[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- full	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waddr[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waddr[1]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waddr[2]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waddr[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wptr[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wptr[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wptr[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wptr[3]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wptr[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_enable	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rptr_s[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rptr_s[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rptr_s[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rptr_s[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rptr_s[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wclk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fifo_wc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_wclk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_write_enable : std_logic;
SIGNAL ww_fifo_occu_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_full : std_logic;
SIGNAL ww_waddr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_wen : std_logic;
SIGNAL ww_wptr : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rptr_s : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \rptr_s[0]~input_o\ : std_logic;
SIGNAL \wclk~input_o\ : std_logic;
SIGNAL \wclk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \write_enable~input_o\ : std_logic;
SIGNAL \rptr_s[4]~input_o\ : std_logic;
SIGNAL \wptr_int[1]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \wptr_int[2]~2_combout\ : std_logic;
SIGNAL \wptr_int[3]~3_combout\ : std_logic;
SIGNAL \mainLogic~0_combout\ : std_logic;
SIGNAL \wptr_int[4]~4_combout\ : std_logic;
SIGNAL \rptr_s[3]~input_o\ : std_logic;
SIGNAL \rptr_s[2]~input_o\ : std_logic;
SIGNAL \rptr_s[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \wptr_int[0]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL wptr_int : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_rptr_s[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rptr_s[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rptr_s[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rptr_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rptr_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_write_enable~input_o\ : std_logic;
SIGNAL ALT_INV_wptr_int : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_mainLogic~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;

BEGIN

ww_wclk <= wclk;
ww_reset <= reset;
ww_write_enable <= write_enable;
fifo_occu_in <= ww_fifo_occu_in;
full <= ww_full;
waddr <= ww_waddr;
wen <= ww_wen;
wptr <= ww_wptr;
ww_rptr_s <= rptr_s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_rptr_s[4]~input_o\ <= NOT \rptr_s[4]~input_o\;
\ALT_INV_rptr_s[3]~input_o\ <= NOT \rptr_s[3]~input_o\;
\ALT_INV_rptr_s[2]~input_o\ <= NOT \rptr_s[2]~input_o\;
\ALT_INV_rptr_s[1]~input_o\ <= NOT \rptr_s[1]~input_o\;
\ALT_INV_rptr_s[0]~input_o\ <= NOT \rptr_s[0]~input_o\;
\ALT_INV_write_enable~input_o\ <= NOT \write_enable~input_o\;
ALT_INV_wptr_int(4) <= NOT wptr_int(4);
\ALT_INV_mainLogic~0_combout\ <= NOT \mainLogic~0_combout\;
ALT_INV_wptr_int(3) <= NOT wptr_int(3);
ALT_INV_wptr_int(2) <= NOT wptr_int(2);
ALT_INV_wptr_int(1) <= NOT wptr_int(1);
ALT_INV_wptr_int(0) <= NOT wptr_int(0);
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;

-- Location: IOOBUF_X89_Y35_N96
\fifo_occu_in[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_fifo_occu_in(0));

-- Location: IOOBUF_X89_Y8_N5
\fifo_occu_in[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_fifo_occu_in(1));

-- Location: IOOBUF_X89_Y35_N79
\fifo_occu_in[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_fifo_occu_in(2));

-- Location: IOOBUF_X89_Y9_N56
\fifo_occu_in[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_fifo_occu_in(3));

-- Location: IOOBUF_X89_Y36_N5
\fifo_occu_in[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_fifo_occu_in(4));

-- Location: IOOBUF_X89_Y36_N22
\full~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_full);

-- Location: IOOBUF_X89_Y6_N5
\waddr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(0),
	devoe => ww_devoe,
	o => ww_waddr(0));

-- Location: IOOBUF_X89_Y4_N96
\waddr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(1),
	devoe => ww_devoe,
	o => ww_waddr(1));

-- Location: IOOBUF_X89_Y9_N39
\waddr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(2),
	devoe => ww_devoe,
	o => ww_waddr(2));

-- Location: IOOBUF_X89_Y8_N39
\waddr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(3),
	devoe => ww_devoe,
	o => ww_waddr(3));

-- Location: IOOBUF_X89_Y6_N39
\wen~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mainLogic~0_combout\,
	devoe => ww_devoe,
	o => ww_wen);

-- Location: IOOBUF_X89_Y6_N56
\wptr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(0),
	devoe => ww_devoe,
	o => ww_wptr(0));

-- Location: IOOBUF_X89_Y4_N45
\wptr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(1),
	devoe => ww_devoe,
	o => ww_wptr(1));

-- Location: IOOBUF_X89_Y9_N5
\wptr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(2),
	devoe => ww_devoe,
	o => ww_wptr(2));

-- Location: IOOBUF_X89_Y8_N22
\wptr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(3),
	devoe => ww_devoe,
	o => ww_wptr(3));

-- Location: IOOBUF_X89_Y9_N22
\wptr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => wptr_int(4),
	devoe => ww_devoe,
	o => ww_wptr(4));

-- Location: IOIBUF_X89_Y4_N78
\rptr_s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rptr_s(0),
	o => \rptr_s[0]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\wclk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wclk,
	o => \wclk~input_o\);

-- Location: CLKCTRL_G10
\wclk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \wclk~input_o\,
	outclk => \wclk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X72_Y0_N18
\write_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_enable,
	o => \write_enable~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\rptr_s[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rptr_s(4),
	o => \rptr_s[4]~input_o\);

-- Location: LABCELL_X88_Y8_N36
\wptr_int[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \wptr_int[1]~1_combout\ = ( wptr_int(1) & ( \Add0~17_sumout\ ) ) # ( wptr_int(1) & ( !\Add0~17_sumout\ & ( (!\write_enable~input_o\) # (!wptr_int(0)) ) ) ) # ( !wptr_int(1) & ( !\Add0~17_sumout\ & ( (\write_enable~input_o\ & wptr_int(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datad => ALT_INV_wptr_int(0),
	datae => ALT_INV_wptr_int(1),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \wptr_int[1]~1_combout\);

-- Location: IOIBUF_X72_Y0_N52
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X88_Y8_N38
\wptr_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wclk~inputCLKENA0_outclk\,
	d => \wptr_int[1]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wptr_int(1));

-- Location: LABCELL_X88_Y8_N24
\wptr_int[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \wptr_int[2]~2_combout\ = ( wptr_int(2) & ( \Add0~17_sumout\ ) ) # ( wptr_int(2) & ( !\Add0~17_sumout\ & ( (!\write_enable~input_o\) # ((!wptr_int(1)) # (!wptr_int(0))) ) ) ) # ( !wptr_int(2) & ( !\Add0~17_sumout\ & ( (\write_enable~input_o\ & 
-- (wptr_int(1) & wptr_int(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111111101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datac => ALT_INV_wptr_int(1),
	datad => ALT_INV_wptr_int(0),
	datae => ALT_INV_wptr_int(2),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \wptr_int[2]~2_combout\);

-- Location: FF_X88_Y8_N26
\wptr_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wclk~inputCLKENA0_outclk\,
	d => \wptr_int[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wptr_int(2));

-- Location: LABCELL_X88_Y8_N30
\wptr_int[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \wptr_int[3]~3_combout\ = ( wptr_int(3) & ( \Add0~17_sumout\ ) ) # ( wptr_int(3) & ( !\Add0~17_sumout\ & ( (!\write_enable~input_o\) # ((!wptr_int(0)) # ((!wptr_int(1)) # (!wptr_int(2)))) ) ) ) # ( !wptr_int(3) & ( !\Add0~17_sumout\ & ( 
-- (\write_enable~input_o\ & (wptr_int(0) & (wptr_int(1) & wptr_int(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datab => ALT_INV_wptr_int(0),
	datac => ALT_INV_wptr_int(1),
	datad => ALT_INV_wptr_int(2),
	datae => ALT_INV_wptr_int(3),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \wptr_int[3]~3_combout\);

-- Location: FF_X88_Y8_N32
\wptr_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wclk~inputCLKENA0_outclk\,
	d => \wptr_int[3]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wptr_int(3));

-- Location: LABCELL_X88_Y8_N51
\mainLogic~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mainLogic~0_combout\ = ( !\Add0~17_sumout\ & ( \write_enable~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \mainLogic~0_combout\);

-- Location: LABCELL_X88_Y8_N18
\wptr_int[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \wptr_int[4]~4_combout\ = ( wptr_int(4) & ( \mainLogic~0_combout\ & ( (!wptr_int(2)) # ((!wptr_int(0)) # ((!wptr_int(1)) # (!wptr_int(3)))) ) ) ) # ( !wptr_int(4) & ( \mainLogic~0_combout\ & ( (wptr_int(2) & (wptr_int(0) & (wptr_int(1) & wptr_int(3)))) ) 
-- ) ) # ( wptr_int(4) & ( !\mainLogic~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_wptr_int(2),
	datab => ALT_INV_wptr_int(0),
	datac => ALT_INV_wptr_int(1),
	datad => ALT_INV_wptr_int(3),
	datae => ALT_INV_wptr_int(4),
	dataf => \ALT_INV_mainLogic~0_combout\,
	combout => \wptr_int[4]~4_combout\);

-- Location: FF_X88_Y8_N20
\wptr_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wclk~inputCLKENA0_outclk\,
	d => \wptr_int[4]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wptr_int(4));

-- Location: IOIBUF_X72_Y0_N35
\rptr_s[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rptr_s(3),
	o => \rptr_s[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\rptr_s[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rptr_s(2),
	o => \rptr_s[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N21
\rptr_s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rptr_s(1),
	o => \rptr_s[1]~input_o\);

-- Location: LABCELL_X88_Y8_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\rptr_s[0]~input_o\ $ (!wptr_int(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( !\rptr_s[0]~input_o\ $ (!wptr_int(0)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~3\ = SHARE((!\rptr_s[0]~input_o\) # (wptr_int(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rptr_s[0]~input_o\,
	datad => ALT_INV_wptr_int(0),
	cin => GND,
	sharein => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\,
	shareout => \Add0~3\);

-- Location: LABCELL_X88_Y8_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\rptr_s[1]~input_o\ $ (wptr_int(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( !\rptr_s[1]~input_o\ $ (wptr_int(1)) ) + ( \Add0~3\ ) + ( \Add0~2\ ))
-- \Add0~7\ = SHARE((!\rptr_s[1]~input_o\ & wptr_int(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rptr_s[1]~input_o\,
	datad => ALT_INV_wptr_int(1),
	cin => \Add0~2\,
	sharein => \Add0~3\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X88_Y8_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !wptr_int(2) $ (\rptr_s[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !wptr_int(2) $ (\rptr_s[2]~input_o\) ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE((wptr_int(2) & !\rptr_s[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_wptr_int(2),
	datad => \ALT_INV_rptr_s[2]~input_o\,
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: LABCELL_X88_Y8_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\rptr_s[3]~input_o\ $ (wptr_int(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\rptr_s[3]~input_o\ $ (wptr_int(3)) ) + ( \Add0~11\ ) + ( \Add0~10\ ))
-- \Add0~15\ = SHARE((!\rptr_s[3]~input_o\ & wptr_int(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rptr_s[3]~input_o\,
	datac => ALT_INV_wptr_int(3),
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X88_Y8_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\rptr_s[4]~input_o\ $ (wptr_int(4)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rptr_s[4]~input_o\,
	datac => ALT_INV_wptr_int(4),
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~17_sumout\);

-- Location: LABCELL_X88_Y8_N57
\wptr_int[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \wptr_int[0]~0_combout\ = ( wptr_int(0) & ( \Add0~17_sumout\ ) ) # ( wptr_int(0) & ( !\Add0~17_sumout\ & ( !\write_enable~input_o\ ) ) ) # ( !wptr_int(0) & ( !\Add0~17_sumout\ & ( \write_enable~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_write_enable~input_o\,
	datae => ALT_INV_wptr_int(0),
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \wptr_int[0]~0_combout\);

-- Location: FF_X88_Y8_N59
\wptr_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \wclk~inputCLKENA0_outclk\,
	d => \wptr_int[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wptr_int(0));

-- Location: LABCELL_X24_Y44_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


