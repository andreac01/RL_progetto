-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Sun May  7 16:49:21 2023
-- Host        : DESKTOP-63K1NV0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/andre/OneDrive/Desktop/Reti_logiche/RL_progetto/project_1/project_1.sim/sim_1/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_w : in STD_LOGIC;
    o_z0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_z3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_curr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal clr_addr : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal i_w_IBUF : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal \o_mem_addr[15]_i_1_n_0\ : STD_LOGIC;
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_mem_en_OBUF : STD_LOGIC;
  signal o_z0_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z1_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z2_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_z3_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal reg_addr0 : STD_LOGIC;
  signal \reg_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal reg_ch : STD_LOGIC_VECTOR ( 0 to 1 );
  signal reg_ch0 : STD_LOGIC;
  signal \reg_ch[0]_i_1_n_0\ : STD_LOGIC;
  signal reg_z0 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal reg_z00 : STD_LOGIC;
  signal reg_z1 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal reg_z10 : STD_LOGIC;
  signal reg_z2 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal reg_z20 : STD_LOGIC;
  signal reg_z3 : STD_LOGIC_VECTOR ( 0 to 7 );
  signal reg_z30 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "wait_start:000,get_channel:001,get_addr:010,ask_mem:011,write_out:100,enable_out:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "wait_start:000,get_channel:001,get_addr:010,ask_mem:011,write_out:100,enable_out:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[2]\ : label is "wait_start:000,get_channel:001,get_addr:010,ask_mem:011,write_out:100,enable_out:101,";
  attribute SOFT_HLUTNM of o_done_OBUF_inst_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_mem_en_OBUF_inst_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_z0_OBUF[0]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_z0_OBUF[1]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \o_z0_OBUF[2]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_z0_OBUF[3]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_z0_OBUF[4]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_z0_OBUF[5]_inst_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_z0_OBUF[6]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_z0_OBUF[7]_inst_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_z1_OBUF[0]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_z1_OBUF[1]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_z1_OBUF[2]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_z1_OBUF[3]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_z1_OBUF[4]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_z1_OBUF[5]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_z1_OBUF[6]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_z1_OBUF[7]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_z2_OBUF[0]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_z2_OBUF[1]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_z2_OBUF[2]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_z2_OBUF[3]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_z2_OBUF[4]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_z2_OBUF[5]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_z2_OBUF[6]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_z2_OBUF[7]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_z3_OBUF[0]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_z3_OBUF[1]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_z3_OBUF[2]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_z3_OBUF[3]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_z3_OBUF[4]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_z3_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_z3_OBUF[6]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_z3_OBUF[7]_inst_i_1\ : label is "soft_lutpair0";
begin
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      I2 => curr_state(0),
      O => \FSM_sequential_curr_state[0]_i_1_n_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \FSM_sequential_curr_state[1]_i_1_n_0\
    );
\FSM_sequential_curr_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F56"
    )
        port map (
      I0 => curr_state(1),
      I1 => i_start_IBUF,
      I2 => curr_state(2),
      I3 => curr_state(0),
      O => \FSM_sequential_curr_state[2]_i_1_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_curr_state[0]_i_1_n_0\,
      Q => curr_state(0)
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_curr_state[1]_i_1_n_0\,
      Q => curr_state(1)
    );
\FSM_sequential_curr_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_curr_state[2]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => o_mem_en_OBUF,
      Q => curr_state(2)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_start,
      O => i_start_IBUF
    );
i_w_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => i_w,
      O => i_w_IBUF
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => o_done_OBUF
    );
\o_mem_addr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      O => \o_mem_addr[15]_i_1_n_0\
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
\o_mem_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(1),
      Q => o_mem_addr_OBUF(0),
      R => '0'
    );
\o_mem_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(11),
      Q => o_mem_addr_OBUF(10),
      R => '0'
    );
\o_mem_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(12),
      Q => o_mem_addr_OBUF(11),
      R => '0'
    );
\o_mem_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(13),
      Q => o_mem_addr_OBUF(12),
      R => '0'
    );
\o_mem_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(14),
      Q => o_mem_addr_OBUF(13),
      R => '0'
    );
\o_mem_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(15),
      Q => o_mem_addr_OBUF(14),
      R => '0'
    );
\o_mem_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => \reg_addr_reg_n_0_[0]\,
      Q => o_mem_addr_OBUF(15),
      R => '0'
    );
\o_mem_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(2),
      Q => o_mem_addr_OBUF(1),
      R => '0'
    );
\o_mem_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(3),
      Q => o_mem_addr_OBUF(2),
      R => '0'
    );
\o_mem_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(4),
      Q => o_mem_addr_OBUF(3),
      R => '0'
    );
\o_mem_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(5),
      Q => o_mem_addr_OBUF(4),
      R => '0'
    );
\o_mem_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(6),
      Q => o_mem_addr_OBUF(5),
      R => '0'
    );
\o_mem_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(7),
      Q => o_mem_addr_OBUF(6),
      R => '0'
    );
