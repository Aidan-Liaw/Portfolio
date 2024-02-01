-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Jan 31 16:06:23 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_adc_to_axis_0_0_sim_netlist.vhdl
-- Design      : processing_system_adc_to_axis_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 19 downto 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    adc_clk : in STD_LOGIC;
    adc_rst_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis is
  signal \m_axis_tdata[25]_i_1_n_0\ : STD_LOGIC;
begin
\m_axis_tdata[25]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_rst_in,
      O => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(0),
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(10),
      Q => m_axis_tdata(10),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(11),
      Q => m_axis_tdata(11),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(12),
      Q => m_axis_tdata(12),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(13),
      Q => m_axis_tdata(13),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(1),
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(14),
      Q => m_axis_tdata(14),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(15),
      Q => m_axis_tdata(15),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(16),
      Q => m_axis_tdata(16),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(17),
      Q => m_axis_tdata(17),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(18),
      Q => m_axis_tdata(18),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(19),
      Q => m_axis_tdata(19),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(2),
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(3),
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(4),
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(5),
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(6),
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(7),
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(8),
      Q => m_axis_tdata(8),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(9),
      Q => m_axis_tdata(9),
      R => \m_axis_tdata[25]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : in STD_LOGIC;
    adc_clk_source : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_cdcs_out : out STD_LOGIC;
    adc_rst_in : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "processing_system_adc_to_axis_0_0,adc_to_axis,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_to_axis,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of adc_clk : signal is "XIL_INTERFACENAME adc_clk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_parameter of adc_rst_in : signal is "POLARITY ACTIVE_LOW";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  adc_cdcs_out <= \<const1>\;
  adc_clk_source(1) <= \<const1>\;
  adc_clk_source(0) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25 downto 16) <= \^m_axis_tdata\(25 downto 16);
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9 downto 0) <= \^m_axis_tdata\(9 downto 0);
  m_axis_tvalid <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis
     port map (
      D(19 downto 10) => adc_dat_a_in(13 downto 4),
      D(9 downto 0) => adc_dat_b_in(13 downto 4),
      adc_clk => adc_clk,
      adc_rst_in => adc_rst_in,
      m_axis_tdata(19 downto 10) => \^m_axis_tdata\(25 downto 16),
      m_axis_tdata(9 downto 0) => \^m_axis_tdata\(9 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
