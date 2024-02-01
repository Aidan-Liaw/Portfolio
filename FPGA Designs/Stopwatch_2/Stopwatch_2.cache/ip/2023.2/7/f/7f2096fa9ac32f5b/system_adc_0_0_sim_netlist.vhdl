-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan 30 17:15:08 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_0_0_sim_netlist.vhdl
-- Design      : system_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  port (
    adc_dat_a_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_p_in : in STD_LOGIC;
    adc_clk_n_in : in STD_LOGIC;
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_in : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc is
  signal adc_clk : STD_LOGIC;
  signal NLW_BUFG_inst_O_UNCONNECTED : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of BUFG_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_inst : label is "AUTO";
  attribute box_type of IBUFDS_inst : label is "PRIMITIVE";
begin
BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => adc_clk,
      O => NLW_BUFG_inst_O_UNCONNECTED
    );
IBUFDS_inst: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p_in,
      IB => adc_clk_n_in,
      O => adc_clk
    );
\adc_dat_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(0),
      Q => adc_dat_a_out(0),
      R => '0'
    );
\adc_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(10),
      Q => adc_dat_a_out(10),
      R => '0'
    );
\adc_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(11),
      Q => adc_dat_a_out(11),
      R => '0'
    );
\adc_dat_a_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(12),
      Q => adc_dat_a_out(12),
      R => '0'
    );
\adc_dat_a_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(13),
      Q => adc_dat_a_out(13),
      R => '0'
    );
\adc_dat_a_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(1),
      Q => adc_dat_a_out(1),
      R => '0'
    );
\adc_dat_a_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(2),
      Q => adc_dat_a_out(2),
      R => '0'
    );
\adc_dat_a_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(3),
      Q => adc_dat_a_out(3),
      R => '0'
    );
\adc_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(4),
      Q => adc_dat_a_out(4),
      R => '0'
    );
\adc_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(5),
      Q => adc_dat_a_out(5),
      R => '0'
    );
\adc_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(6),
      Q => adc_dat_a_out(6),
      R => '0'
    );
\adc_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(7),
      Q => adc_dat_a_out(7),
      R => '0'
    );
\adc_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(8),
      Q => adc_dat_a_out(8),
      R => '0'
    );
\adc_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_a_in(9),
      Q => adc_dat_a_out(9),
      R => '0'
    );
\adc_dat_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(0),
      Q => adc_dat_b_out(0),
      R => '0'
    );
\adc_dat_b_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(10),
      Q => adc_dat_b_out(10),
      R => '0'
    );
\adc_dat_b_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(11),
      Q => adc_dat_b_out(11),
      R => '0'
    );
\adc_dat_b_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(12),
      Q => adc_dat_b_out(12),
      R => '0'
    );
\adc_dat_b_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(13),
      Q => adc_dat_b_out(13),
      R => '0'
    );
\adc_dat_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(1),
      Q => adc_dat_b_out(1),
      R => '0'
    );
\adc_dat_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(2),
      Q => adc_dat_b_out(2),
      R => '0'
    );
\adc_dat_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(3),
      Q => adc_dat_b_out(3),
      R => '0'
    );
\adc_dat_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(4),
      Q => adc_dat_b_out(4),
      R => '0'
    );
\adc_dat_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(5),
      Q => adc_dat_b_out(5),
      R => '0'
    );
\adc_dat_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(6),
      Q => adc_dat_b_out(6),
      R => '0'
    );
\adc_dat_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(7),
      Q => adc_dat_b_out(7),
      R => '0'
    );
\adc_dat_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(8),
      Q => adc_dat_b_out(8),
      R => '0'
    );
\adc_dat_b_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => adc_dat_b_in(9),
      Q => adc_dat_b_out(9),
      R => '0'
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
    adc_clk_p_in : in STD_LOGIC;
    adc_clk_n_in : in STD_LOGIC;
    adc_clk_source : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_cdcs_out : out STD_LOGIC;
    adc_dat_a_out : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_out : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_adc_0_0,adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  adc_cdcs_out <= \<const1>\;
  adc_clk_source(1) <= \<const1>\;
  adc_clk_source(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
     port map (
      adc_clk_n_in => adc_clk_n_in,
      adc_clk_p_in => adc_clk_p_in,
      adc_dat_a_in(13 downto 0) => adc_dat_a_in(13 downto 0),
      adc_dat_a_out(13 downto 0) => adc_dat_a_out(13 downto 0),
      adc_dat_b_in(13 downto 0) => adc_dat_b_in(13 downto 0),
      adc_dat_b_out(13 downto 0) => adc_dat_b_out(13 downto 0)
    );
end STRUCTURE;