\o_mem_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(8),
      Q => o_mem_addr_OBUF(7),
      R => '0'
    );
\o_mem_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(9),
      Q => o_mem_addr_OBUF(8),
      R => '0'
    );
\o_mem_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \o_mem_addr[15]_i_1_n_0\,
      D => p_0_out(10),
      Q => o_mem_addr_OBUF(9),
      R => '0'
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(2),
      I2 => curr_state(1),
      O => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_mem_we
    );
\o_z0_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(0),
      O => o_z0(0)
    );
\o_z0_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(7),
      O => o_z0_OBUF(0)
    );
\o_z0_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(1),
      O => o_z0(1)
    );
\o_z0_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(6),
      O => o_z0_OBUF(1)
    );
\o_z0_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(2),
      O => o_z0(2)
    );
\o_z0_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(5),
      O => o_z0_OBUF(2)
    );
\o_z0_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(3),
      O => o_z0(3)
    );
\o_z0_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(4),
      O => o_z0_OBUF(3)
    );
\o_z0_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(4),
      O => o_z0(4)
    );
\o_z0_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(3),
      O => o_z0_OBUF(4)
    );
\o_z0_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(5),
      O => o_z0(5)
    );
\o_z0_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(2),
      O => o_z0_OBUF(5)
    );
\o_z0_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(6),
      O => o_z0(6)
    );
\o_z0_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(1),
      O => o_z0_OBUF(6)
    );
\o_z0_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z0_OBUF(7),
      O => o_z0(7)
    );
\o_z0_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z0(0),
      O => o_z0_OBUF(7)
    );
\o_z1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(0),
      O => o_z1(0)
    );
\o_z1_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(7),
      O => o_z1_OBUF(0)
    );
\o_z1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(1),
      O => o_z1(1)
    );
\o_z1_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(6),
      O => o_z1_OBUF(1)
    );
\o_z1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(2),
      O => o_z1(2)
    );
\o_z1_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(5),
      O => o_z1_OBUF(2)
    );
\o_z1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(3),
      O => o_z1(3)
    );
\o_z1_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(4),
      O => o_z1_OBUF(3)
    );
\o_z1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(4),
      O => o_z1(4)
    );
\o_z1_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(3),
      O => o_z1_OBUF(4)
    );
\o_z1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(5),
      O => o_z1(5)
    );
\o_z1_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(2),
      O => o_z1_OBUF(5)
    );
\o_z1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(6),
      O => o_z1(6)
    );
\o_z1_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(1),
      O => o_z1_OBUF(6)
    );
\o_z1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z1_OBUF(7),
      O => o_z1(7)
    );
\o_z1_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z1(0),
      O => o_z1_OBUF(7)
    );
\o_z2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(0),
      O => o_z2(0)
    );
\o_z2_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(7),
      O => o_z2_OBUF(0)
    );
\o_z2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(1),
      O => o_z2(1)
    );
\o_z2_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(6),
      O => o_z2_OBUF(1)
    );
\o_z2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(2),
      O => o_z2(2)
    );
\o_z2_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(5),
      O => o_z2_OBUF(2)
    );
\o_z2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(3),
      O => o_z2(3)
    );
\o_z2_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(4),
      O => o_z2_OBUF(3)
    );
\o_z2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(4),
      O => o_z2(4)
    );
\o_z2_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(3),
      O => o_z2_OBUF(4)
    );
\o_z2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(5),
      O => o_z2(5)
    );
\o_z2_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(2),
      O => o_z2_OBUF(5)
    );
\o_z2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(6),
      O => o_z2(6)
    );
\o_z2_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(1),
      O => o_z2_OBUF(6)
    );
\o_z2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z2_OBUF(7),
      O => o_z2(7)
    );
\o_z2_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z2(0),
      O => o_z2_OBUF(7)
    );
\o_z3_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(0),
      O => o_z3(0)
    );
\o_z3_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(7),
      O => o_z3_OBUF(0)
    );
\o_z3_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(1),
      O => o_z3(1)
    );
\o_z3_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(6),
      O => o_z3_OBUF(1)
    );
\o_z3_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(2),
      O => o_z3(2)
    );
\o_z3_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(5),
      O => o_z3_OBUF(2)
    );
\o_z3_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(3),
      O => o_z3(3)
    );
\o_z3_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(4),
      O => o_z3_OBUF(3)
    );
\o_z3_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(4),
      O => o_z3(4)
    );
\o_z3_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(3),
      O => o_z3_OBUF(4)
    );
\o_z3_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(5),
      O => o_z3(5)
    );
\o_z3_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(2),
      O => o_z3_OBUF(5)
    );
\o_z3_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(6),
      O => o_z3(6)
    );
\o_z3_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(1),
      O => o_z3_OBUF(6)
    );
\o_z3_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_z3_OBUF(7),
      O => o_z3(7)
    );
\o_z3_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => reg_z3(0),
      O => o_z3_OBUF(7)
    );
\reg_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => curr_state(1),
      O => clr_addr
    );
