-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "08/13/2023 21:56:39"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic_light_system IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	red : BUFFER std_logic;
	green : BUFFER std_logic;
	u_7seg : BUFFER std_logic_vector(6 DOWNTO 0);
	d_7seg : BUFFER std_logic_vector(6 DOWNTO 0);
	u_7seg_red : BUFFER std_logic_vector(6 DOWNTO 0);
	d_7seg_red : BUFFER std_logic_vector(6 DOWNTO 0);
	u_7seg_green : BUFFER std_logic_vector(6 DOWNTO 0);
	d_7seg_green : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END traffic_light_system;

-- Design Ports Information
-- red	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_red[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_red[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u_7seg_green[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d_7seg_green[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic_light_system IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_u_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_u_7seg_red : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_7seg_red : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_u_7seg_green : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_d_7seg_green : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \u_7seg[0]~output_o\ : std_logic;
SIGNAL \u_7seg[1]~output_o\ : std_logic;
SIGNAL \u_7seg[2]~output_o\ : std_logic;
SIGNAL \u_7seg[3]~output_o\ : std_logic;
SIGNAL \u_7seg[4]~output_o\ : std_logic;
SIGNAL \u_7seg[5]~output_o\ : std_logic;
SIGNAL \u_7seg[6]~output_o\ : std_logic;
SIGNAL \d_7seg[0]~output_o\ : std_logic;
SIGNAL \d_7seg[1]~output_o\ : std_logic;
SIGNAL \d_7seg[2]~output_o\ : std_logic;
SIGNAL \d_7seg[3]~output_o\ : std_logic;
SIGNAL \d_7seg[4]~output_o\ : std_logic;
SIGNAL \d_7seg[5]~output_o\ : std_logic;
SIGNAL \d_7seg[6]~output_o\ : std_logic;
SIGNAL \u_7seg_red[0]~output_o\ : std_logic;
SIGNAL \u_7seg_red[1]~output_o\ : std_logic;
SIGNAL \u_7seg_red[2]~output_o\ : std_logic;
SIGNAL \u_7seg_red[3]~output_o\ : std_logic;
SIGNAL \u_7seg_red[4]~output_o\ : std_logic;
SIGNAL \u_7seg_red[5]~output_o\ : std_logic;
SIGNAL \u_7seg_red[6]~output_o\ : std_logic;
SIGNAL \d_7seg_red[0]~output_o\ : std_logic;
SIGNAL \d_7seg_red[1]~output_o\ : std_logic;
SIGNAL \d_7seg_red[2]~output_o\ : std_logic;
SIGNAL \d_7seg_red[3]~output_o\ : std_logic;
SIGNAL \d_7seg_red[4]~output_o\ : std_logic;
SIGNAL \d_7seg_red[5]~output_o\ : std_logic;
SIGNAL \d_7seg_red[6]~output_o\ : std_logic;
SIGNAL \u_7seg_green[0]~output_o\ : std_logic;
SIGNAL \u_7seg_green[1]~output_o\ : std_logic;
SIGNAL \u_7seg_green[2]~output_o\ : std_logic;
SIGNAL \u_7seg_green[3]~output_o\ : std_logic;
SIGNAL \u_7seg_green[4]~output_o\ : std_logic;
SIGNAL \u_7seg_green[5]~output_o\ : std_logic;
SIGNAL \u_7seg_green[6]~output_o\ : std_logic;
SIGNAL \d_7seg_green[0]~output_o\ : std_logic;
SIGNAL \d_7seg_green[1]~output_o\ : std_logic;
SIGNAL \d_7seg_green[2]~output_o\ : std_logic;
SIGNAL \d_7seg_green[3]~output_o\ : std_logic;
SIGNAL \d_7seg_green[4]~output_o\ : std_logic;
SIGNAL \d_7seg_green[5]~output_o\ : std_logic;
SIGNAL \d_7seg_green[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \B3|Add0~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \B2|q~0_combout\ : std_logic;
SIGNAL \B1|Add0~0_combout\ : std_logic;
SIGNAL \B1|Add0~1\ : std_logic;
SIGNAL \B1|Add0~2_combout\ : std_logic;
SIGNAL \B1|Add0~3\ : std_logic;
SIGNAL \B1|Add0~4_combout\ : std_logic;
SIGNAL \B1|Add0~5\ : std_logic;
SIGNAL \B1|Add0~6_combout\ : std_logic;
SIGNAL \B1|Add0~7\ : std_logic;
SIGNAL \B1|Add0~8_combout\ : std_logic;
SIGNAL \B1|Add0~9\ : std_logic;
SIGNAL \B1|Add0~10_combout\ : std_logic;
SIGNAL \B1|Equal0~6_combout\ : std_logic;
SIGNAL \B1|Equal0~7_combout\ : std_logic;
SIGNAL \B1|Add0~11\ : std_logic;
SIGNAL \B1|Add0~12_combout\ : std_logic;
SIGNAL \B1|Add0~13\ : std_logic;
SIGNAL \B1|Add0~14_combout\ : std_logic;
SIGNAL \B1|q_next[7]~11_combout\ : std_logic;
SIGNAL \B1|Add0~15\ : std_logic;
SIGNAL \B1|Add0~16_combout\ : std_logic;
SIGNAL \B1|Add0~17\ : std_logic;
SIGNAL \B1|Add0~18_combout\ : std_logic;
SIGNAL \B1|Add0~19\ : std_logic;
SIGNAL \B1|Add0~20_combout\ : std_logic;
SIGNAL \B1|Add0~21\ : std_logic;
SIGNAL \B1|Add0~22_combout\ : std_logic;
SIGNAL \B1|Add0~23\ : std_logic;
SIGNAL \B1|Add0~24_combout\ : std_logic;
SIGNAL \B1|q_next[12]~10_combout\ : std_logic;
SIGNAL \B1|Add0~25\ : std_logic;
SIGNAL \B1|Add0~26_combout\ : std_logic;
SIGNAL \B1|q_next[13]~9_combout\ : std_logic;
SIGNAL \B1|Add0~27\ : std_logic;
SIGNAL \B1|Add0~28_combout\ : std_logic;
SIGNAL \B1|q_next[14]~8_combout\ : std_logic;
SIGNAL \B1|Add0~29\ : std_logic;
SIGNAL \B1|Add0~30_combout\ : std_logic;
SIGNAL \B1|q_next[15]~7_combout\ : std_logic;
SIGNAL \B1|Add0~31\ : std_logic;
SIGNAL \B1|Add0~32_combout\ : std_logic;
SIGNAL \B1|Add0~33\ : std_logic;
SIGNAL \B1|Add0~34_combout\ : std_logic;
SIGNAL \B1|q_next[17]~6_combout\ : std_logic;
SIGNAL \B1|Add0~35\ : std_logic;
SIGNAL \B1|Add0~36_combout\ : std_logic;
SIGNAL \B1|Add0~37\ : std_logic;
SIGNAL \B1|Add0~38_combout\ : std_logic;
SIGNAL \B1|q_next[19]~5_combout\ : std_logic;
SIGNAL \B1|Add0~39\ : std_logic;
SIGNAL \B1|Add0~40_combout\ : std_logic;
SIGNAL \B1|q_next[20]~4_combout\ : std_logic;
SIGNAL \B1|Add0~41\ : std_logic;
SIGNAL \B1|Add0~42_combout\ : std_logic;
SIGNAL \B1|q_next[21]~3_combout\ : std_logic;
SIGNAL \B1|Add0~43\ : std_logic;
SIGNAL \B1|Add0~44_combout\ : std_logic;
SIGNAL \B1|q_next[22]~2_combout\ : std_logic;
SIGNAL \B1|Add0~45\ : std_logic;
SIGNAL \B1|Add0~46_combout\ : std_logic;
SIGNAL \B1|q_next[23]~1_combout\ : std_logic;
SIGNAL \B1|Add0~47\ : std_logic;
SIGNAL \B1|Add0~48_combout\ : std_logic;
SIGNAL \B1|Add0~49\ : std_logic;
SIGNAL \B1|Add0~50_combout\ : std_logic;
SIGNAL \B1|q_next[25]~0_combout\ : std_logic;
SIGNAL \B1|Equal0~0_combout\ : std_logic;
SIGNAL \B1|Equal0~1_combout\ : std_logic;
SIGNAL \B1|Equal0~2_combout\ : std_logic;
SIGNAL \B1|Equal0~3_combout\ : std_logic;
SIGNAL \B1|Equal0~4_combout\ : std_logic;
SIGNAL \B1|Equal0~5_combout\ : std_logic;
SIGNAL \B1|Equal0~8_combout\ : std_logic;
SIGNAL \B1|clk_o_reg~q\ : std_logic;
SIGNAL \B3|Add0~1\ : std_logic;
SIGNAL \B3|Add0~2_combout\ : std_logic;
SIGNAL \B3|Add0~11\ : std_logic;
SIGNAL \B3|Add0~12_combout\ : std_logic;
SIGNAL \B3|Add0~13\ : std_logic;
SIGNAL \B3|Add0~14_combout\ : std_logic;
SIGNAL \B3|Equal3~0_combout\ : std_logic;
SIGNAL \B3|Add0~3\ : std_logic;
SIGNAL \B3|Add0~4_combout\ : std_logic;
SIGNAL \B3|Equal3~1_combout\ : std_logic;
SIGNAL \B3|q_next~1_combout\ : std_logic;
SIGNAL \B3|Add0~5\ : std_logic;
SIGNAL \B3|Add0~6_combout\ : std_logic;
SIGNAL \B3|Add0~7\ : std_logic;
SIGNAL \B3|Add0~8_combout\ : std_logic;
SIGNAL \B3|Add0~9\ : std_logic;
SIGNAL \B3|Add0~10_combout\ : std_logic;
SIGNAL \B3|q_next~0_combout\ : std_logic;
SIGNAL \B3|red~0_combout\ : std_logic;
SIGNAL \B3|green~0_combout\ : std_logic;
SIGNAL \B3|green~1_combout\ : std_logic;
SIGNAL \B3|green~2_combout\ : std_logic;
SIGNAL \B3|green~3_combout\ : std_logic;
SIGNAL \B3|green~4_combout\ : std_logic;
SIGNAL \B3|green~5_combout\ : std_logic;
SIGNAL \B4|Mux4~1_combout\ : std_logic;
SIGNAL \B4|Mux4~0_combout\ : std_logic;
SIGNAL \B4|Mux4~2_combout\ : std_logic;
SIGNAL \B4|Mux3~1_combout\ : std_logic;
SIGNAL \B4|Mux3~0_combout\ : std_logic;
SIGNAL \B4|Mux3~2_combout\ : std_logic;
SIGNAL \B4|Mux5~1_combout\ : std_logic;
SIGNAL \B4|Mux5~0_combout\ : std_logic;
SIGNAL \B4|Mux5~2_combout\ : std_logic;
SIGNAL \B6|Mux6~0_combout\ : std_logic;
SIGNAL \B6|Mux5~0_combout\ : std_logic;
SIGNAL \B6|Mux4~0_combout\ : std_logic;
SIGNAL \B6|Mux3~0_combout\ : std_logic;
SIGNAL \B6|Mux2~0_combout\ : std_logic;
SIGNAL \B6|Mux1~0_combout\ : std_logic;
SIGNAL \B6|Mux0~0_combout\ : std_logic;
SIGNAL \B4|Mux0~0_combout\ : std_logic;
SIGNAL \B4|Mux2~0_combout\ : std_logic;
SIGNAL \B4|Mux2~1_combout\ : std_logic;
SIGNAL \B4|Mux2~2_combout\ : std_logic;
SIGNAL \B4|Mux1~0_combout\ : std_logic;
SIGNAL \B5|Mux6~0_combout\ : std_logic;
SIGNAL \B5|Mux5~3_combout\ : std_logic;
SIGNAL \B5|Mux5~9_combout\ : std_logic;
SIGNAL \B5|Mux4~3_combout\ : std_logic;
SIGNAL \B5|Mux4~6_combout\ : std_logic;
SIGNAL \B5|Mux3~0_combout\ : std_logic;
SIGNAL \B5|Mux2~0_combout\ : std_logic;
SIGNAL \B5|Mux1~0_combout\ : std_logic;
SIGNAL \B5|Mux0~8_combout\ : std_logic;
SIGNAL \B3|q_reg_red[0]~6_combout\ : std_logic;
SIGNAL \B3|LessThan0~0_combout\ : std_logic;
SIGNAL \B3|q_reg_red[0]~7\ : std_logic;
SIGNAL \B3|q_reg_red[1]~8_combout\ : std_logic;
SIGNAL \B3|q_reg_red[1]~9\ : std_logic;
SIGNAL \B3|q_reg_red[2]~10_combout\ : std_logic;
SIGNAL \B3|q_reg_red[2]~11\ : std_logic;
SIGNAL \B3|q_reg_red[3]~12_combout\ : std_logic;
SIGNAL \B3|q_reg_red[3]~13\ : std_logic;
SIGNAL \B3|q_reg_red[4]~14_combout\ : std_logic;
SIGNAL \B7|Mux5~1_combout\ : std_logic;
SIGNAL \B3|q_reg_red[4]~15\ : std_logic;
SIGNAL \B3|q_reg_red[5]~16_combout\ : std_logic;
SIGNAL \B7|Mux5~0_combout\ : std_logic;
SIGNAL \B7|Mux5~2_combout\ : std_logic;
SIGNAL \B7|Mux4~0_combout\ : std_logic;
SIGNAL \B7|Mux4~1_combout\ : std_logic;
SIGNAL \B7|Mux4~2_combout\ : std_logic;
SIGNAL \B7|Mux3~1_combout\ : std_logic;
SIGNAL \B7|Mux3~0_combout\ : std_logic;
SIGNAL \B7|Mux3~2_combout\ : std_logic;
SIGNAL \B9|Mux6~0_combout\ : std_logic;
SIGNAL \B9|Mux5~0_combout\ : std_logic;
SIGNAL \B9|Mux4~0_combout\ : std_logic;
SIGNAL \B9|Mux3~0_combout\ : std_logic;
SIGNAL \B9|Mux2~0_combout\ : std_logic;
SIGNAL \B9|Mux1~0_combout\ : std_logic;
SIGNAL \B9|Mux0~0_combout\ : std_logic;
SIGNAL \B7|Mux0~0_combout\ : std_logic;
SIGNAL \B7|Mux2~0_combout\ : std_logic;
SIGNAL \B7|Mux2~1_combout\ : std_logic;
SIGNAL \B7|Mux2~2_combout\ : std_logic;
SIGNAL \B7|Mux1~0_combout\ : std_logic;
SIGNAL \B8|Mux6~0_combout\ : std_logic;
SIGNAL \B8|Mux5~3_combout\ : std_logic;
SIGNAL \B8|Mux5~9_combout\ : std_logic;
SIGNAL \B8|Mux4~3_combout\ : std_logic;
SIGNAL \B8|Mux4~6_combout\ : std_logic;
SIGNAL \B8|Mux3~0_combout\ : std_logic;
SIGNAL \B8|Mux2~0_combout\ : std_logic;
SIGNAL \B8|Mux1~0_combout\ : std_logic;
SIGNAL \B8|Mux0~8_combout\ : std_logic;
SIGNAL \B3|q_reg_green[0]~6_combout\ : std_logic;
SIGNAL \B3|q_reg_green[0]~7\ : std_logic;
SIGNAL \B3|q_reg_green[1]~8_combout\ : std_logic;
SIGNAL \B3|q_reg_green[1]~9\ : std_logic;
SIGNAL \B3|q_reg_green[2]~10_combout\ : std_logic;
SIGNAL \B3|q_reg_green[2]~11\ : std_logic;
SIGNAL \B3|q_reg_green[3]~12_combout\ : std_logic;
SIGNAL \B3|q_reg_green[3]~13\ : std_logic;
SIGNAL \B3|q_reg_green[4]~14_combout\ : std_logic;
SIGNAL \B3|q_reg_green[4]~15\ : std_logic;
SIGNAL \B3|q_reg_green[5]~16_combout\ : std_logic;
SIGNAL \B10|Mux3~1_combout\ : std_logic;
SIGNAL \B10|Mux3~0_combout\ : std_logic;
SIGNAL \B10|Mux3~2_combout\ : std_logic;
SIGNAL \B10|Mux4~1_combout\ : std_logic;
SIGNAL \B10|Mux4~0_combout\ : std_logic;
SIGNAL \B10|Mux4~2_combout\ : std_logic;
SIGNAL \B10|Mux5~0_combout\ : std_logic;
SIGNAL \B10|Mux5~1_combout\ : std_logic;
SIGNAL \B10|Mux5~2_combout\ : std_logic;
SIGNAL \B12|Mux6~0_combout\ : std_logic;
SIGNAL \B12|Mux5~0_combout\ : std_logic;
SIGNAL \B12|Mux4~0_combout\ : std_logic;
SIGNAL \B12|Mux3~0_combout\ : std_logic;
SIGNAL \B12|Mux2~0_combout\ : std_logic;
SIGNAL \B12|Mux1~0_combout\ : std_logic;
SIGNAL \B12|Mux0~0_combout\ : std_logic;
SIGNAL \B10|Mux0~0_combout\ : std_logic;
SIGNAL \B10|Mux2~1_combout\ : std_logic;
SIGNAL \B10|Mux2~0_combout\ : std_logic;
SIGNAL \B10|Mux2~2_combout\ : std_logic;
SIGNAL \B10|Mux1~0_combout\ : std_logic;
SIGNAL \B11|Mux6~0_combout\ : std_logic;
SIGNAL \B11|Mux5~3_combout\ : std_logic;
SIGNAL \B11|Mux5~9_combout\ : std_logic;
SIGNAL \B11|Mux4~3_combout\ : std_logic;
SIGNAL \B11|Mux4~6_combout\ : std_logic;
SIGNAL \B11|Mux3~0_combout\ : std_logic;
SIGNAL \B11|Mux2~0_combout\ : std_logic;
SIGNAL \B11|Mux1~0_combout\ : std_logic;
SIGNAL \B11|Mux0~8_combout\ : std_logic;
SIGNAL \B1|q_reg\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \B3|q_reg_red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B3|q_reg_green\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B3|q_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B2|q_int\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B3|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \B2|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \B11|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \B12|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \B9|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \B5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \B6|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
red <= ww_red;
green <= ww_green;
u_7seg <= ww_u_7seg;
d_7seg <= ww_d_7seg;
u_7seg_red <= ww_u_7seg_red;
d_7seg_red <= ww_d_7seg_red;
u_7seg_green <= ww_u_7seg_green;
d_7seg_green <= ww_d_7seg_green;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\B3|ALT_INV_LessThan0~0_combout\ <= NOT \B3|LessThan0~0_combout\;
\B2|ALT_INV_q~0_combout\ <= NOT \B2|q~0_combout\;
\B11|ALT_INV_Mux6~0_combout\ <= NOT \B11|Mux6~0_combout\;
\B12|ALT_INV_Mux0~0_combout\ <= NOT \B12|Mux0~0_combout\;
\B8|ALT_INV_Mux6~0_combout\ <= NOT \B8|Mux6~0_combout\;
\B9|ALT_INV_Mux0~0_combout\ <= NOT \B9|Mux0~0_combout\;
\B5|ALT_INV_Mux6~0_combout\ <= NOT \B5|Mux6~0_combout\;
\B6|ALT_INV_Mux0~0_combout\ <= NOT \B6|Mux0~0_combout\;

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X46_Y54_N23
\red~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|red~0_combout\,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\green~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B3|green~5_combout\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\u_7seg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\u_7seg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\u_7seg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\u_7seg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\u_7seg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\u_7seg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\u_7seg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\d_7seg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\d_7seg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \d_7seg[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\d_7seg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \d_7seg[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\d_7seg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\d_7seg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\d_7seg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\d_7seg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B5|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \d_7seg[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\u_7seg_red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\u_7seg_red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\u_7seg_red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\u_7seg_red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\u_7seg_red[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\u_7seg_red[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\u_7seg_red[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B9|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_red[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\d_7seg_red[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\d_7seg_red[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\d_7seg_red[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\d_7seg_red[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\d_7seg_red[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\d_7seg_red[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\d_7seg_red[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B8|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \d_7seg_red[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\u_7seg_green[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\u_7seg_green[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\u_7seg_green[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\u_7seg_green[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\u_7seg_green[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\u_7seg_green[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\u_7seg_green[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B12|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \u_7seg_green[6]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\d_7seg_green[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\d_7seg_green[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux5~9_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\d_7seg_green[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux4~6_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\d_7seg_green[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\d_7seg_green[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\d_7seg_green[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\d_7seg_green[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B11|Mux0~8_combout\,
	devoe => ww_devoe,
	o => \d_7seg_green[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X70_Y46_N0
\B3|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~0_combout\ = \B3|q_reg\(0) $ (VCC)
-- \B3|Add0~1\ = CARRY(\B3|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(0),
	datad => VCC,
	combout => \B3|Add0~0_combout\,
	cout => \B3|Add0~1\);

-- Location: IOIBUF_X46_Y54_N29
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X70_Y46_N27
\B2|q_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B2|q_int\(0));

-- Location: FF_X70_Y46_N31
\B2|q_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B2|q_int\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B2|q_int\(1));

-- Location: FF_X70_Y46_N23
\B2|q_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \B2|q_int\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B2|q_int\(2));

-- Location: LCCOMB_X70_Y46_N22
\B2|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B2|q~0_combout\ = ((!\B2|q_int\(1)) # (!\B2|q_int\(2))) # (!\B2|q_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2|q_int\(0),
	datac => \B2|q_int\(2),
	datad => \B2|q_int\(1),
	combout => \B2|q~0_combout\);

-- Location: LCCOMB_X69_Y50_N6
\B1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~0_combout\ = \B1|q_reg\(0) $ (VCC)
-- \B1|Add0~1\ = CARRY(\B1|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(0),
	datad => VCC,
	combout => \B1|Add0~0_combout\,
	cout => \B1|Add0~1\);

-- Location: FF_X69_Y50_N7
\B1|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(0));

-- Location: LCCOMB_X69_Y50_N8
\B1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~2_combout\ = (\B1|q_reg\(1) & (!\B1|Add0~1\)) # (!\B1|q_reg\(1) & ((\B1|Add0~1\) # (GND)))
-- \B1|Add0~3\ = CARRY((!\B1|Add0~1\) # (!\B1|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(1),
	datad => VCC,
	cin => \B1|Add0~1\,
	combout => \B1|Add0~2_combout\,
	cout => \B1|Add0~3\);

-- Location: FF_X69_Y50_N9
\B1|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(1));

-- Location: LCCOMB_X69_Y50_N10
\B1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~4_combout\ = (\B1|q_reg\(2) & (\B1|Add0~3\ $ (GND))) # (!\B1|q_reg\(2) & (!\B1|Add0~3\ & VCC))
-- \B1|Add0~5\ = CARRY((\B1|q_reg\(2) & !\B1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(2),
	datad => VCC,
	cin => \B1|Add0~3\,
	combout => \B1|Add0~4_combout\,
	cout => \B1|Add0~5\);

-- Location: FF_X69_Y50_N11
\B1|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(2));

-- Location: LCCOMB_X69_Y50_N12
\B1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~6_combout\ = (\B1|q_reg\(3) & (!\B1|Add0~5\)) # (!\B1|q_reg\(3) & ((\B1|Add0~5\) # (GND)))
-- \B1|Add0~7\ = CARRY((!\B1|Add0~5\) # (!\B1|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(3),
	datad => VCC,
	cin => \B1|Add0~5\,
	combout => \B1|Add0~6_combout\,
	cout => \B1|Add0~7\);

-- Location: FF_X69_Y50_N13
\B1|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(3));

-- Location: LCCOMB_X69_Y50_N14
\B1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~8_combout\ = (\B1|q_reg\(4) & (\B1|Add0~7\ $ (GND))) # (!\B1|q_reg\(4) & (!\B1|Add0~7\ & VCC))
-- \B1|Add0~9\ = CARRY((\B1|q_reg\(4) & !\B1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(4),
	datad => VCC,
	cin => \B1|Add0~7\,
	combout => \B1|Add0~8_combout\,
	cout => \B1|Add0~9\);

-- Location: FF_X69_Y50_N15
\B1|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(4));

-- Location: LCCOMB_X69_Y50_N16
\B1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~10_combout\ = (\B1|q_reg\(5) & (!\B1|Add0~9\)) # (!\B1|q_reg\(5) & ((\B1|Add0~9\) # (GND)))
-- \B1|Add0~11\ = CARRY((!\B1|Add0~9\) # (!\B1|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(5),
	datad => VCC,
	cin => \B1|Add0~9\,
	combout => \B1|Add0~10_combout\,
	cout => \B1|Add0~11\);

-- Location: FF_X69_Y50_N17
\B1|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(5));

-- Location: LCCOMB_X69_Y50_N4
\B1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~6_combout\ = (\B1|q_reg\(3) & (\B1|q_reg\(4) & (\B1|q_reg\(2) & \B1|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(3),
	datab => \B1|q_reg\(4),
	datac => \B1|q_reg\(2),
	datad => \B1|q_reg\(5),
	combout => \B1|Equal0~6_combout\);

-- Location: LCCOMB_X70_Y49_N28
\B1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~7_combout\ = (\B1|q_reg\(0) & \B1|q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|q_reg\(0),
	datad => \B1|q_reg\(1),
	combout => \B1|Equal0~7_combout\);

-- Location: LCCOMB_X69_Y50_N18
\B1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~12_combout\ = (\B1|q_reg\(6) & (\B1|Add0~11\ $ (GND))) # (!\B1|q_reg\(6) & (!\B1|Add0~11\ & VCC))
-- \B1|Add0~13\ = CARRY((\B1|q_reg\(6) & !\B1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(6),
	datad => VCC,
	cin => \B1|Add0~11\,
	combout => \B1|Add0~12_combout\,
	cout => \B1|Add0~13\);

-- Location: FF_X69_Y50_N19
\B1|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~12_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(6));

-- Location: LCCOMB_X69_Y50_N20
\B1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~14_combout\ = (\B1|q_reg\(7) & (!\B1|Add0~13\)) # (!\B1|q_reg\(7) & ((\B1|Add0~13\) # (GND)))
-- \B1|Add0~15\ = CARRY((!\B1|Add0~13\) # (!\B1|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(7),
	datad => VCC,
	cin => \B1|Add0~13\,
	combout => \B1|Add0~14_combout\,
	cout => \B1|Add0~15\);

-- Location: LCCOMB_X69_Y50_N0
\B1|q_next[7]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[7]~11_combout\ = (\B1|Add0~14_combout\ & !\B1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Add0~14_combout\,
	datac => \B1|Equal0~8_combout\,
	combout => \B1|q_next[7]~11_combout\);

-- Location: FF_X69_Y50_N1
\B1|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[7]~11_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(7));

-- Location: LCCOMB_X69_Y50_N22
\B1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~16_combout\ = (\B1|q_reg\(8) & (\B1|Add0~15\ $ (GND))) # (!\B1|q_reg\(8) & (!\B1|Add0~15\ & VCC))
-- \B1|Add0~17\ = CARRY((\B1|q_reg\(8) & !\B1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(8),
	datad => VCC,
	cin => \B1|Add0~15\,
	combout => \B1|Add0~16_combout\,
	cout => \B1|Add0~17\);

-- Location: FF_X69_Y50_N23
\B1|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~16_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(8));

-- Location: LCCOMB_X69_Y50_N24
\B1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~18_combout\ = (\B1|q_reg\(9) & (!\B1|Add0~17\)) # (!\B1|q_reg\(9) & ((\B1|Add0~17\) # (GND)))
-- \B1|Add0~19\ = CARRY((!\B1|Add0~17\) # (!\B1|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(9),
	datad => VCC,
	cin => \B1|Add0~17\,
	combout => \B1|Add0~18_combout\,
	cout => \B1|Add0~19\);

-- Location: FF_X69_Y50_N25
\B1|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~18_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(9));

-- Location: LCCOMB_X69_Y50_N26
\B1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~20_combout\ = (\B1|q_reg\(10) & (\B1|Add0~19\ $ (GND))) # (!\B1|q_reg\(10) & (!\B1|Add0~19\ & VCC))
-- \B1|Add0~21\ = CARRY((\B1|q_reg\(10) & !\B1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(10),
	datad => VCC,
	cin => \B1|Add0~19\,
	combout => \B1|Add0~20_combout\,
	cout => \B1|Add0~21\);

-- Location: FF_X69_Y50_N27
\B1|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~20_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(10));

-- Location: LCCOMB_X69_Y50_N28
\B1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~22_combout\ = (\B1|q_reg\(11) & (!\B1|Add0~21\)) # (!\B1|q_reg\(11) & ((\B1|Add0~21\) # (GND)))
-- \B1|Add0~23\ = CARRY((!\B1|Add0~21\) # (!\B1|q_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(11),
	datad => VCC,
	cin => \B1|Add0~21\,
	combout => \B1|Add0~22_combout\,
	cout => \B1|Add0~23\);

-- Location: FF_X69_Y50_N29
\B1|q_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~22_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(11));

-- Location: LCCOMB_X69_Y50_N30
\B1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~24_combout\ = (\B1|q_reg\(12) & (\B1|Add0~23\ $ (GND))) # (!\B1|q_reg\(12) & (!\B1|Add0~23\ & VCC))
-- \B1|Add0~25\ = CARRY((\B1|q_reg\(12) & !\B1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(12),
	datad => VCC,
	cin => \B1|Add0~23\,
	combout => \B1|Add0~24_combout\,
	cout => \B1|Add0~25\);

-- Location: LCCOMB_X70_Y49_N22
\B1|q_next[12]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[12]~10_combout\ = (\B1|Add0~24_combout\ & !\B1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~24_combout\,
	datad => \B1|Equal0~8_combout\,
	combout => \B1|q_next[12]~10_combout\);

-- Location: FF_X70_Y49_N23
\B1|q_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[12]~10_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(12));

-- Location: LCCOMB_X69_Y49_N0
\B1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~26_combout\ = (\B1|q_reg\(13) & (!\B1|Add0~25\)) # (!\B1|q_reg\(13) & ((\B1|Add0~25\) # (GND)))
-- \B1|Add0~27\ = CARRY((!\B1|Add0~25\) # (!\B1|q_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(13),
	datad => VCC,
	cin => \B1|Add0~25\,
	combout => \B1|Add0~26_combout\,
	cout => \B1|Add0~27\);

-- Location: LCCOMB_X70_Y49_N20
\B1|q_next[13]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[13]~9_combout\ = (\B1|Add0~26_combout\ & !\B1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~26_combout\,
	datad => \B1|Equal0~8_combout\,
	combout => \B1|q_next[13]~9_combout\);

-- Location: FF_X70_Y49_N21
\B1|q_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[13]~9_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(13));

-- Location: LCCOMB_X69_Y49_N2
\B1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~28_combout\ = (\B1|q_reg\(14) & (\B1|Add0~27\ $ (GND))) # (!\B1|q_reg\(14) & (!\B1|Add0~27\ & VCC))
-- \B1|Add0~29\ = CARRY((\B1|q_reg\(14) & !\B1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(14),
	datad => VCC,
	cin => \B1|Add0~27\,
	combout => \B1|Add0~28_combout\,
	cout => \B1|Add0~29\);

-- Location: LCCOMB_X70_Y49_N12
\B1|q_next[14]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[14]~8_combout\ = (\B1|Add0~28_combout\ & !\B1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~28_combout\,
	datad => \B1|Equal0~8_combout\,
	combout => \B1|q_next[14]~8_combout\);

-- Location: FF_X70_Y49_N13
\B1|q_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[14]~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(14));

-- Location: LCCOMB_X69_Y49_N4
\B1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~30_combout\ = (\B1|q_reg\(15) & (!\B1|Add0~29\)) # (!\B1|q_reg\(15) & ((\B1|Add0~29\) # (GND)))
-- \B1|Add0~31\ = CARRY((!\B1|Add0~29\) # (!\B1|q_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(15),
	datad => VCC,
	cin => \B1|Add0~29\,
	combout => \B1|Add0~30_combout\,
	cout => \B1|Add0~31\);

-- Location: LCCOMB_X70_Y49_N30
\B1|q_next[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[15]~7_combout\ = (\B1|Add0~30_combout\ & !\B1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Add0~30_combout\,
	datad => \B1|Equal0~8_combout\,
	combout => \B1|q_next[15]~7_combout\);

-- Location: FF_X70_Y49_N31
\B1|q_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[15]~7_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(15));

-- Location: LCCOMB_X69_Y49_N6
\B1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~32_combout\ = (\B1|q_reg\(16) & (\B1|Add0~31\ $ (GND))) # (!\B1|q_reg\(16) & (!\B1|Add0~31\ & VCC))
-- \B1|Add0~33\ = CARRY((\B1|q_reg\(16) & !\B1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(16),
	datad => VCC,
	cin => \B1|Add0~31\,
	combout => \B1|Add0~32_combout\,
	cout => \B1|Add0~33\);

-- Location: FF_X69_Y49_N7
\B1|q_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~32_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(16));

-- Location: LCCOMB_X69_Y49_N8
\B1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~34_combout\ = (\B1|q_reg\(17) & (!\B1|Add0~33\)) # (!\B1|q_reg\(17) & ((\B1|Add0~33\) # (GND)))
-- \B1|Add0~35\ = CARRY((!\B1|Add0~33\) # (!\B1|q_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(17),
	datad => VCC,
	cin => \B1|Add0~33\,
	combout => \B1|Add0~34_combout\,
	cout => \B1|Add0~35\);

-- Location: LCCOMB_X70_Y49_N4
\B1|q_next[17]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[17]~6_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Equal0~8_combout\,
	datad => \B1|Add0~34_combout\,
	combout => \B1|q_next[17]~6_combout\);

-- Location: FF_X70_Y49_N5
\B1|q_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[17]~6_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(17));

-- Location: LCCOMB_X69_Y49_N10
\B1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~36_combout\ = (\B1|q_reg\(18) & (\B1|Add0~35\ $ (GND))) # (!\B1|q_reg\(18) & (!\B1|Add0~35\ & VCC))
-- \B1|Add0~37\ = CARRY((\B1|q_reg\(18) & !\B1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(18),
	datad => VCC,
	cin => \B1|Add0~35\,
	combout => \B1|Add0~36_combout\,
	cout => \B1|Add0~37\);

-- Location: FF_X69_Y49_N11
\B1|q_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~36_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(18));

-- Location: LCCOMB_X69_Y49_N12
\B1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~38_combout\ = (\B1|q_reg\(19) & (!\B1|Add0~37\)) # (!\B1|q_reg\(19) & ((\B1|Add0~37\) # (GND)))
-- \B1|Add0~39\ = CARRY((!\B1|Add0~37\) # (!\B1|q_reg\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(19),
	datad => VCC,
	cin => \B1|Add0~37\,
	combout => \B1|Add0~38_combout\,
	cout => \B1|Add0~39\);

-- Location: LCCOMB_X69_Y49_N30
\B1|q_next[19]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[19]~5_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Equal0~8_combout\,
	datad => \B1|Add0~38_combout\,
	combout => \B1|q_next[19]~5_combout\);

-- Location: FF_X69_Y49_N31
\B1|q_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[19]~5_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(19));

-- Location: LCCOMB_X69_Y49_N14
\B1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~40_combout\ = (\B1|q_reg\(20) & (\B1|Add0~39\ $ (GND))) # (!\B1|q_reg\(20) & (!\B1|Add0~39\ & VCC))
-- \B1|Add0~41\ = CARRY((\B1|q_reg\(20) & !\B1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(20),
	datad => VCC,
	cin => \B1|Add0~39\,
	combout => \B1|Add0~40_combout\,
	cout => \B1|Add0~41\);

-- Location: LCCOMB_X70_Y49_N8
\B1|q_next[20]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[20]~4_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Equal0~8_combout\,
	datad => \B1|Add0~40_combout\,
	combout => \B1|q_next[20]~4_combout\);

-- Location: FF_X70_Y49_N9
\B1|q_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[20]~4_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(20));

-- Location: LCCOMB_X69_Y49_N16
\B1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~42_combout\ = (\B1|q_reg\(21) & (!\B1|Add0~41\)) # (!\B1|q_reg\(21) & ((\B1|Add0~41\) # (GND)))
-- \B1|Add0~43\ = CARRY((!\B1|Add0~41\) # (!\B1|q_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(21),
	datad => VCC,
	cin => \B1|Add0~41\,
	combout => \B1|Add0~42_combout\,
	cout => \B1|Add0~43\);

-- Location: LCCOMB_X69_Y49_N28
\B1|q_next[21]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[21]~3_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Equal0~8_combout\,
	datad => \B1|Add0~42_combout\,
	combout => \B1|q_next[21]~3_combout\);

-- Location: FF_X69_Y49_N29
\B1|q_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[21]~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(21));

-- Location: LCCOMB_X69_Y49_N18
\B1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~44_combout\ = (\B1|q_reg\(22) & (\B1|Add0~43\ $ (GND))) # (!\B1|q_reg\(22) & (!\B1|Add0~43\ & VCC))
-- \B1|Add0~45\ = CARRY((\B1|q_reg\(22) & !\B1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(22),
	datad => VCC,
	cin => \B1|Add0~43\,
	combout => \B1|Add0~44_combout\,
	cout => \B1|Add0~45\);

-- Location: LCCOMB_X69_Y49_N26
\B1|q_next[22]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[22]~2_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1|Equal0~8_combout\,
	datad => \B1|Add0~44_combout\,
	combout => \B1|q_next[22]~2_combout\);

-- Location: FF_X69_Y49_N27
\B1|q_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[22]~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(22));

-- Location: LCCOMB_X69_Y49_N20
\B1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~46_combout\ = (\B1|q_reg\(23) & (!\B1|Add0~45\)) # (!\B1|q_reg\(23) & ((\B1|Add0~45\) # (GND)))
-- \B1|Add0~47\ = CARRY((!\B1|Add0~45\) # (!\B1|q_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B1|q_reg\(23),
	datad => VCC,
	cin => \B1|Add0~45\,
	combout => \B1|Add0~46_combout\,
	cout => \B1|Add0~47\);

-- Location: LCCOMB_X70_Y49_N24
\B1|q_next[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[23]~1_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Equal0~8_combout\,
	datad => \B1|Add0~46_combout\,
	combout => \B1|q_next[23]~1_combout\);

-- Location: FF_X70_Y49_N25
\B1|q_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[23]~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(23));

-- Location: LCCOMB_X69_Y49_N22
\B1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~48_combout\ = (\B1|q_reg\(24) & (\B1|Add0~47\ $ (GND))) # (!\B1|q_reg\(24) & (!\B1|Add0~47\ & VCC))
-- \B1|Add0~49\ = CARRY((\B1|q_reg\(24) & !\B1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(24),
	datad => VCC,
	cin => \B1|Add0~47\,
	combout => \B1|Add0~48_combout\,
	cout => \B1|Add0~49\);

-- Location: FF_X69_Y49_N23
\B1|q_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Add0~48_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(24));

-- Location: LCCOMB_X69_Y49_N24
\B1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Add0~50_combout\ = \B1|Add0~49\ $ (\B1|q_reg\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B1|q_reg\(25),
	cin => \B1|Add0~49\,
	combout => \B1|Add0~50_combout\);

-- Location: LCCOMB_X70_Y49_N6
\B1|q_next[25]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|q_next[25]~0_combout\ = (!\B1|Equal0~8_combout\ & \B1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B1|Equal0~8_combout\,
	datad => \B1|Add0~50_combout\,
	combout => \B1|q_next[25]~0_combout\);

-- Location: FF_X70_Y49_N7
\B1|q_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|q_next[25]~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|q_reg\(25));

-- Location: LCCOMB_X70_Y49_N10
\B1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~0_combout\ = (\B1|q_reg\(25) & (\B1|q_reg\(23) & (\B1|q_reg\(22) & !\B1|q_reg\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(25),
	datab => \B1|q_reg\(23),
	datac => \B1|q_reg\(22),
	datad => \B1|q_reg\(24),
	combout => \B1|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y49_N18
\B1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~1_combout\ = (!\B1|q_reg\(18) & (\B1|q_reg\(19) & (\B1|q_reg\(20) & \B1|q_reg\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(18),
	datab => \B1|q_reg\(19),
	datac => \B1|q_reg\(20),
	datad => \B1|q_reg\(21),
	combout => \B1|Equal0~1_combout\);

-- Location: LCCOMB_X70_Y49_N14
\B1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~2_combout\ = (\B1|q_reg\(15) & (!\B1|q_reg\(16) & (\B1|q_reg\(17) & \B1|q_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(15),
	datab => \B1|q_reg\(16),
	datac => \B1|q_reg\(17),
	datad => \B1|q_reg\(14),
	combout => \B1|Equal0~2_combout\);

-- Location: LCCOMB_X70_Y49_N16
\B1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~3_combout\ = (\B1|q_reg\(12) & (\B1|q_reg\(13) & (!\B1|q_reg\(10) & !\B1|q_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(12),
	datab => \B1|q_reg\(13),
	datac => \B1|q_reg\(10),
	datad => \B1|q_reg\(11),
	combout => \B1|Equal0~3_combout\);

-- Location: LCCOMB_X70_Y49_N26
\B1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~4_combout\ = (\B1|Equal0~0_combout\ & (\B1|Equal0~1_combout\ & (\B1|Equal0~2_combout\ & \B1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Equal0~0_combout\,
	datab => \B1|Equal0~1_combout\,
	datac => \B1|Equal0~2_combout\,
	datad => \B1|Equal0~3_combout\,
	combout => \B1|Equal0~4_combout\);

-- Location: LCCOMB_X69_Y50_N2
\B1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~5_combout\ = (!\B1|q_reg\(9) & (\B1|q_reg\(6) & (!\B1|q_reg\(8) & !\B1|q_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|q_reg\(9),
	datab => \B1|q_reg\(6),
	datac => \B1|q_reg\(8),
	datad => \B1|q_reg\(7),
	combout => \B1|Equal0~5_combout\);

-- Location: LCCOMB_X70_Y49_N0
\B1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B1|Equal0~8_combout\ = (\B1|Equal0~6_combout\ & (\B1|Equal0~7_combout\ & (\B1|Equal0~4_combout\ & \B1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B1|Equal0~6_combout\,
	datab => \B1|Equal0~7_combout\,
	datac => \B1|Equal0~4_combout\,
	datad => \B1|Equal0~5_combout\,
	combout => \B1|Equal0~8_combout\);

-- Location: FF_X70_Y49_N1
\B1|clk_o_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B1|Equal0~8_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B1|clk_o_reg~q\);

-- Location: FF_X70_Y46_N1
\B3|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~0_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(0));

-- Location: LCCOMB_X70_Y46_N2
\B3|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~2_combout\ = (\B3|q_reg\(1) & (!\B3|Add0~1\)) # (!\B3|q_reg\(1) & ((\B3|Add0~1\) # (GND)))
-- \B3|Add0~3\ = CARRY((!\B3|Add0~1\) # (!\B3|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(1),
	datad => VCC,
	cin => \B3|Add0~1\,
	combout => \B3|Add0~2_combout\,
	cout => \B3|Add0~3\);

-- Location: FF_X70_Y46_N3
\B3|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~2_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(1));

-- Location: LCCOMB_X70_Y46_N10
\B3|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~10_combout\ = (\B3|q_reg\(5) & (!\B3|Add0~9\)) # (!\B3|q_reg\(5) & ((\B3|Add0~9\) # (GND)))
-- \B3|Add0~11\ = CARRY((!\B3|Add0~9\) # (!\B3|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(5),
	datad => VCC,
	cin => \B3|Add0~9\,
	combout => \B3|Add0~10_combout\,
	cout => \B3|Add0~11\);

-- Location: LCCOMB_X70_Y46_N12
\B3|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~12_combout\ = (\B3|q_reg\(6) & (\B3|Add0~11\ $ (GND))) # (!\B3|q_reg\(6) & (!\B3|Add0~11\ & VCC))
-- \B3|Add0~13\ = CARRY((\B3|q_reg\(6) & !\B3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(6),
	datad => VCC,
	cin => \B3|Add0~11\,
	combout => \B3|Add0~12_combout\,
	cout => \B3|Add0~13\);

-- Location: FF_X70_Y46_N13
\B3|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~12_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(6));

-- Location: LCCOMB_X70_Y46_N14
\B3|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~14_combout\ = \B3|q_reg\(7) $ (\B3|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(7),
	cin => \B3|Add0~13\,
	combout => \B3|Add0~14_combout\);

-- Location: FF_X70_Y46_N15
\B3|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~14_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(7));

-- Location: LCCOMB_X70_Y46_N16
\B3|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Equal3~0_combout\ = (!\B3|q_reg\(4) & (!\B3|q_reg\(7) & !\B3|q_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(4),
	datac => \B3|q_reg\(7),
	datad => \B3|q_reg\(6),
	combout => \B3|Equal3~0_combout\);

-- Location: LCCOMB_X70_Y46_N4
\B3|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~4_combout\ = (\B3|q_reg\(2) & (\B3|Add0~3\ $ (GND))) # (!\B3|q_reg\(2) & (!\B3|Add0~3\ & VCC))
-- \B3|Add0~5\ = CARRY((\B3|q_reg\(2) & !\B3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(2),
	datad => VCC,
	cin => \B3|Add0~3\,
	combout => \B3|Add0~4_combout\,
	cout => \B3|Add0~5\);

-- Location: LCCOMB_X70_Y46_N28
\B3|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Equal3~1_combout\ = (!\B3|q_reg\(3) & (\B3|q_reg\(0) & (!\B3|q_reg\(2) & \B3|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(3),
	datab => \B3|q_reg\(0),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(5),
	combout => \B3|Equal3~1_combout\);

-- Location: LCCOMB_X70_Y46_N20
\B3|q_next~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_next~1_combout\ = (\B3|Add0~4_combout\ & (((!\B3|Equal3~1_combout\) # (!\B3|Equal3~0_combout\)) # (!\B3|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|Equal3~0_combout\,
	datac => \B3|Add0~4_combout\,
	datad => \B3|Equal3~1_combout\,
	combout => \B3|q_next~1_combout\);

-- Location: FF_X70_Y46_N21
\B3|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_next~1_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(2));

-- Location: LCCOMB_X70_Y46_N6
\B3|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~6_combout\ = (\B3|q_reg\(3) & (!\B3|Add0~5\)) # (!\B3|q_reg\(3) & ((\B3|Add0~5\) # (GND)))
-- \B3|Add0~7\ = CARRY((!\B3|Add0~5\) # (!\B3|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(3),
	datad => VCC,
	cin => \B3|Add0~5\,
	combout => \B3|Add0~6_combout\,
	cout => \B3|Add0~7\);

-- Location: FF_X70_Y46_N7
\B3|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~6_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(3));

-- Location: LCCOMB_X70_Y46_N8
\B3|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|Add0~8_combout\ = (\B3|q_reg\(4) & (\B3|Add0~7\ $ (GND))) # (!\B3|q_reg\(4) & (!\B3|Add0~7\ & VCC))
-- \B3|Add0~9\ = CARRY((\B3|q_reg\(4) & !\B3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg\(4),
	datad => VCC,
	cin => \B3|Add0~7\,
	combout => \B3|Add0~8_combout\,
	cout => \B3|Add0~9\);

-- Location: FF_X70_Y46_N9
\B3|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|Add0~8_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(4));

-- Location: LCCOMB_X70_Y46_N24
\B3|q_next~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_next~0_combout\ = (\B3|Add0~10_combout\ & (((!\B3|Equal3~1_combout\) # (!\B3|q_reg\(1))) # (!\B3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|Add0~10_combout\,
	datab => \B3|Equal3~0_combout\,
	datac => \B3|q_reg\(1),
	datad => \B3|Equal3~1_combout\,
	combout => \B3|q_next~0_combout\);

-- Location: FF_X70_Y46_N25
\B3|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_next~0_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg\(5));

-- Location: LCCOMB_X70_Y47_N24
\B3|red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|red~0_combout\ = (!\B3|q_reg\(5) & (\B3|Equal3~0_combout\ & ((!\B3|q_reg\(0)) # (!\B3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(5),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(0),
	datad => \B3|Equal3~0_combout\,
	combout => \B3|red~0_combout\);

-- Location: LCCOMB_X70_Y46_N26
\B3|green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~0_combout\ = (\B3|q_reg\(3) & (\B3|q_reg\(2) & \B3|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(3),
	datab => \B3|q_reg\(2),
	datad => \B3|q_reg\(1),
	combout => \B3|green~0_combout\);

-- Location: LCCOMB_X70_Y46_N30
\B3|green~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~1_combout\ = (\B3|q_reg\(4) & (!\B3|green~0_combout\ & !\B3|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(4),
	datab => \B3|green~0_combout\,
	datad => \B3|q_reg\(5),
	combout => \B3|green~1_combout\);

-- Location: LCCOMB_X70_Y47_N18
\B3|green~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~2_combout\ = (\B3|q_reg\(2) & (!\B3|q_reg\(5) & (\B3|q_reg\(3) & \B3|q_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(2),
	datab => \B3|q_reg\(5),
	datac => \B3|q_reg\(3),
	datad => \B3|q_reg\(0),
	combout => \B3|green~2_combout\);

-- Location: LCCOMB_X70_Y47_N4
\B3|green~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~3_combout\ = (\B3|q_reg\(1) & (((\B3|green~2_combout\)))) # (!\B3|q_reg\(1) & (!\B3|q_reg\(4) & ((\B3|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(4),
	datab => \B3|green~2_combout\,
	datac => \B3|Equal3~1_combout\,
	datad => \B3|q_reg\(1),
	combout => \B3|green~3_combout\);

-- Location: LCCOMB_X69_Y46_N16
\B3|green~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~4_combout\ = (!\B3|q_reg\(6) & (!\B3|q_reg\(7) & ((\B3|green~1_combout\) # (\B3|green~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|green~1_combout\,
	datab => \B3|q_reg\(6),
	datac => \B3|q_reg\(7),
	datad => \B3|green~3_combout\,
	combout => \B3|green~4_combout\);

-- Location: LCCOMB_X70_Y47_N22
\B3|green~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|green~5_combout\ = (\B3|green~4_combout\) # ((\B3|q_reg\(1) & (\B3|Equal3~0_combout\ & \B3|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|Equal3~0_combout\,
	datac => \B3|Equal3~1_combout\,
	datad => \B3|green~4_combout\,
	combout => \B3|green~5_combout\);

-- Location: LCCOMB_X70_Y50_N12
\B4|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux4~1_combout\ = (\B3|q_reg\(1) & ((\B3|q_reg\(3) & ((\B3|q_reg\(2)) # (\B3|q_reg\(5)))) # (!\B3|q_reg\(3) & ((!\B3|q_reg\(5)) # (!\B3|q_reg\(2)))))) # (!\B3|q_reg\(1) & ((\B3|q_reg\(2)) # ((!\B3|q_reg\(3) & \B3|q_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(5),
	combout => \B4|Mux4~1_combout\);

-- Location: LCCOMB_X70_Y50_N6
\B4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux4~0_combout\ = (\B3|q_reg\(1) & (\B3|q_reg\(2) $ (((!\B3|q_reg\(3) & \B3|q_reg\(5)))))) # (!\B3|q_reg\(1) & (\B3|q_reg\(2) & ((\B3|q_reg\(5)) # (!\B3|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(5),
	combout => \B4|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y50_N30
\B4|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux4~2_combout\ = (\B3|q_reg\(4) & (!\B4|Mux4~1_combout\)) # (!\B3|q_reg\(4) & ((\B4|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~1_combout\,
	datac => \B3|q_reg\(4),
	datad => \B4|Mux4~0_combout\,
	combout => \B4|Mux4~2_combout\);

-- Location: LCCOMB_X70_Y50_N26
\B4|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux3~1_combout\ = (\B3|q_reg\(1) & (!\B3|q_reg\(3) & (\B3|q_reg\(2) & \B3|q_reg\(5)))) # (!\B3|q_reg\(1) & (\B3|q_reg\(3) & (!\B3|q_reg\(2) & !\B3|q_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(5),
	combout => \B4|Mux3~1_combout\);

-- Location: LCCOMB_X70_Y50_N24
\B4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux3~0_combout\ = (\B3|q_reg\(1) & (!\B3|q_reg\(2) & (\B3|q_reg\(3) $ (!\B3|q_reg\(5))))) # (!\B3|q_reg\(1) & ((\B3|q_reg\(3) & (\B3|q_reg\(2) & !\B3|q_reg\(5))) # (!\B3|q_reg\(3) & (!\B3|q_reg\(2) & \B3|q_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(5),
	combout => \B4|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y50_N20
\B4|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux3~2_combout\ = (\B3|q_reg\(4) & ((\B4|Mux3~0_combout\))) # (!\B3|q_reg\(4) & (\B4|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux3~1_combout\,
	datac => \B3|q_reg\(4),
	datad => \B4|Mux3~0_combout\,
	combout => \B4|Mux3~2_combout\);

-- Location: LCCOMB_X70_Y50_N10
\B4|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux5~1_combout\ = (\B3|q_reg\(1) & (((!\B3|q_reg\(2) & \B3|q_reg\(4))) # (!\B3|q_reg\(3)))) # (!\B3|q_reg\(1) & (\B3|q_reg\(3) $ (((!\B3|q_reg\(2) & \B3|q_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(4),
	combout => \B4|Mux5~1_combout\);

-- Location: LCCOMB_X70_Y50_N28
\B4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux5~0_combout\ = (\B3|q_reg\(1) & (\B3|q_reg\(3) $ (((\B3|q_reg\(2)) # (!\B3|q_reg\(4)))))) # (!\B3|q_reg\(1) & ((\B3|q_reg\(3) & (\B3|q_reg\(2) & !\B3|q_reg\(4))) # (!\B3|q_reg\(3) & (!\B3|q_reg\(2) & \B3|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(2),
	datad => \B3|q_reg\(4),
	combout => \B4|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N16
\B4|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux5~2_combout\ = (\B3|q_reg\(5) & (!\B4|Mux5~1_combout\)) # (!\B3|q_reg\(5) & ((\B4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux5~1_combout\,
	datab => \B3|q_reg\(5),
	datad => \B4|Mux5~0_combout\,
	combout => \B4|Mux5~2_combout\);

-- Location: LCCOMB_X70_Y50_N2
\B6|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux6~0_combout\ = (\B4|Mux4~2_combout\ & (!\B4|Mux5~2_combout\ & (\B4|Mux3~2_combout\ $ (!\B3|q_reg\(0))))) # (!\B4|Mux4~2_combout\ & (\B3|q_reg\(0) & (\B4|Mux3~2_combout\ $ (!\B4|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y50_N4
\B6|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux5~0_combout\ = (\B4|Mux3~2_combout\ & ((\B3|q_reg\(0) & ((\B4|Mux5~2_combout\))) # (!\B3|q_reg\(0) & (\B4|Mux4~2_combout\)))) # (!\B4|Mux3~2_combout\ & (\B4|Mux4~2_combout\ & (\B3|q_reg\(0) $ (\B4|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N22
\B6|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux4~0_combout\ = (\B4|Mux4~2_combout\ & (\B4|Mux3~2_combout\ & ((\B4|Mux5~2_combout\) # (!\B3|q_reg\(0))))) # (!\B4|Mux4~2_combout\ & (!\B4|Mux3~2_combout\ & (!\B3|q_reg\(0) & \B4|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux4~0_combout\);

-- Location: LCCOMB_X70_Y50_N0
\B6|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux3~0_combout\ = (\B4|Mux5~2_combout\ & ((\B4|Mux4~2_combout\ & ((\B3|q_reg\(0)))) # (!\B4|Mux4~2_combout\ & (\B4|Mux3~2_combout\ & !\B3|q_reg\(0))))) # (!\B4|Mux5~2_combout\ & (!\B4|Mux3~2_combout\ & (\B4|Mux4~2_combout\ $ (\B3|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux3~0_combout\);

-- Location: LCCOMB_X70_Y50_N14
\B6|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux2~0_combout\ = (\B4|Mux5~2_combout\ & (((!\B4|Mux3~2_combout\ & \B3|q_reg\(0))))) # (!\B4|Mux5~2_combout\ & ((\B4|Mux4~2_combout\ & (!\B4|Mux3~2_combout\)) # (!\B4|Mux4~2_combout\ & ((\B3|q_reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y50_N8
\B6|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux1~0_combout\ = (\B4|Mux4~2_combout\ & (\B3|q_reg\(0) & (\B4|Mux3~2_combout\ $ (\B4|Mux5~2_combout\)))) # (!\B4|Mux4~2_combout\ & (!\B4|Mux3~2_combout\ & ((\B3|q_reg\(0)) # (\B4|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y50_N18
\B6|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B6|Mux0~0_combout\ = (\B3|q_reg\(0) & ((\B4|Mux3~2_combout\) # (\B4|Mux4~2_combout\ $ (\B4|Mux5~2_combout\)))) # (!\B3|q_reg\(0) & ((\B4|Mux5~2_combout\) # (\B4|Mux4~2_combout\ $ (\B4|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux4~2_combout\,
	datab => \B4|Mux3~2_combout\,
	datac => \B3|q_reg\(0),
	datad => \B4|Mux5~2_combout\,
	combout => \B6|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y47_N26
\B4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux0~0_combout\ = ((!\B3|q_reg\(4) & !\B3|q_reg\(3))) # (!\B3|q_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(4),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(5),
	combout => \B4|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y47_N12
\B4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux2~0_combout\ = (\B3|q_reg\(3) & ((\B3|q_reg\(1) & ((\B3|q_reg\(2)) # (!\B3|q_reg\(4)))) # (!\B3|q_reg\(1) & (!\B3|q_reg\(4) & \B3|q_reg\(2))))) # (!\B3|q_reg\(3) & (((\B3|q_reg\(4) & !\B3|q_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(4),
	datad => \B3|q_reg\(2),
	combout => \B4|Mux2~0_combout\);

-- Location: LCCOMB_X70_Y47_N6
\B4|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux2~1_combout\ = (\B3|q_reg\(3) & (((\B3|q_reg\(2)) # (!\B3|q_reg\(4))))) # (!\B3|q_reg\(3) & (!\B3|q_reg\(1) & (\B3|q_reg\(4) & !\B3|q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datab => \B3|q_reg\(3),
	datac => \B3|q_reg\(4),
	datad => \B3|q_reg\(2),
	combout => \B4|Mux2~1_combout\);

-- Location: LCCOMB_X70_Y47_N20
\B4|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux2~2_combout\ = (\B3|q_reg\(5) & ((!\B4|Mux2~1_combout\))) # (!\B3|q_reg\(5) & (\B4|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4|Mux2~0_combout\,
	datac => \B3|q_reg\(5),
	datad => \B4|Mux2~1_combout\,
	combout => \B4|Mux2~2_combout\);

-- Location: LCCOMB_X70_Y47_N8
\B4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B4|Mux1~0_combout\ = (\B3|q_reg\(4) & ((\B3|q_reg\(5) & (\B3|q_reg\(3) & \B3|q_reg\(2))) # (!\B3|q_reg\(5) & ((\B3|q_reg\(3)) # (\B3|q_reg\(2)))))) # (!\B3|q_reg\(4) & (\B3|q_reg\(5) & (!\B3|q_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(4),
	datab => \B3|q_reg\(5),
	datac => \B3|q_reg\(3),
	datad => \B3|q_reg\(2),
	combout => \B4|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y51_N0
\B5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux6~0_combout\ = (\B4|Mux1~0_combout\) # (\B4|Mux0~0_combout\ $ (\B4|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B4|Mux0~0_combout\,
	datac => \B4|Mux2~2_combout\,
	datad => \B4|Mux1~0_combout\,
	combout => \B5|Mux6~0_combout\);

-- Location: LCCOMB_X70_Y47_N28
\B5|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux5~3_combout\ = (\B3|q_reg\(3)) # (\B3|q_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B3|q_reg\(3),
	datad => \B3|q_reg\(1),
	combout => \B5|Mux5~3_combout\);

-- Location: LCCOMB_X70_Y47_N14
\B5|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux5~9_combout\ = (\B3|q_reg\(5) & (\B3|q_reg\(4) & ((\B3|q_reg\(2)) # (\B5|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(2),
	datab => \B3|q_reg\(5),
	datac => \B3|q_reg\(4),
	datad => \B5|Mux5~3_combout\,
	combout => \B5|Mux5~9_combout\);

-- Location: LCCOMB_X70_Y47_N16
\B5|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux4~3_combout\ = (\B3|q_reg\(3) & ((!\B3|q_reg\(2)) # (!\B3|q_reg\(1)))) # (!\B3|q_reg\(3) & ((\B3|q_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(1),
	datac => \B3|q_reg\(3),
	datad => \B3|q_reg\(2),
	combout => \B5|Mux4~3_combout\);

-- Location: LCCOMB_X70_Y47_N10
\B5|Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux4~6_combout\ = (!\B3|q_reg\(5) & (\B3|q_reg\(4) & \B5|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(5),
	datac => \B3|q_reg\(4),
	datad => \B5|Mux4~3_combout\,
	combout => \B5|Mux4~6_combout\);

-- Location: LCCOMB_X66_Y51_N2
\B5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux3~0_combout\ = (\B4|Mux0~0_combout\ & (\B4|Mux2~2_combout\ & !\B4|Mux1~0_combout\)) # (!\B4|Mux0~0_combout\ & (\B4|Mux2~2_combout\ $ (!\B4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B4|Mux0~0_combout\,
	datac => \B4|Mux2~2_combout\,
	datad => \B4|Mux1~0_combout\,
	combout => \B5|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y51_N12
\B5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux2~0_combout\ = (\B4|Mux2~2_combout\) # ((!\B4|Mux0~0_combout\ & !\B4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B4|Mux0~0_combout\,
	datac => \B4|Mux2~2_combout\,
	datad => \B4|Mux1~0_combout\,
	combout => \B5|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y51_N14
\B5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux1~0_combout\ = (\B4|Mux0~0_combout\ & ((\B4|Mux2~2_combout\) # (\B4|Mux1~0_combout\))) # (!\B4|Mux0~0_combout\ & (\B4|Mux2~2_combout\ & \B4|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B4|Mux0~0_combout\,
	datac => \B4|Mux2~2_combout\,
	datad => \B4|Mux1~0_combout\,
	combout => \B5|Mux1~0_combout\);

-- Location: LCCOMB_X70_Y47_N30
\B5|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B5|Mux0~8_combout\ = (!\B3|q_reg\(5) & (((!\B3|q_reg\(3) & !\B3|q_reg\(2))) # (!\B3|q_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(4),
	datab => \B3|q_reg\(5),
	datac => \B3|q_reg\(3),
	datad => \B3|q_reg\(2),
	combout => \B5|Mux0~8_combout\);

-- Location: LCCOMB_X69_Y46_N18
\B3|q_reg_red[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[0]~6_combout\ = \B3|q_reg_red\(0) $ (VCC)
-- \B3|q_reg_red[0]~7\ = CARRY(\B3|q_reg_red\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_red\(0),
	datad => VCC,
	combout => \B3|q_reg_red[0]~6_combout\,
	cout => \B3|q_reg_red[0]~7\);

-- Location: LCCOMB_X70_Y46_N18
\B3|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|LessThan0~0_combout\ = (!\B3|q_reg\(5) & (\B3|Equal3~0_combout\ & ((!\B3|green~0_combout\) # (!\B3|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg\(5),
	datab => \B3|q_reg\(0),
	datac => \B3|green~0_combout\,
	datad => \B3|Equal3~0_combout\,
	combout => \B3|LessThan0~0_combout\);

-- Location: FF_X69_Y46_N19
\B3|q_reg_red[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[0]~6_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(0));

-- Location: LCCOMB_X69_Y46_N20
\B3|q_reg_red[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[1]~8_combout\ = (\B3|q_reg_red\(1) & (!\B3|q_reg_red[0]~7\)) # (!\B3|q_reg_red\(1) & ((\B3|q_reg_red[0]~7\) # (GND)))
-- \B3|q_reg_red[1]~9\ = CARRY((!\B3|q_reg_red[0]~7\) # (!\B3|q_reg_red\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_red\(1),
	datad => VCC,
	cin => \B3|q_reg_red[0]~7\,
	combout => \B3|q_reg_red[1]~8_combout\,
	cout => \B3|q_reg_red[1]~9\);

-- Location: FF_X69_Y46_N21
\B3|q_reg_red[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[1]~8_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(1));

-- Location: LCCOMB_X69_Y46_N22
\B3|q_reg_red[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[2]~10_combout\ = (\B3|q_reg_red\(2) & (\B3|q_reg_red[1]~9\ $ (GND))) # (!\B3|q_reg_red\(2) & (!\B3|q_reg_red[1]~9\ & VCC))
-- \B3|q_reg_red[2]~11\ = CARRY((\B3|q_reg_red\(2) & !\B3|q_reg_red[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(2),
	datad => VCC,
	cin => \B3|q_reg_red[1]~9\,
	combout => \B3|q_reg_red[2]~10_combout\,
	cout => \B3|q_reg_red[2]~11\);

-- Location: FF_X69_Y46_N23
\B3|q_reg_red[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[2]~10_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(2));

-- Location: LCCOMB_X69_Y46_N24
\B3|q_reg_red[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[3]~12_combout\ = (\B3|q_reg_red\(3) & (!\B3|q_reg_red[2]~11\)) # (!\B3|q_reg_red\(3) & ((\B3|q_reg_red[2]~11\) # (GND)))
-- \B3|q_reg_red[3]~13\ = CARRY((!\B3|q_reg_red[2]~11\) # (!\B3|q_reg_red\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_red\(3),
	datad => VCC,
	cin => \B3|q_reg_red[2]~11\,
	combout => \B3|q_reg_red[3]~12_combout\,
	cout => \B3|q_reg_red[3]~13\);

-- Location: FF_X69_Y46_N25
\B3|q_reg_red[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[3]~12_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(3));

-- Location: LCCOMB_X69_Y46_N26
\B3|q_reg_red[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[4]~14_combout\ = (\B3|q_reg_red\(4) & (\B3|q_reg_red[3]~13\ $ (GND))) # (!\B3|q_reg_red\(4) & (!\B3|q_reg_red[3]~13\ & VCC))
-- \B3|q_reg_red[4]~15\ = CARRY((\B3|q_reg_red\(4) & !\B3|q_reg_red[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datad => VCC,
	cin => \B3|q_reg_red[3]~13\,
	combout => \B3|q_reg_red[4]~14_combout\,
	cout => \B3|q_reg_red[4]~15\);

-- Location: FF_X69_Y46_N27
\B3|q_reg_red[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[4]~14_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(4));

-- Location: LCCOMB_X72_Y46_N6
\B7|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux5~1_combout\ = (\B3|q_reg_red\(3) & (\B3|q_reg_red\(1) $ (((\B3|q_reg_red\(2)) # (!\B3|q_reg_red\(4)))))) # (!\B3|q_reg_red\(3) & ((\B3|q_reg_red\(1)) # ((\B3|q_reg_red\(4) & !\B3|q_reg_red\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux5~1_combout\);

-- Location: LCCOMB_X69_Y46_N28
\B3|q_reg_red[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_red[5]~16_combout\ = \B3|q_reg_red[4]~15\ $ (\B3|q_reg_red\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B3|q_reg_red\(5),
	cin => \B3|q_reg_red[4]~15\,
	combout => \B3|q_reg_red[5]~16_combout\);

-- Location: FF_X69_Y46_N29
\B3|q_reg_red[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_red[5]~16_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|ALT_INV_LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_red\(5));

-- Location: LCCOMB_X72_Y46_N20
\B7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux5~0_combout\ = (\B3|q_reg_red\(3) & ((\B3|q_reg_red\(4) & (!\B3|q_reg_red\(2) & \B3|q_reg_red\(1))) # (!\B3|q_reg_red\(4) & (\B3|q_reg_red\(2) & !\B3|q_reg_red\(1))))) # (!\B3|q_reg_red\(3) & (\B3|q_reg_red\(1) $ (((\B3|q_reg_red\(4) & 
-- !\B3|q_reg_red\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y46_N28
\B7|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux5~2_combout\ = (\B3|q_reg_red\(5) & (!\B7|Mux5~1_combout\)) # (!\B3|q_reg_red\(5) & ((\B7|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux5~1_combout\,
	datab => \B3|q_reg_red\(5),
	datad => \B7|Mux5~0_combout\,
	combout => \B7|Mux5~2_combout\);

-- Location: LCCOMB_X72_Y46_N26
\B7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux4~0_combout\ = (\B3|q_reg_red\(5) & (\B3|q_reg_red\(2) $ (((!\B3|q_reg_red\(3) & \B3|q_reg_red\(1)))))) # (!\B3|q_reg_red\(5) & (\B3|q_reg_red\(2) & ((\B3|q_reg_red\(1)) # (!\B3|q_reg_red\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(5),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux4~0_combout\);

-- Location: LCCOMB_X72_Y46_N16
\B7|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux4~1_combout\ = (\B3|q_reg_red\(5) & ((\B3|q_reg_red\(2) & ((\B3|q_reg_red\(3)) # (!\B3|q_reg_red\(1)))) # (!\B3|q_reg_red\(2) & ((\B3|q_reg_red\(1)) # (!\B3|q_reg_red\(3)))))) # (!\B3|q_reg_red\(5) & ((\B3|q_reg_red\(2)) # ((!\B3|q_reg_red\(3) & 
-- \B3|q_reg_red\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(5),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux4~1_combout\);

-- Location: LCCOMB_X72_Y46_N14
\B7|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux4~2_combout\ = (\B3|q_reg_red\(4) & ((!\B7|Mux4~1_combout\))) # (!\B3|q_reg_red\(4) & (\B7|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux4~0_combout\,
	datac => \B3|q_reg_red\(4),
	datad => \B7|Mux4~1_combout\,
	combout => \B7|Mux4~2_combout\);

-- Location: LCCOMB_X72_Y46_N22
\B7|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux3~1_combout\ = (\B3|q_reg_red\(5) & (\B3|q_reg_red\(2) & (!\B3|q_reg_red\(3) & \B3|q_reg_red\(1)))) # (!\B3|q_reg_red\(5) & (!\B3|q_reg_red\(2) & (\B3|q_reg_red\(3) & !\B3|q_reg_red\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(5),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux3~1_combout\);

-- Location: LCCOMB_X72_Y46_N0
\B7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux3~0_combout\ = (\B3|q_reg_red\(5) & (!\B3|q_reg_red\(2) & (\B3|q_reg_red\(3) $ (!\B3|q_reg_red\(1))))) # (!\B3|q_reg_red\(5) & ((\B3|q_reg_red\(2) & (\B3|q_reg_red\(3) & !\B3|q_reg_red\(1))) # (!\B3|q_reg_red\(2) & (!\B3|q_reg_red\(3) & 
-- \B3|q_reg_red\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(5),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux3~0_combout\);

-- Location: LCCOMB_X72_Y46_N12
\B7|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux3~2_combout\ = (\B3|q_reg_red\(4) & ((\B7|Mux3~0_combout\))) # (!\B3|q_reg_red\(4) & (\B7|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux3~1_combout\,
	datac => \B3|q_reg_red\(4),
	datad => \B7|Mux3~0_combout\,
	combout => \B7|Mux3~2_combout\);

-- Location: LCCOMB_X74_Y46_N12
\B9|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux6~0_combout\ = (\B7|Mux4~2_combout\ & (!\B7|Mux5~2_combout\ & (\B3|q_reg_red\(0) $ (!\B7|Mux3~2_combout\)))) # (!\B7|Mux4~2_combout\ & (\B3|q_reg_red\(0) & (\B7|Mux5~2_combout\ $ (!\B7|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y46_N30
\B9|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux5~0_combout\ = (\B7|Mux3~2_combout\ & ((\B3|q_reg_red\(0) & ((\B7|Mux5~2_combout\))) # (!\B3|q_reg_red\(0) & (\B7|Mux4~2_combout\)))) # (!\B7|Mux3~2_combout\ & (\B7|Mux4~2_combout\ & (\B3|q_reg_red\(0) $ (\B7|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux3~2_combout\,
	datab => \B7|Mux4~2_combout\,
	datac => \B3|q_reg_red\(0),
	datad => \B7|Mux5~2_combout\,
	combout => \B9|Mux5~0_combout\);

-- Location: LCCOMB_X74_Y46_N14
\B9|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux4~0_combout\ = (\B7|Mux4~2_combout\ & (\B7|Mux3~2_combout\ & ((\B7|Mux5~2_combout\) # (!\B3|q_reg_red\(0))))) # (!\B7|Mux4~2_combout\ & (!\B3|q_reg_red\(0) & (\B7|Mux5~2_combout\ & !\B7|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux4~0_combout\);

-- Location: LCCOMB_X74_Y46_N24
\B9|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux3~0_combout\ = (\B7|Mux5~2_combout\ & ((\B3|q_reg_red\(0) & (\B7|Mux4~2_combout\)) # (!\B3|q_reg_red\(0) & (!\B7|Mux4~2_combout\ & \B7|Mux3~2_combout\)))) # (!\B7|Mux5~2_combout\ & (!\B7|Mux3~2_combout\ & (\B3|q_reg_red\(0) $ 
-- (\B7|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux3~0_combout\);

-- Location: LCCOMB_X74_Y46_N6
\B9|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux2~0_combout\ = (\B7|Mux5~2_combout\ & (\B3|q_reg_red\(0) & ((!\B7|Mux3~2_combout\)))) # (!\B7|Mux5~2_combout\ & ((\B7|Mux4~2_combout\ & ((!\B7|Mux3~2_combout\))) # (!\B7|Mux4~2_combout\ & (\B3|q_reg_red\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y46_N16
\B9|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux1~0_combout\ = (\B3|q_reg_red\(0) & (\B7|Mux3~2_combout\ $ (((\B7|Mux5~2_combout\) # (!\B7|Mux4~2_combout\))))) # (!\B3|q_reg_red\(0) & (\B7|Mux5~2_combout\ & (!\B7|Mux4~2_combout\ & !\B7|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y46_N10
\B9|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B9|Mux0~0_combout\ = (\B3|q_reg_red\(0) & ((\B7|Mux3~2_combout\) # (\B7|Mux5~2_combout\ $ (\B7|Mux4~2_combout\)))) # (!\B3|q_reg_red\(0) & ((\B7|Mux5~2_combout\) # (\B7|Mux4~2_combout\ $ (\B7|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(0),
	datab => \B7|Mux5~2_combout\,
	datac => \B7|Mux4~2_combout\,
	datad => \B7|Mux3~2_combout\,
	combout => \B9|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y46_N12
\B7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux0~0_combout\ = ((!\B3|q_reg_red\(3) & !\B3|q_reg_red\(4))) # (!\B3|q_reg_red\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_red\(3),
	datac => \B3|q_reg_red\(4),
	datad => \B3|q_reg_red\(5),
	combout => \B7|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y46_N10
\B7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux2~0_combout\ = (\B3|q_reg_red\(4) & ((\B3|q_reg_red\(3) & (\B3|q_reg_red\(2) & \B3|q_reg_red\(1))) # (!\B3|q_reg_red\(3) & (!\B3|q_reg_red\(2))))) # (!\B3|q_reg_red\(4) & (\B3|q_reg_red\(3) & ((\B3|q_reg_red\(2)) # (\B3|q_reg_red\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(3),
	datac => \B3|q_reg_red\(2),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y46_N4
\B7|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux2~1_combout\ = (\B3|q_reg_red\(4) & ((\B3|q_reg_red\(3) & (\B3|q_reg_red\(2))) # (!\B3|q_reg_red\(3) & (!\B3|q_reg_red\(2) & !\B3|q_reg_red\(1))))) # (!\B3|q_reg_red\(4) & (\B3|q_reg_red\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(3),
	datac => \B3|q_reg_red\(2),
	datad => \B3|q_reg_red\(1),
	combout => \B7|Mux2~1_combout\);

-- Location: LCCOMB_X69_Y46_N14
\B7|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux2~2_combout\ = (\B3|q_reg_red\(5) & ((!\B7|Mux2~1_combout\))) # (!\B3|q_reg_red\(5) & (\B7|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux2~0_combout\,
	datac => \B7|Mux2~1_combout\,
	datad => \B3|q_reg_red\(5),
	combout => \B7|Mux2~2_combout\);

-- Location: LCCOMB_X69_Y46_N2
\B7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B7|Mux1~0_combout\ = (\B3|q_reg_red\(4) & ((\B3|q_reg_red\(3) & ((\B3|q_reg_red\(2)) # (!\B3|q_reg_red\(5)))) # (!\B3|q_reg_red\(3) & (\B3|q_reg_red\(2) & !\B3|q_reg_red\(5))))) # (!\B3|q_reg_red\(4) & (!\B3|q_reg_red\(3) & ((\B3|q_reg_red\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(3),
	datac => \B3|q_reg_red\(2),
	datad => \B3|q_reg_red\(5),
	combout => \B7|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y46_N6
\B8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux6~0_combout\ = (\B7|Mux1~0_combout\) # (\B7|Mux0~0_combout\ $ (\B7|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux0~0_combout\,
	datac => \B7|Mux2~2_combout\,
	datad => \B7|Mux1~0_combout\,
	combout => \B8|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y46_N18
\B8|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux5~3_combout\ = (\B3|q_reg_red\(3)) # (\B3|q_reg_red\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B8|Mux5~3_combout\);

-- Location: LCCOMB_X72_Y46_N4
\B8|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux5~9_combout\ = (\B3|q_reg_red\(4) & (\B3|q_reg_red\(5) & ((\B3|q_reg_red\(2)) # (\B8|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(5),
	datad => \B8|Mux5~3_combout\,
	combout => \B8|Mux5~9_combout\);

-- Location: LCCOMB_X72_Y46_N2
\B8|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux4~3_combout\ = (\B3|q_reg_red\(2) & ((!\B3|q_reg_red\(1)) # (!\B3|q_reg_red\(3)))) # (!\B3|q_reg_red\(2) & (\B3|q_reg_red\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_red\(2),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(1),
	combout => \B8|Mux4~3_combout\);

-- Location: LCCOMB_X72_Y46_N24
\B8|Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux4~6_combout\ = (\B3|q_reg_red\(4) & (!\B3|q_reg_red\(5) & \B8|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(4),
	datab => \B3|q_reg_red\(5),
	datad => \B8|Mux4~3_combout\,
	combout => \B8|Mux4~6_combout\);

-- Location: LCCOMB_X69_Y46_N0
\B8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux3~0_combout\ = (\B7|Mux0~0_combout\ & (\B7|Mux2~2_combout\ & !\B7|Mux1~0_combout\)) # (!\B7|Mux0~0_combout\ & (\B7|Mux2~2_combout\ $ (!\B7|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux0~0_combout\,
	datac => \B7|Mux2~2_combout\,
	datad => \B7|Mux1~0_combout\,
	combout => \B8|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y46_N30
\B8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux2~0_combout\ = (\B7|Mux2~2_combout\) # ((!\B7|Mux0~0_combout\ & !\B7|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux0~0_combout\,
	datac => \B7|Mux2~2_combout\,
	datad => \B7|Mux1~0_combout\,
	combout => \B8|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y46_N8
\B8|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux1~0_combout\ = (\B7|Mux0~0_combout\ & ((\B7|Mux2~2_combout\) # (\B7|Mux1~0_combout\))) # (!\B7|Mux0~0_combout\ & (\B7|Mux2~2_combout\ & \B7|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B7|Mux0~0_combout\,
	datac => \B7|Mux2~2_combout\,
	datad => \B7|Mux1~0_combout\,
	combout => \B8|Mux1~0_combout\);

-- Location: LCCOMB_X72_Y46_N8
\B8|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B8|Mux0~8_combout\ = (!\B3|q_reg_red\(5) & (((!\B3|q_reg_red\(3) & !\B3|q_reg_red\(2))) # (!\B3|q_reg_red\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_red\(5),
	datab => \B3|q_reg_red\(4),
	datac => \B3|q_reg_red\(3),
	datad => \B3|q_reg_red\(2),
	combout => \B8|Mux0~8_combout\);

-- Location: LCCOMB_X71_Y46_N10
\B3|q_reg_green[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[0]~6_combout\ = \B3|q_reg_green\(0) $ (VCC)
-- \B3|q_reg_green[0]~7\ = CARRY(\B3|q_reg_green\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datad => VCC,
	combout => \B3|q_reg_green[0]~6_combout\,
	cout => \B3|q_reg_green[0]~7\);

-- Location: FF_X71_Y46_N11
\B3|q_reg_green[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[0]~6_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(0));

-- Location: LCCOMB_X71_Y46_N12
\B3|q_reg_green[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[1]~8_combout\ = (\B3|q_reg_green\(1) & (!\B3|q_reg_green[0]~7\)) # (!\B3|q_reg_green\(1) & ((\B3|q_reg_green[0]~7\) # (GND)))
-- \B3|q_reg_green[1]~9\ = CARRY((!\B3|q_reg_green[0]~7\) # (!\B3|q_reg_green\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(1),
	datad => VCC,
	cin => \B3|q_reg_green[0]~7\,
	combout => \B3|q_reg_green[1]~8_combout\,
	cout => \B3|q_reg_green[1]~9\);

-- Location: FF_X71_Y46_N13
\B3|q_reg_green[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[1]~8_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(1));

-- Location: LCCOMB_X71_Y46_N14
\B3|q_reg_green[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[2]~10_combout\ = (\B3|q_reg_green\(2) & (\B3|q_reg_green[1]~9\ $ (GND))) # (!\B3|q_reg_green\(2) & (!\B3|q_reg_green[1]~9\ & VCC))
-- \B3|q_reg_green[2]~11\ = CARRY((\B3|q_reg_green\(2) & !\B3|q_reg_green[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(2),
	datad => VCC,
	cin => \B3|q_reg_green[1]~9\,
	combout => \B3|q_reg_green[2]~10_combout\,
	cout => \B3|q_reg_green[2]~11\);

-- Location: FF_X71_Y46_N15
\B3|q_reg_green[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[2]~10_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(2));

-- Location: LCCOMB_X71_Y46_N16
\B3|q_reg_green[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[3]~12_combout\ = (\B3|q_reg_green\(3) & (!\B3|q_reg_green[2]~11\)) # (!\B3|q_reg_green\(3) & ((\B3|q_reg_green[2]~11\) # (GND)))
-- \B3|q_reg_green[3]~13\ = CARRY((!\B3|q_reg_green[2]~11\) # (!\B3|q_reg_green\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(3),
	datad => VCC,
	cin => \B3|q_reg_green[2]~11\,
	combout => \B3|q_reg_green[3]~12_combout\,
	cout => \B3|q_reg_green[3]~13\);

-- Location: FF_X71_Y46_N17
\B3|q_reg_green[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[3]~12_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(3));

-- Location: LCCOMB_X71_Y46_N18
\B3|q_reg_green[4]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[4]~14_combout\ = (\B3|q_reg_green\(4) & (\B3|q_reg_green[3]~13\ $ (GND))) # (!\B3|q_reg_green\(4) & (!\B3|q_reg_green[3]~13\ & VCC))
-- \B3|q_reg_green[4]~15\ = CARRY((\B3|q_reg_green\(4) & !\B3|q_reg_green[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(4),
	datad => VCC,
	cin => \B3|q_reg_green[3]~13\,
	combout => \B3|q_reg_green[4]~14_combout\,
	cout => \B3|q_reg_green[4]~15\);

-- Location: FF_X71_Y46_N19
\B3|q_reg_green[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[4]~14_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(4));

-- Location: LCCOMB_X71_Y46_N20
\B3|q_reg_green[5]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B3|q_reg_green[5]~16_combout\ = \B3|q_reg_green[4]~15\ $ (\B3|q_reg_green\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B3|q_reg_green\(5),
	cin => \B3|q_reg_green[4]~15\,
	combout => \B3|q_reg_green[5]~16_combout\);

-- Location: FF_X71_Y46_N21
\B3|q_reg_green[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \B3|q_reg_green[5]~16_combout\,
	clrn => \B2|ALT_INV_q~0_combout\,
	sclr => \B3|LessThan0~0_combout\,
	ena => \B1|clk_o_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B3|q_reg_green\(5));

-- Location: LCCOMB_X75_Y42_N30
\B10|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux3~1_combout\ = (\B3|q_reg_green\(3) & (!\B3|q_reg_green\(5) & (!\B3|q_reg_green\(2) & !\B3|q_reg_green\(1)))) # (!\B3|q_reg_green\(3) & (\B3|q_reg_green\(5) & (\B3|q_reg_green\(2) & \B3|q_reg_green\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux3~1_combout\);

-- Location: LCCOMB_X75_Y42_N16
\B10|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux3~0_combout\ = (\B3|q_reg_green\(3) & ((\B3|q_reg_green\(5) & (!\B3|q_reg_green\(2) & \B3|q_reg_green\(1))) # (!\B3|q_reg_green\(5) & (\B3|q_reg_green\(2) & !\B3|q_reg_green\(1))))) # (!\B3|q_reg_green\(3) & (!\B3|q_reg_green\(2) & 
-- (\B3|q_reg_green\(5) $ (\B3|q_reg_green\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y42_N20
\B10|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux3~2_combout\ = (\B3|q_reg_green\(4) & ((\B10|Mux3~0_combout\))) # (!\B3|q_reg_green\(4) & (\B10|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(4),
	datac => \B10|Mux3~1_combout\,
	datad => \B10|Mux3~0_combout\,
	combout => \B10|Mux3~2_combout\);

-- Location: LCCOMB_X75_Y42_N12
\B10|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux4~1_combout\ = (\B3|q_reg_green\(3) & ((\B3|q_reg_green\(2)) # ((\B3|q_reg_green\(5) & \B3|q_reg_green\(1))))) # (!\B3|q_reg_green\(3) & ((\B3|q_reg_green\(5) & ((!\B3|q_reg_green\(1)) # (!\B3|q_reg_green\(2)))) # (!\B3|q_reg_green\(5) & 
-- ((\B3|q_reg_green\(2)) # (\B3|q_reg_green\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux4~1_combout\);

-- Location: LCCOMB_X75_Y42_N10
\B10|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux4~0_combout\ = (\B3|q_reg_green\(3) & (\B3|q_reg_green\(2) & ((\B3|q_reg_green\(5)) # (\B3|q_reg_green\(1))))) # (!\B3|q_reg_green\(3) & (\B3|q_reg_green\(2) $ (((\B3|q_reg_green\(5) & \B3|q_reg_green\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y42_N26
\B10|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux4~2_combout\ = (\B3|q_reg_green\(4) & (!\B10|Mux4~1_combout\)) # (!\B3|q_reg_green\(4) & ((\B10|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B10|Mux4~1_combout\,
	datab => \B3|q_reg_green\(4),
	datad => \B10|Mux4~0_combout\,
	combout => \B10|Mux4~2_combout\);

-- Location: LCCOMB_X75_Y42_N8
\B10|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux5~0_combout\ = (\B3|q_reg_green\(3) & ((\B3|q_reg_green\(4) & (!\B3|q_reg_green\(2) & \B3|q_reg_green\(1))) # (!\B3|q_reg_green\(4) & (\B3|q_reg_green\(2) & !\B3|q_reg_green\(1))))) # (!\B3|q_reg_green\(3) & (\B3|q_reg_green\(1) $ 
-- (((\B3|q_reg_green\(4) & !\B3|q_reg_green\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(4),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y42_N6
\B10|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux5~1_combout\ = (\B3|q_reg_green\(3) & (\B3|q_reg_green\(1) $ (((\B3|q_reg_green\(2)) # (!\B3|q_reg_green\(4)))))) # (!\B3|q_reg_green\(3) & ((\B3|q_reg_green\(1)) # ((\B3|q_reg_green\(4) & !\B3|q_reg_green\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(3),
	datab => \B3|q_reg_green\(4),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B10|Mux5~1_combout\);

-- Location: LCCOMB_X75_Y42_N0
\B10|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux5~2_combout\ = (\B3|q_reg_green\(5) & ((!\B10|Mux5~1_combout\))) # (!\B3|q_reg_green\(5) & (\B10|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(5),
	datac => \B10|Mux5~0_combout\,
	datad => \B10|Mux5~1_combout\,
	combout => \B10|Mux5~2_combout\);

-- Location: LCCOMB_X75_Y42_N18
\B12|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux6~0_combout\ = (\B10|Mux3~2_combout\ & (\B3|q_reg_green\(0) & (\B10|Mux4~2_combout\ $ (\B10|Mux5~2_combout\)))) # (!\B10|Mux3~2_combout\ & (!\B10|Mux5~2_combout\ & (\B3|q_reg_green\(0) $ (\B10|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y42_N28
\B12|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux5~0_combout\ = (\B10|Mux3~2_combout\ & ((\B3|q_reg_green\(0) & ((\B10|Mux5~2_combout\))) # (!\B3|q_reg_green\(0) & (\B10|Mux4~2_combout\)))) # (!\B10|Mux3~2_combout\ & (\B10|Mux4~2_combout\ & (\B3|q_reg_green\(0) $ (\B10|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux5~0_combout\);

-- Location: LCCOMB_X75_Y42_N14
\B12|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux4~0_combout\ = (\B10|Mux3~2_combout\ & (\B10|Mux4~2_combout\ & ((\B10|Mux5~2_combout\) # (!\B3|q_reg_green\(0))))) # (!\B10|Mux3~2_combout\ & (!\B3|q_reg_green\(0) & (!\B10|Mux4~2_combout\ & \B10|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y42_N24
\B12|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux3~0_combout\ = (\B10|Mux5~2_combout\ & ((\B3|q_reg_green\(0) & ((\B10|Mux4~2_combout\))) # (!\B3|q_reg_green\(0) & (\B10|Mux3~2_combout\ & !\B10|Mux4~2_combout\)))) # (!\B10|Mux5~2_combout\ & (!\B10|Mux3~2_combout\ & (\B3|q_reg_green\(0) $ 
-- (\B10|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux3~0_combout\);

-- Location: LCCOMB_X75_Y42_N2
\B12|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux2~0_combout\ = (\B10|Mux5~2_combout\ & (\B3|q_reg_green\(0) & (!\B10|Mux3~2_combout\))) # (!\B10|Mux5~2_combout\ & ((\B10|Mux4~2_combout\ & ((!\B10|Mux3~2_combout\))) # (!\B10|Mux4~2_combout\ & (\B3|q_reg_green\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux2~0_combout\);

-- Location: LCCOMB_X75_Y42_N4
\B12|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux1~0_combout\ = (\B3|q_reg_green\(0) & (\B10|Mux3~2_combout\ $ (((\B10|Mux5~2_combout\) # (!\B10|Mux4~2_combout\))))) # (!\B3|q_reg_green\(0) & (!\B10|Mux3~2_combout\ & (!\B10|Mux4~2_combout\ & \B10|Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux1~0_combout\);

-- Location: LCCOMB_X75_Y42_N22
\B12|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B12|Mux0~0_combout\ = (\B3|q_reg_green\(0) & ((\B10|Mux3~2_combout\) # (\B10|Mux4~2_combout\ $ (\B10|Mux5~2_combout\)))) # (!\B3|q_reg_green\(0) & ((\B10|Mux5~2_combout\) # (\B10|Mux3~2_combout\ $ (\B10|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(0),
	datab => \B10|Mux3~2_combout\,
	datac => \B10|Mux4~2_combout\,
	datad => \B10|Mux5~2_combout\,
	combout => \B12|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y46_N30
\B10|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux0~0_combout\ = ((!\B3|q_reg_green\(4) & !\B3|q_reg_green\(3))) # (!\B3|q_reg_green\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(4),
	datad => \B3|q_reg_green\(3),
	combout => \B10|Mux0~0_combout\);

-- Location: LCCOMB_X71_Y46_N6
\B10|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux2~1_combout\ = (\B3|q_reg_green\(3) & (((\B3|q_reg_green\(2)) # (!\B3|q_reg_green\(4))))) # (!\B3|q_reg_green\(3) & (!\B3|q_reg_green\(1) & (!\B3|q_reg_green\(2) & \B3|q_reg_green\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(1),
	datab => \B3|q_reg_green\(3),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(4),
	combout => \B10|Mux2~1_combout\);

-- Location: LCCOMB_X71_Y46_N4
\B10|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux2~0_combout\ = (\B3|q_reg_green\(3) & ((\B3|q_reg_green\(1) & ((\B3|q_reg_green\(2)) # (!\B3|q_reg_green\(4)))) # (!\B3|q_reg_green\(1) & (\B3|q_reg_green\(2) & !\B3|q_reg_green\(4))))) # (!\B3|q_reg_green\(3) & (((!\B3|q_reg_green\(2) & 
-- \B3|q_reg_green\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(1),
	datab => \B3|q_reg_green\(3),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(4),
	combout => \B10|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y46_N0
\B10|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux2~2_combout\ = (\B3|q_reg_green\(5) & (!\B10|Mux2~1_combout\)) # (!\B3|q_reg_green\(5) & ((\B10|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B10|Mux2~1_combout\,
	datac => \B10|Mux2~0_combout\,
	datad => \B3|q_reg_green\(5),
	combout => \B10|Mux2~2_combout\);

-- Location: LCCOMB_X71_Y46_N28
\B10|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B10|Mux1~0_combout\ = (\B3|q_reg_green\(4) & ((\B3|q_reg_green\(5) & (\B3|q_reg_green\(2) & \B3|q_reg_green\(3))) # (!\B3|q_reg_green\(5) & ((\B3|q_reg_green\(2)) # (\B3|q_reg_green\(3)))))) # (!\B3|q_reg_green\(4) & (\B3|q_reg_green\(5) & 
-- ((!\B3|q_reg_green\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(4),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(3),
	combout => \B10|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y42_N16
\B11|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux6~0_combout\ = (\B10|Mux1~0_combout\) # (\B10|Mux0~0_combout\ $ (\B10|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B10|Mux0~0_combout\,
	datac => \B10|Mux2~2_combout\,
	datad => \B10|Mux1~0_combout\,
	combout => \B11|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y46_N24
\B11|Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux5~3_combout\ = (\B3|q_reg_green\(3)) # (\B3|q_reg_green\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(3),
	datad => \B3|q_reg_green\(1),
	combout => \B11|Mux5~3_combout\);

-- Location: LCCOMB_X71_Y46_N26
\B11|Mux5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux5~9_combout\ = (\B3|q_reg_green\(5) & (\B3|q_reg_green\(4) & ((\B11|Mux5~3_combout\) # (\B3|q_reg_green\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B11|Mux5~3_combout\,
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(4),
	combout => \B11|Mux5~9_combout\);

-- Location: LCCOMB_X71_Y46_N8
\B11|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux4~3_combout\ = (\B3|q_reg_green\(3) & ((!\B3|q_reg_green\(1)) # (!\B3|q_reg_green\(2)))) # (!\B3|q_reg_green\(3) & (\B3|q_reg_green\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(3),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(1),
	combout => \B11|Mux4~3_combout\);

-- Location: LCCOMB_X71_Y46_N2
\B11|Mux4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux4~6_combout\ = (!\B3|q_reg_green\(5) & (\B11|Mux4~3_combout\ & \B3|q_reg_green\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B3|q_reg_green\(5),
	datac => \B11|Mux4~3_combout\,
	datad => \B3|q_reg_green\(4),
	combout => \B11|Mux4~6_combout\);

-- Location: LCCOMB_X77_Y42_N6
\B11|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux3~0_combout\ = (\B10|Mux0~0_combout\ & (\B10|Mux2~2_combout\ & !\B10|Mux1~0_combout\)) # (!\B10|Mux0~0_combout\ & (\B10|Mux2~2_combout\ $ (!\B10|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B10|Mux0~0_combout\,
	datac => \B10|Mux2~2_combout\,
	datad => \B10|Mux1~0_combout\,
	combout => \B11|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y42_N12
\B11|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux2~0_combout\ = (\B10|Mux2~2_combout\) # ((!\B10|Mux0~0_combout\ & !\B10|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B10|Mux0~0_combout\,
	datac => \B10|Mux2~2_combout\,
	datad => \B10|Mux1~0_combout\,
	combout => \B11|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y42_N14
\B11|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux1~0_combout\ = (\B10|Mux0~0_combout\ & ((\B10|Mux2~2_combout\) # (\B10|Mux1~0_combout\))) # (!\B10|Mux0~0_combout\ & (\B10|Mux2~2_combout\ & \B10|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B10|Mux0~0_combout\,
	datac => \B10|Mux2~2_combout\,
	datad => \B10|Mux1~0_combout\,
	combout => \B11|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y46_N22
\B11|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \B11|Mux0~8_combout\ = (!\B3|q_reg_green\(5) & (((!\B3|q_reg_green\(2) & !\B3|q_reg_green\(3))) # (!\B3|q_reg_green\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B3|q_reg_green\(4),
	datab => \B3|q_reg_green\(5),
	datac => \B3|q_reg_green\(2),
	datad => \B3|q_reg_green\(3),
	combout => \B11|Mux0~8_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_red <= \red~output_o\;

ww_green <= \green~output_o\;

ww_u_7seg(0) <= \u_7seg[0]~output_o\;

ww_u_7seg(1) <= \u_7seg[1]~output_o\;

ww_u_7seg(2) <= \u_7seg[2]~output_o\;

ww_u_7seg(3) <= \u_7seg[3]~output_o\;

ww_u_7seg(4) <= \u_7seg[4]~output_o\;

ww_u_7seg(5) <= \u_7seg[5]~output_o\;

ww_u_7seg(6) <= \u_7seg[6]~output_o\;

ww_d_7seg(0) <= \d_7seg[0]~output_o\;

ww_d_7seg(1) <= \d_7seg[1]~output_o\;

ww_d_7seg(2) <= \d_7seg[2]~output_o\;

ww_d_7seg(3) <= \d_7seg[3]~output_o\;

ww_d_7seg(4) <= \d_7seg[4]~output_o\;

ww_d_7seg(5) <= \d_7seg[5]~output_o\;

ww_d_7seg(6) <= \d_7seg[6]~output_o\;

ww_u_7seg_red(0) <= \u_7seg_red[0]~output_o\;

ww_u_7seg_red(1) <= \u_7seg_red[1]~output_o\;

ww_u_7seg_red(2) <= \u_7seg_red[2]~output_o\;

ww_u_7seg_red(3) <= \u_7seg_red[3]~output_o\;

ww_u_7seg_red(4) <= \u_7seg_red[4]~output_o\;

ww_u_7seg_red(5) <= \u_7seg_red[5]~output_o\;

ww_u_7seg_red(6) <= \u_7seg_red[6]~output_o\;

ww_d_7seg_red(0) <= \d_7seg_red[0]~output_o\;

ww_d_7seg_red(1) <= \d_7seg_red[1]~output_o\;

ww_d_7seg_red(2) <= \d_7seg_red[2]~output_o\;

ww_d_7seg_red(3) <= \d_7seg_red[3]~output_o\;

ww_d_7seg_red(4) <= \d_7seg_red[4]~output_o\;

ww_d_7seg_red(5) <= \d_7seg_red[5]~output_o\;

ww_d_7seg_red(6) <= \d_7seg_red[6]~output_o\;

ww_u_7seg_green(0) <= \u_7seg_green[0]~output_o\;

ww_u_7seg_green(1) <= \u_7seg_green[1]~output_o\;

ww_u_7seg_green(2) <= \u_7seg_green[2]~output_o\;

ww_u_7seg_green(3) <= \u_7seg_green[3]~output_o\;

ww_u_7seg_green(4) <= \u_7seg_green[4]~output_o\;

ww_u_7seg_green(5) <= \u_7seg_green[5]~output_o\;

ww_u_7seg_green(6) <= \u_7seg_green[6]~output_o\;

ww_d_7seg_green(0) <= \d_7seg_green[0]~output_o\;

ww_d_7seg_green(1) <= \d_7seg_green[1]~output_o\;

ww_d_7seg_green(2) <= \d_7seg_green[2]~output_o\;

ww_d_7seg_green(3) <= \d_7seg_green[3]~output_o\;

ww_d_7seg_green(4) <= \d_7seg_green[4]~output_o\;

ww_d_7seg_green(5) <= \d_7seg_green[5]~output_o\;

ww_d_7seg_green(6) <= \d_7seg_green[6]~output_o\;
END structure;


