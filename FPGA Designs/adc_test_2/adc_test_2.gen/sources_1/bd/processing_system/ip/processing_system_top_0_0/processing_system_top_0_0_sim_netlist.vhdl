-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan 30 10:57:14 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/aidan/Portfolio/FPGA
--               Designs/adc_test_2/adc_test_2.gen/sources_1/bd/processing_system/ip/processing_system_top_0_0/processing_system_top_0_0_sim_netlist.vhdl}
-- Design      : processing_system_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processing_system_top_0_0_adc is
  port (
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processing_system_top_0_0_adc : entity is "adc";
end processing_system_top_0_0_adc;

architecture STRUCTURE of processing_system_top_0_0_adc is
  signal \adc_dat_a[10]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[11]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[4]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[5]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[6]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[7]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[8]_i_1_n_0\ : STD_LOGIC;
  signal \adc_dat_a[9]_i_1_n_0\ : STD_LOGIC;
begin
\adc_dat_a[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(6),
      O => \adc_dat_a[10]_i_1_n_0\
    );
\adc_dat_a[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(7),
      O => \adc_dat_a[11]_i_1_n_0\
    );
\adc_dat_a[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(0),
      O => \adc_dat_a[4]_i_1_n_0\
    );
\adc_dat_a[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(1),
      O => \adc_dat_a[5]_i_1_n_0\
    );
\adc_dat_a[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(2),
      O => \adc_dat_a[6]_i_1_n_0\
    );
\adc_dat_a[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(3),
      O => \adc_dat_a[7]_i_1_n_0\
    );
\adc_dat_a[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(4),
      O => \adc_dat_a[8]_i_1_n_0\
    );
\adc_dat_a[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a_in(5),
      O => \adc_dat_a[9]_i_1_n_0\
    );
\adc_dat_a_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[10]_i_1_n_0\,
      Q => led_out(6),
      R => '0'
    );
\adc_dat_a_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[11]_i_1_n_0\,
      Q => led_out(7),
      R => '0'
    );
\adc_dat_a_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[4]_i_1_n_0\,
      Q => led_out(0),
      R => '0'
    );
\adc_dat_a_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[5]_i_1_n_0\,
      Q => led_out(1),
      R => '0'
    );
\adc_dat_a_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[6]_i_1_n_0\,
      Q => led_out(2),
      R => '0'
    );
\adc_dat_a_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[7]_i_1_n_0\,
      Q => led_out(3),
      R => '0'
    );
\adc_dat_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[8]_i_1_n_0\,
      Q => led_out(4),
      R => '0'
    );
\adc_dat_a_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \adc_dat_a[9]_i_1_n_0\,
      Q => led_out(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processing_system_top_0_0_top is
  port (
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    adc_clk_p_in : in STD_LOGIC;
    adc_clk_n_in : in STD_LOGIC;
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processing_system_top_0_0_top : entity is "top";
end processing_system_top_0_0_top;

architecture STRUCTURE of processing_system_top_0_0_top is
  signal adc_clk : STD_LOGIC;
  signal adc_clk_buffered : STD_LOGIC;
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
      O => adc_clk_buffered
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
UUT0: entity work.processing_system_top_0_0_adc
     port map (
      CLK => adc_clk_buffered,
      adc_dat_a_in(7 downto 0) => adc_dat_a_in(7 downto 0),
      led_out(7 downto 0) => led_out(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processing_system_top_0_0 is
  port (
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk_p_in : in STD_LOGIC;
    adc_clk_n_in : in STD_LOGIC;
    adc_clk_source : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_cdcs_out : out STD_LOGIC;
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processing_system_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processing_system_top_0_0 : entity is "processing_system_top_0_0,top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processing_system_top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processing_system_top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processing_system_top_0_0 : entity is "top,Vivado 2023.2";
end processing_system_top_0_0;

architecture STRUCTURE of processing_system_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of adc_clk_n_in : signal is "digilentinc.com:interface:tmds:1.0 adc_in CLK_N";
  attribute x_interface_info of adc_clk_p_in : signal is "digilentinc.com:interface:tmds:1.0 adc_in CLK_P";
begin
  adc_cdcs_out <= \<const1>\;
  adc_clk_source(1) <= \<const1>\;
  adc_clk_source(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.processing_system_top_0_0_top
     port map (
      adc_clk_n_in => adc_clk_n_in,
      adc_clk_p_in => adc_clk_p_in,
      adc_dat_a_in(7 downto 0) => adc_dat_a_in(11 downto 4),
      led_out(7 downto 0) => led_out(7 downto 0)
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
