-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan 30 10:25:34 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/aidan/Portfolio/FPGA
--               Designs/freq_modified/freq_modified.gen/sources_1/bd/system/ip/system_modified_adc_0_0/system_modified_adc_0_0_sim_netlist.vhdl}
-- Design      : system_modified_adc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_modified_adc_0_0_modified_adc is
  port (
    adc_clk : out STD_LOGIC;
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_modified_adc_0_0_modified_adc : entity is "modified_adc";
end system_modified_adc_0_0_modified_adc;

architecture STRUCTURE of system_modified_adc_0_0_modified_adc is
  signal \^adc_clk\ : STD_LOGIC;
  signal int_clk0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 12 downto 6 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of adc_clk_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of adc_clk_inst0 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of adc_clk_inst0 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of adc_clk_inst0 : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of adc_clk_inst0 : label is "IBUFGDS";
begin
  adc_clk <= \^adc_clk\;
adc_clk_inst: unisim.vcomponents.BUFG
     port map (
      I => int_clk0,
      O => \^adc_clk\
    );
adc_clk_inst0: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p,
      IB => adc_clk_n,
      O => int_clk0
    );
\int_dat_a_reg[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(4),
      O => p_0_out(10)
    );
\int_dat_a_reg[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(5),
      O => p_0_out(11)
    );
\int_dat_a_reg[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(6),
      O => p_0_out(12)
    );
\int_dat_a_reg[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(0),
      O => p_0_out(6)
    );
\int_dat_a_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(1),
      O => p_0_out(7)
    );
\int_dat_a_reg[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(2),
      O => p_0_out(8)
    );
\int_dat_a_reg[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_dat_a(3),
      O => p_0_out(9)
    );
\int_dat_a_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(10),
      Q => led_o(4),
      R => '0'
    );
\int_dat_a_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(11),
      Q => led_o(5),
      R => '0'
    );
\int_dat_a_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(12),
      Q => led_o(6),
      R => '0'
    );
\int_dat_a_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => adc_dat_a(7),
      Q => led_o(7),
      R => '0'
    );
\int_dat_a_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(6),
      Q => led_o(0),
      R => '0'
    );
\int_dat_a_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(7),
      Q => led_o(1),
      R => '0'
    );
\int_dat_a_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(8),
      Q => led_o(2),
      R => '0'
    );
\int_dat_a_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => p_0_out(9),
      Q => led_o(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_modified_adc_0_0 is
  port (
    adc_clk : out STD_LOGIC;
    adc_csn : out STD_LOGIC;
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_modified_adc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_modified_adc_0_0 : entity is "system_modified_adc_0_0,modified_adc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_modified_adc_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_modified_adc_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_modified_adc_0_0 : entity is "modified_adc,Vivado 2023.2";
end system_modified_adc_0_0;

architecture STRUCTURE of system_modified_adc_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_modified_adc_0_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_n : signal is "xilinx.com:signal:clock:1.0 adc_clk_n CLK";
  attribute X_INTERFACE_PARAMETER of adc_clk_n : signal is "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_p : signal is "xilinx.com:signal:clock:1.0 adc_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of adc_clk_p : signal is "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  adc_csn <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.system_modified_adc_0_0_modified_adc
     port map (
      adc_clk => adc_clk,
      adc_clk_n => adc_clk_n,
      adc_clk_p => adc_clk_p,
      adc_dat_a(7 downto 0) => adc_dat_a(13 downto 6),
      led_o(7 downto 0) => led_o(7 downto 0)
    );
end STRUCTURE;