\reg_addr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(0),
      I2 => i_start_IBUF,
      O => reg_addr0
    );
\reg_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(15),
      Q => \reg_addr_reg_n_0_[0]\,
      R => clr_addr
    );
\reg_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(5),
      Q => p_0_out(6),
      R => clr_addr
    );
\reg_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(4),
      Q => p_0_out(5),
      R => clr_addr
    );
\reg_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(3),
      Q => p_0_out(4),
      R => clr_addr
    );
\reg_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(2),
      Q => p_0_out(3),
      R => clr_addr
    );
\reg_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(1),
      Q => p_0_out(2),
      R => clr_addr
    );
\reg_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => i_w_IBUF,
      Q => p_0_out(1),
      R => clr_addr
    );
\reg_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(14),
      Q => p_0_out(15),
      R => clr_addr
    );
\reg_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(13),
      Q => p_0_out(14),
      R => clr_addr
    );
\reg_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(12),
      Q => p_0_out(13),
      R => clr_addr
    );
\reg_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(11),
      Q => p_0_out(12),
      R => clr_addr
    );
\reg_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(10),
      Q => p_0_out(11),
      R => clr_addr
    );
\reg_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(9),
      Q => p_0_out(10),
      R => clr_addr
    );
\reg_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(8),
      Q => p_0_out(9),
      R => clr_addr
    );
\reg_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(7),
      Q => p_0_out(8),
      R => clr_addr
    );
\reg_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_addr0,
      D => p_0_out(6),
      Q => p_0_out(7),
      R => clr_addr
    );
\reg_ch[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => reg_ch(1),
      I1 => curr_state(2),
      I2 => curr_state(1),
      I3 => i_start_IBUF,
      I4 => reg_ch(0),
      O => \reg_ch[0]_i_1_n_0\
    );
\reg_ch[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => curr_state(2),
      I1 => curr_state(1),
      I2 => i_start_IBUF,
      O => reg_ch0
    );
\reg_ch_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      D => \reg_ch[0]_i_1_n_0\,
      Q => reg_ch(0),
      R => '0'
    );
\reg_ch_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_ch0,
      D => i_w_IBUF,
      Q => reg_ch(1),
      R => '0'
    );
\reg_z0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => reg_ch(1),
      I4 => reg_ch(0),
      O => reg_z00
    );
\reg_z0_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(7),
      Q => reg_z0(0)
    );
\reg_z0_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(6),
      Q => reg_z0(1)
    );
\reg_z0_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(5),
      Q => reg_z0(2)
    );
\reg_z0_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(4),
      Q => reg_z0(3)
    );
\reg_z0_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(3),
      Q => reg_z0(4)
    );
\reg_z0_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(2),
      Q => reg_z0(5)
    );
\reg_z0_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(1),
      Q => reg_z0(6)
    );
\reg_z0_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z00,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(0),
      Q => reg_z0(7)
    );
\reg_z1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => reg_ch(0),
      I4 => reg_ch(1),
      O => reg_z10
    );
\reg_z1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(7),
      Q => reg_z1(0)
    );
\reg_z1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(6),
      Q => reg_z1(1)
    );
\reg_z1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(5),
      Q => reg_z1(2)
    );
\reg_z1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(4),
      Q => reg_z1(3)
    );
\reg_z1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(3),
      Q => reg_z1(4)
    );
\reg_z1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(2),
      Q => reg_z1(5)
    );
\reg_z1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(1),
      Q => reg_z1(6)
    );
\reg_z1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z10,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(0),
      Q => reg_z1(7)
    );
\reg_z2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => reg_ch(1),
      I4 => reg_ch(0),
      O => reg_z20
    );
\reg_z2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(7),
      Q => reg_z2(0)
    );
\reg_z2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(6),
      Q => reg_z2(1)
    );
\reg_z2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(5),
      Q => reg_z2(2)
    );
\reg_z2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(4),
      Q => reg_z2(3)
    );
\reg_z2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(3),
      Q => reg_z2(4)
    );
\reg_z2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(2),
      Q => reg_z2(5)
    );
\reg_z2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(1),
      Q => reg_z2(6)
    );
\reg_z2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z20,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(0),
      Q => reg_z2(7)
    );
\reg_z3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => curr_state(2),
      I3 => reg_ch(1),
      I4 => reg_ch(0),
      O => reg_z30
    );
\reg_z3_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(7),
      Q => reg_z3(0)
    );
\reg_z3_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(6),
      Q => reg_z3(1)
    );
\reg_z3_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(5),
      Q => reg_z3(2)
    );
\reg_z3_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(4),
      Q => reg_z3(3)
    );
\reg_z3_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(3),
      Q => reg_z3(4)
    );
\reg_z3_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(2),
      Q => reg_z3(5)
    );
\reg_z3_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(1),
      Q => reg_z3(6)
    );
\reg_z3_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => reg_z30,
      CLR => i_rst_IBUF,
      D => i_mem_data_IBUF(0),
      Q => reg_z3(7)
    );
end STRUCTURE;
