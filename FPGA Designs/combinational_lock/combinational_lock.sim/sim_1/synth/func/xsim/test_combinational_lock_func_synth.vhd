-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Aug 18 09:28:48 2023
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/aidan/csse4010_assesment_2/csse4010_assesment_2.sim/sim_1/synth/func/xsim/test_combinational_lock_func_synth.vhd
-- Design      : combinational_lock
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity button_mechanisim is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    register_1_on_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    button_2_IBUF : in STD_LOGIC;
    button_1_IBUF : in STD_LOGIC
  );
end button_mechanisim;

architecture STRUCTURE of button_mechanisim is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal choose_register1_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \/i_\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of register_1_on_i_1 : label is "soft_lutpair20";
begin
  E(0) <= \^e\(0);
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => \^e\(0),
      I1 => button_2_IBUF,
      I2 => button_1_IBUF,
      O => choose_register1_out
    );
choose_register_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => choose_register1_out,
      Q => \^e\(0),
      R => '0'
    );
register_1_on_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2B"
    )
        port map (
      I0 => button_1_IBUF,
      I1 => button_2_IBUF,
      I2 => \^e\(0),
      O => p_0_in
    );
register_1_on_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_0_in,
      Q => register_1_on_reg_0(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_to_ssd is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    \ssd_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end hex_to_ssd;

architecture STRUCTURE of hex_to_ssd is
  signal \ssd_out_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[3]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[4]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[6]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[7]\ : label is "LDP";
begin
\ssd_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => button_reset_IBUF,
      D => D(0),
      G => '1',
      GE => '1',
      Q => Q(0)
    );
\ssd_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(1),
      G => '1',
      GE => '1',
      Q => Q(1)
    );
\ssd_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(2),
      G => '1',
      GE => '1',
      Q => Q(2)
    );
\ssd_out_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(3),
      G => '1',
      GE => '1',
      PRE => button_reset_IBUF,
      Q => Q(3)
    );
\ssd_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[4]_i_2_n_0\,
      D => D(4),
      G => '1',
      GE => '1',
      Q => Q(4)
    );
\ssd_out_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(3),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      O => \ssd_out_reg[4]_i_2_n_0\
    );
\ssd_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[5]_i_2_n_0\,
      D => D(5),
      G => '1',
      GE => '1',
      Q => Q(5)
    );
\ssd_out_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABBBF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(0),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[5]_i_2_n_0\
    );
\ssd_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(6),
      G => '1',
      GE => '1',
      Q => Q(6)
    );
\ssd_out_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(0),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[6]_i_2_n_0\
    );
\ssd_out_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(7),
      G => '1',
      GE => '1',
      PRE => \ssd_out_reg[7]_i_2_n_0\,
      Q => Q(7)
    );
\ssd_out_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(3),
      I4 => \ssd_out_reg[7]_0\(0),
      O => \ssd_out_reg[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_to_ssd_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    \ssd_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hex_to_ssd_3 : entity is "hex_to_ssd";
end hex_to_ssd_3;

architecture STRUCTURE of hex_to_ssd_3 is
  signal \ssd_out_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[3]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[4]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[6]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[7]\ : label is "LDP";
begin
\ssd_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => button_reset_IBUF,
      D => D(0),
      G => '1',
      GE => '1',
      Q => Q(0)
    );
\ssd_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(1),
      G => '1',
      GE => '1',
      Q => Q(1)
    );
\ssd_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(2),
      G => '1',
      GE => '1',
      Q => Q(2)
    );
\ssd_out_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(3),
      G => '1',
      GE => '1',
      PRE => button_reset_IBUF,
      Q => Q(3)
    );
\ssd_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[4]_i_2_n_0\,
      D => D(4),
      G => '1',
      GE => '1',
      Q => Q(4)
    );
\ssd_out_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(3),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      O => \ssd_out_reg[4]_i_2_n_0\
    );
\ssd_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[5]_i_2_n_0\,
      D => D(5),
      G => '1',
      GE => '1',
      Q => Q(5)
    );
\ssd_out_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABBBF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(0),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[5]_i_2_n_0\
    );
\ssd_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(6),
      G => '1',
      GE => '1',
      Q => Q(6)
    );
\ssd_out_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(0),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[6]_i_2_n_0\
    );
\ssd_out_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(7),
      G => '1',
      GE => '1',
      PRE => \ssd_out_reg[7]_i_2_n_0\,
      Q => Q(7)
    );
\ssd_out_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(3),
      I4 => \ssd_out_reg[7]_0\(0),
      O => \ssd_out_reg[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_to_ssd_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    \ssd_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hex_to_ssd_4 : entity is "hex_to_ssd";
end hex_to_ssd_4;

architecture STRUCTURE of hex_to_ssd_4 is
  signal \ssd_out_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[3]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[4]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[6]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[7]\ : label is "LDP";
begin
\ssd_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => button_reset_IBUF,
      D => D(0),
      G => '1',
      GE => '1',
      Q => Q(0)
    );
\ssd_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(1),
      G => '1',
      GE => '1',
      Q => Q(1)
    );
\ssd_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(2),
      G => '1',
      GE => '1',
      Q => Q(2)
    );
\ssd_out_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(3),
      G => '1',
      GE => '1',
      PRE => button_reset_IBUF,
      Q => Q(3)
    );
\ssd_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[4]_i_2_n_0\,
      D => D(4),
      G => '1',
      GE => '1',
      Q => Q(4)
    );
\ssd_out_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(3),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      O => \ssd_out_reg[4]_i_2_n_0\
    );
\ssd_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[5]_i_2_n_0\,
      D => D(5),
      G => '1',
      GE => '1',
      Q => Q(5)
    );
\ssd_out_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABBBF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(0),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[5]_i_2_n_0\
    );
\ssd_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(6),
      G => '1',
      GE => '1',
      Q => Q(6)
    );
\ssd_out_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(0),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[6]_i_2_n_0\
    );
\ssd_out_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(7),
      G => '1',
      GE => '1',
      PRE => \ssd_out_reg[7]_i_2_n_0\,
      Q => Q(7)
    );
\ssd_out_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(3),
      I4 => \ssd_out_reg[7]_0\(0),
      O => \ssd_out_reg[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hex_to_ssd_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    \ssd_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hex_to_ssd_5 : entity is "hex_to_ssd";
end hex_to_ssd_5;

architecture STRUCTURE of hex_to_ssd_5 is
  signal \ssd_out_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \ssd_out_reg[7]_i_2_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[0]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[1]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[2]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[3]\ : label is "LDP";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[4]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[5]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[6]\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \ssd_out_reg[7]\ : label is "LDP";
begin
\ssd_out_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => button_reset_IBUF,
      D => D(0),
      G => '1',
      GE => '1',
      Q => Q(0)
    );
\ssd_out_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(1),
      G => '1',
      GE => '1',
      Q => Q(1)
    );
\ssd_out_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(2),
      G => '1',
      GE => '1',
      Q => Q(2)
    );
\ssd_out_reg[3]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(3),
      G => '1',
      GE => '1',
      PRE => button_reset_IBUF,
      Q => Q(3)
    );
\ssd_out_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[4]_i_2_n_0\,
      D => D(4),
      G => '1',
      GE => '1',
      Q => Q(4)
    );
\ssd_out_reg[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(3),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      O => \ssd_out_reg[4]_i_2_n_0\
    );
\ssd_out_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[5]_i_2_n_0\,
      D => D(5),
      G => '1',
      GE => '1',
      Q => Q(5)
    );
\ssd_out_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABBBF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(0),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[5]_i_2_n_0\
    );
\ssd_out_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \ssd_out_reg[6]_i_2_n_0\,
      D => D(6),
      G => '1',
      GE => '1',
      Q => Q(6)
    );
\ssd_out_reg[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(0),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(2),
      I4 => \ssd_out_reg[7]_0\(3),
      O => \ssd_out_reg[6]_i_2_n_0\
    );
\ssd_out_reg[7]\: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => D(7),
      G => '1',
      GE => '1',
      PRE => \ssd_out_reg[7]_i_2_n_0\,
      Q => Q(7)
    );
\ssd_out_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => button_reset_IBUF,
      I1 => \ssd_out_reg[7]_0\(2),
      I2 => \ssd_out_reg[7]_0\(1),
      I3 => \ssd_out_reg[7]_0\(3),
      I4 => \ssd_out_reg[7]_0\(0),
      O => \ssd_out_reg[7]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lock_unlock_mechanism is
  port (
    unlock_OBUF : out STD_LOGIC;
    lock_OBUF : out STD_LOGIC;
    unlock_line_reg_0 : in STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    button_reset_IBUF : in STD_LOGIC;
    lock_line_reg_0 : in STD_LOGIC
  );
end lock_unlock_mechanism;

architecture STRUCTURE of lock_unlock_mechanism is
begin
lock_line_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => lock_line_reg_0,
      Q => lock_OBUF,
      S => button_reset_IBUF
    );
unlock_line_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => unlock_line_reg_0,
      Q => unlock_OBUF,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_value_comparator is
  port (
    is_same : out STD_LOGIC;
    is_same_reg_0 : in STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
end register_value_comparator;

architecture STRUCTURE of register_value_comparator is
begin
is_same_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => is_same_reg_0,
      Q => is_same,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_value_comparator_0 is
  port (
    is_same_reg_0 : out STD_LOGIC;
    is_same_reg_1 : in STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_value_comparator_0 : entity is "register_value_comparator";
end register_value_comparator_0;

architecture STRUCTURE of register_value_comparator_0 is
begin
is_same_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => is_same_reg_1,
      Q => is_same_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_value_comparator_1 is
  port (
    is_same_reg_0 : out STD_LOGIC;
    is_same_reg_1 : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    unlock_line_reg : in STD_LOGIC;
    is_same : in STD_LOGIC;
    unlock_line_reg_0 : in STD_LOGIC;
    button_reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_value_comparator_1 : entity is "register_value_comparator";
end register_value_comparator_1;

architecture STRUCTURE of register_value_comparator_1 is
  signal is_same0_n_0 : STD_LOGIC;
  signal is_same_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of lock_line_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of unlock_line_i_1 : label is "soft_lutpair0";
begin
is_same0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      O => is_same0_n_0
    );
is_same_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => is_same0_n_0,
      Q => is_same_reg_n_0,
      R => '0'
    );
lock_line_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => is_same_reg_n_0,
      I1 => unlock_line_reg,
      I2 => is_same,
      I3 => unlock_line_reg_0,
      O => is_same_reg_0
    );
unlock_line_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => is_same_reg_n_0,
      I1 => unlock_line_reg,
      I2 => is_same,
      I3 => unlock_line_reg_0,
      I4 => button_reset_IBUF,
      O => is_same_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity register_value_comparator_2 is
  port (
    is_same_reg_0 : out STD_LOGIC;
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of register_value_comparator_2 : entity is "register_value_comparator";
end register_value_comparator_2;

architecture STRUCTURE of register_value_comparator_2 is
  signal is_same0_n_0 : STD_LOGIC;
begin
is_same0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(2),
      O => is_same0_n_0
    );
is_same_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => is_same0_n_0,
      Q => is_same_reg_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ssd_mux is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \anode_select_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    \ssd_out_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ssd_out_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ssd_out_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \ssd_out_reg[7]_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end ssd_mux;

architecture STRUCTURE of ssd_mux is
  signal \anode_select[0]_i_1_n_0\ : STD_LOGIC;
  signal \anode_select[1]_i_1_n_0\ : STD_LOGIC;
  signal \anode_select[2]_i_1_n_0\ : STD_LOGIC;
  signal \anode_select[3]_i_1_n_0\ : STD_LOGIC;
  signal branch_select : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ssd_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \ssd_out[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_branch_select[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_branch_select[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_branch_select_reg[0]\ : label is "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_branch_select_reg[1]\ : label is "iSTATE:11,iSTATE0:00,iSTATE1:01,iSTATE2:10,";
  attribute SOFT_HLUTNM of \anode_select[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \anode_select[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode_select[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \anode_select[3]_i_1\ : label is "soft_lutpair3";
begin
\FSM_sequential_branch_select[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => branch_select(0),
      O => p_0_out(0)
    );
\FSM_sequential_branch_select[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => branch_select(0),
      I1 => branch_select(1),
      O => p_0_out(1)
    );
\FSM_sequential_branch_select_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_0_out(0),
      Q => branch_select(0),
      R => '0'
    );
\FSM_sequential_branch_select_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => p_0_out(1),
      Q => branch_select(1),
      R => '0'
    );
\anode_select[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => branch_select(0),
      I1 => branch_select(1),
      O => \anode_select[0]_i_1_n_0\
    );
\anode_select[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => branch_select(0),
      I1 => branch_select(1),
      O => \anode_select[1]_i_1_n_0\
    );
\anode_select[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => branch_select(1),
      I1 => branch_select(0),
      O => \anode_select[2]_i_1_n_0\
    );
\anode_select[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => branch_select(0),
      I1 => branch_select(1),
      O => \anode_select[3]_i_1_n_0\
    );
\anode_select_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \anode_select[0]_i_1_n_0\,
      Q => \anode_select_reg[3]_0\(0),
      R => '0'
    );
\anode_select_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \anode_select[1]_i_1_n_0\,
      Q => \anode_select_reg[3]_0\(1),
      R => '0'
    );
\anode_select_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \anode_select[2]_i_1_n_0\,
      Q => \anode_select_reg[3]_0\(2),
      R => '0'
    );
\anode_select_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \anode_select[3]_i_1_n_0\,
      Q => \anode_select_reg[3]_0\(3),
      R => '0'
    );
\ssd_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(0),
      I1 => \ssd_out_reg[7]_1\(0),
      I2 => \ssd_out_reg[7]_2\(0),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(0),
      O => \ssd_out[0]_i_1_n_0\
    );
\ssd_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(1),
      I1 => \ssd_out_reg[7]_1\(1),
      I2 => \ssd_out_reg[7]_2\(1),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(1),
      O => \ssd_out[1]_i_1_n_0\
    );
\ssd_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(2),
      I1 => \ssd_out_reg[7]_1\(2),
      I2 => \ssd_out_reg[7]_2\(2),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(2),
      O => \ssd_out[2]_i_1_n_0\
    );
\ssd_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(3),
      I1 => \ssd_out_reg[7]_1\(3),
      I2 => \ssd_out_reg[7]_2\(3),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(3),
      O => \ssd_out[3]_i_1_n_0\
    );
\ssd_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(4),
      I1 => \ssd_out_reg[7]_1\(4),
      I2 => \ssd_out_reg[7]_2\(4),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(4),
      O => \ssd_out[4]_i_1_n_0\
    );
\ssd_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(5),
      I1 => \ssd_out_reg[7]_1\(5),
      I2 => \ssd_out_reg[7]_2\(5),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(5),
      O => \ssd_out[5]_i_1_n_0\
    );
\ssd_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(6),
      I1 => \ssd_out_reg[7]_1\(6),
      I2 => \ssd_out_reg[7]_2\(6),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(6),
      O => \ssd_out[6]_i_1_n_0\
    );
\ssd_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => \ssd_out_reg[7]_0\(7),
      I1 => \ssd_out_reg[7]_1\(7),
      I2 => \ssd_out_reg[7]_2\(7),
      I3 => branch_select(0),
      I4 => branch_select(1),
      I5 => \ssd_out_reg[7]_3\(7),
      O => \ssd_out[7]_i_1_n_0\
    );
\ssd_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[0]_i_1_n_0\,
      Q => Q(0),
      R => '0'
    );
\ssd_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[1]_i_1_n_0\,
      Q => Q(1),
      R => '0'
    );
\ssd_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[2]_i_1_n_0\,
      Q => Q(2),
      R => '0'
    );
\ssd_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[3]_i_1_n_0\,
      Q => Q(3),
      R => '0'
    );
\ssd_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[4]_i_1_n_0\,
      Q => Q(4),
      R => '0'
    );
\ssd_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[5]_i_1_n_0\,
      Q => Q(5),
      R => '0'
    );
\ssd_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[6]_i_1_n_0\,
      Q => Q(6),
      R => '0'
    );
\ssd_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => '1',
      D => \ssd_out[7]_i_1_n_0\,
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity switch_to_register is
  port (
    \digit_1_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \digit_2_reg[0]_0\ : out STD_LOGIC;
    \digit_2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \digit_1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \digit_2_reg[3]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    \digit_2_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end switch_to_register;

architecture STRUCTURE of switch_to_register is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^digit_2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of is_same_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \is_same_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ssd_out_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ssd_out_reg[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ssd_out_reg[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ssd_out_reg[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ssd_out_reg[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ssd_out_reg[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ssd_out_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ssd_out_reg[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ssd_out_reg[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ssd_out_reg[4]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ssd_out_reg[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ssd_out_reg[5]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ssd_out_reg[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ssd_out_reg[6]_i_1__0\ : label is "soft_lutpair11";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \digit_2_reg[3]_0\(3 downto 0) <= \^digit_2_reg[3]_0\(3 downto 0);
\digit_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => button_reset_IBUF
    );
\digit_1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      S => button_reset_IBUF
    );
\digit_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => button_reset_IBUF
    );
\digit_1_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      S => button_reset_IBUF
    );
\digit_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(0),
      Q => \^digit_2_reg[3]_0\(0),
      R => button_reset_IBUF
    );
\digit_2_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(1),
      Q => \^digit_2_reg[3]_0\(1),
      S => button_reset_IBUF
    );
\digit_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(2),
      Q => \^digit_2_reg[3]_0\(2),
      R => button_reset_IBUF
    );
\digit_2_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(3),
      Q => \^digit_2_reg[3]_0\(3),
      S => button_reset_IBUF
    );
is_same_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \digit_1_reg[0]_0\
    );
\is_same_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(0),
      I1 => \^digit_2_reg[3]_0\(3),
      I2 => \^digit_2_reg[3]_0\(2),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[0]_0\
    );
\ssd_out_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(0)
    );
\ssd_out_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(0),
      I2 => \^digit_2_reg[3]_0\(2),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(0)
    );
\ssd_out_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(1)
    );
\ssd_out_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(1)
    );
\ssd_out_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \digit_1_reg[3]_0\(2)
    );
\ssd_out_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(1),
      I2 => \^digit_2_reg[3]_0\(2),
      I3 => \^digit_2_reg[3]_0\(0),
      O => \digit_2_reg[3]_1\(2)
    );
\ssd_out_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(3)
    );
\ssd_out_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(3)
    );
\ssd_out_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \digit_1_reg[3]_0\(4)
    );
\ssd_out_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(0),
      I2 => \^digit_2_reg[3]_0\(1),
      I3 => \^digit_2_reg[3]_0\(2),
      O => \digit_2_reg[3]_1\(4)
    );
\ssd_out_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(5)
    );
\ssd_out_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(5)
    );
\ssd_out_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(6)
    );
\ssd_out_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(6)
    );
\ssd_out_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \digit_1_reg[3]_0\(7)
    );
\ssd_out_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(1),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(2),
      O => \digit_2_reg[3]_1\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity switch_to_register_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \digit_2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \digit_1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \digit_2_reg[3]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    button_reset_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK100MHZ_IBUF_BUFG : in STD_LOGIC;
    \digit_2_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of switch_to_register_6 : entity is "switch_to_register";
end switch_to_register_6;

architecture STRUCTURE of switch_to_register_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^digit_2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ssd_out_reg[0]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ssd_out_reg[0]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ssd_out_reg[1]_i_1__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ssd_out_reg[1]_i_1__2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ssd_out_reg[2]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ssd_out_reg[2]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ssd_out_reg[3]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ssd_out_reg[3]_i_1__2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ssd_out_reg[4]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ssd_out_reg[4]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ssd_out_reg[5]_i_1__1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ssd_out_reg[5]_i_1__2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ssd_out_reg[6]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ssd_out_reg[6]_i_1__2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ssd_out_reg[7]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ssd_out_reg[7]_i_1__2\ : label is "soft_lutpair19";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \digit_2_reg[3]_0\(3 downto 0) <= \^digit_2_reg[3]_0\(3 downto 0);
\digit_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => button_reset_IBUF
    );
\digit_1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      S => button_reset_IBUF
    );
\digit_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => button_reset_IBUF
    );
\digit_1_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      S => button_reset_IBUF
    );
\digit_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(0),
      Q => \^digit_2_reg[3]_0\(0),
      R => button_reset_IBUF
    );
\digit_2_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(1),
      Q => \^digit_2_reg[3]_0\(1),
      S => button_reset_IBUF
    );
\digit_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(2),
      Q => \^digit_2_reg[3]_0\(2),
      R => button_reset_IBUF
    );
\digit_2_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK100MHZ_IBUF_BUFG,
      CE => E(0),
      D => \digit_2_reg[3]_2\(3),
      Q => \^digit_2_reg[3]_0\(3),
      S => button_reset_IBUF
    );
\ssd_out_reg[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(0)
    );
\ssd_out_reg[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(0),
      I2 => \^digit_2_reg[3]_0\(2),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(0)
    );
\ssd_out_reg[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(1)
    );
\ssd_out_reg[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(1)
    );
\ssd_out_reg[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \digit_1_reg[3]_0\(2)
    );
\ssd_out_reg[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(1),
      I2 => \^digit_2_reg[3]_0\(2),
      I3 => \^digit_2_reg[3]_0\(0),
      O => \digit_2_reg[3]_1\(2)
    );
\ssd_out_reg[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(3)
    );
\ssd_out_reg[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C234"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(3)
    );
\ssd_out_reg[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \digit_1_reg[3]_0\(4)
    );
\ssd_out_reg[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(0),
      I2 => \^digit_2_reg[3]_0\(1),
      I3 => \^digit_2_reg[3]_0\(2),
      O => \digit_2_reg[3]_1\(4)
    );
\ssd_out_reg[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(5)
    );
\ssd_out_reg[5]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(5)
    );
\ssd_out_reg[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \digit_1_reg[3]_0\(6)
    );
\ssd_out_reg[6]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(2),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(1),
      O => \digit_2_reg[3]_1\(6)
    );
\ssd_out_reg[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \digit_1_reg[3]_0\(7)
    );
\ssd_out_reg[7]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^digit_2_reg[3]_0\(3),
      I1 => \^digit_2_reg[3]_0\(1),
      I2 => \^digit_2_reg[3]_0\(0),
      I3 => \^digit_2_reg[3]_0\(2),
      O => \digit_2_reg[3]_1\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity combinational_lock is
  port (
    switches_A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    switches_B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    button_1 : in STD_LOGIC;
    button_2 : in STD_LOGIC;
    button_reset : in STD_LOGIC;
    lock : out STD_LOGIC;
    unlock : out STD_LOGIC;
    ssd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    anode_select : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK100MHZ : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of combinational_lock : entity is true;
end combinational_lock;

architecture STRUCTURE of combinational_lock is
  signal CLK100MHZ_IBUF : STD_LOGIC;
  signal CLK100MHZ_IBUF_BUFG : STD_LOGIC;
  signal Comparator2_n_0 : STD_LOGIC;
  signal Comparator3_n_0 : STD_LOGIC;
  signal Comparator3_n_1 : STD_LOGIC;
  signal Comparator4_n_0 : STD_LOGIC;
  signal Switch1_n_0 : STD_LOGIC;
  signal Switch1_n_10 : STD_LOGIC;
  signal Switch1_n_11 : STD_LOGIC;
  signal Switch1_n_12 : STD_LOGIC;
  signal Switch1_n_13 : STD_LOGIC;
  signal Switch1_n_14 : STD_LOGIC;
  signal Switch1_n_15 : STD_LOGIC;
  signal Switch1_n_16 : STD_LOGIC;
  signal Switch1_n_17 : STD_LOGIC;
  signal Switch1_n_18 : STD_LOGIC;
  signal Switch1_n_19 : STD_LOGIC;
  signal Switch1_n_20 : STD_LOGIC;
  signal Switch1_n_21 : STD_LOGIC;
  signal Switch1_n_22 : STD_LOGIC;
  signal Switch1_n_23 : STD_LOGIC;
  signal Switch1_n_24 : STD_LOGIC;
  signal Switch1_n_25 : STD_LOGIC;
  signal Switch1_n_5 : STD_LOGIC;
  signal Switch2_n_10 : STD_LOGIC;
  signal Switch2_n_11 : STD_LOGIC;
  signal Switch2_n_12 : STD_LOGIC;
  signal Switch2_n_13 : STD_LOGIC;
  signal Switch2_n_14 : STD_LOGIC;
  signal Switch2_n_15 : STD_LOGIC;
  signal Switch2_n_16 : STD_LOGIC;
  signal Switch2_n_17 : STD_LOGIC;
  signal Switch2_n_18 : STD_LOGIC;
  signal Switch2_n_19 : STD_LOGIC;
  signal Switch2_n_20 : STD_LOGIC;
  signal Switch2_n_21 : STD_LOGIC;
  signal Switch2_n_22 : STD_LOGIC;
  signal Switch2_n_23 : STD_LOGIC;
  signal Switch2_n_8 : STD_LOGIC;
  signal Switch2_n_9 : STD_LOGIC;
  signal anode_select_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal button_1_IBUF : STD_LOGIC;
  signal button_2_IBUF : STD_LOGIC;
  signal button_reset_IBUF : STD_LOGIC;
  signal digit_1_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digit_2_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digit_3_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digit_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal is_same : STD_LOGIC;
  signal lock_OBUF : STD_LOGIC;
  signal register_1_on : STD_LOGIC;
  signal register_2_on : STD_LOGIC;
  signal ssd_1_to_mux : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ssd_2_to_mux : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ssd_3_to_mux : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ssd_4_to_mux : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ssd_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal switches_A_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal switches_B_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal unlock_OBUF : STD_LOGIC;
begin
CLK100MHZ_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK100MHZ_IBUF,
      O => CLK100MHZ_IBUF_BUFG
    );
CLK100MHZ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK100MHZ,
      O => CLK100MHZ_IBUF
    );
Comparator1: entity work.register_value_comparator
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      is_same => is_same,
      is_same_reg_0 => Switch1_n_0
    );
Comparator2: entity work.register_value_comparator_0
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      is_same_reg_0 => Comparator2_n_0,
      is_same_reg_1 => Switch1_n_5
    );
Comparator3: entity work.register_value_comparator_1
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      Q(3 downto 0) => digit_3_out(3 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      is_same => is_same,
      is_same_reg_0 => Comparator3_n_0,
      is_same_reg_1 => Comparator3_n_1,
      unlock_line_reg => Comparator2_n_0,
      unlock_line_reg_0 => Comparator4_n_0
    );
Comparator4: entity work.register_value_comparator_2
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      Q(3 downto 0) => digit_4_out(3 downto 0),
      is_same_reg_0 => Comparator4_n_0
    );
Lock_Unlock: entity work.lock_unlock_mechanism
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      button_reset_IBUF => button_reset_IBUF,
      lock_OBUF => lock_OBUF,
      lock_line_reg_0 => Comparator3_n_0,
      unlock_OBUF => unlock_OBUF,
      unlock_line_reg_0 => Comparator3_n_1
    );
SSD1: entity work.hex_to_ssd
     port map (
      D(7) => Switch1_n_10,
      D(6) => Switch1_n_11,
      D(5) => Switch1_n_12,
      D(4) => Switch1_n_13,
      D(3) => Switch1_n_14,
      D(2) => Switch1_n_15,
      D(1) => Switch1_n_16,
      D(0) => Switch1_n_17,
      Q(7 downto 0) => ssd_1_to_mux(7 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \ssd_out_reg[7]_0\(3 downto 0) => digit_1_out(3 downto 0)
    );
SSD2: entity work.hex_to_ssd_3
     port map (
      D(7) => Switch1_n_18,
      D(6) => Switch1_n_19,
      D(5) => Switch1_n_20,
      D(4) => Switch1_n_21,
      D(3) => Switch1_n_22,
      D(2) => Switch1_n_23,
      D(1) => Switch1_n_24,
      D(0) => Switch1_n_25,
      Q(7 downto 0) => ssd_2_to_mux(7 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \ssd_out_reg[7]_0\(3 downto 0) => digit_2_out(3 downto 0)
    );
SSD3: entity work.hex_to_ssd_4
     port map (
      D(7) => Switch2_n_8,
      D(6) => Switch2_n_9,
      D(5) => Switch2_n_10,
      D(4) => Switch2_n_11,
      D(3) => Switch2_n_12,
      D(2) => Switch2_n_13,
      D(1) => Switch2_n_14,
      D(0) => Switch2_n_15,
      Q(7 downto 0) => ssd_3_to_mux(7 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \ssd_out_reg[7]_0\(3 downto 0) => digit_3_out(3 downto 0)
    );
SSD4: entity work.hex_to_ssd_5
     port map (
      D(7) => Switch2_n_16,
      D(6) => Switch2_n_17,
      D(5) => Switch2_n_18,
      D(4) => Switch2_n_19,
      D(3) => Switch2_n_20,
      D(2) => Switch2_n_21,
      D(1) => Switch2_n_22,
      D(0) => Switch2_n_23,
      Q(7 downto 0) => ssd_4_to_mux(7 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \ssd_out_reg[7]_0\(3 downto 0) => digit_4_out(3 downto 0)
    );
SSD_Switch: entity work.ssd_mux
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      Q(7 downto 0) => ssd_out_OBUF(7 downto 0),
      \anode_select_reg[3]_0\(3 downto 0) => anode_select_OBUF(3 downto 0),
      \ssd_out_reg[7]_0\(7 downto 0) => ssd_2_to_mux(7 downto 0),
      \ssd_out_reg[7]_1\(7 downto 0) => ssd_1_to_mux(7 downto 0),
      \ssd_out_reg[7]_2\(7 downto 0) => ssd_4_to_mux(7 downto 0),
      \ssd_out_reg[7]_3\(7 downto 0) => ssd_3_to_mux(7 downto 0)
    );
Switch1: entity work.switch_to_register
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      D(3 downto 0) => switches_A_IBUF(3 downto 0),
      E(0) => register_1_on,
      Q(3 downto 0) => digit_1_out(3 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \digit_1_reg[0]_0\ => Switch1_n_0,
      \digit_1_reg[3]_0\(7) => Switch1_n_10,
      \digit_1_reg[3]_0\(6) => Switch1_n_11,
      \digit_1_reg[3]_0\(5) => Switch1_n_12,
      \digit_1_reg[3]_0\(4) => Switch1_n_13,
      \digit_1_reg[3]_0\(3) => Switch1_n_14,
      \digit_1_reg[3]_0\(2) => Switch1_n_15,
      \digit_1_reg[3]_0\(1) => Switch1_n_16,
      \digit_1_reg[3]_0\(0) => Switch1_n_17,
      \digit_2_reg[0]_0\ => Switch1_n_5,
      \digit_2_reg[3]_0\(3 downto 0) => digit_2_out(3 downto 0),
      \digit_2_reg[3]_1\(7) => Switch1_n_18,
      \digit_2_reg[3]_1\(6) => Switch1_n_19,
      \digit_2_reg[3]_1\(5) => Switch1_n_20,
      \digit_2_reg[3]_1\(4) => Switch1_n_21,
      \digit_2_reg[3]_1\(3) => Switch1_n_22,
      \digit_2_reg[3]_1\(2) => Switch1_n_23,
      \digit_2_reg[3]_1\(1) => Switch1_n_24,
      \digit_2_reg[3]_1\(0) => Switch1_n_25,
      \digit_2_reg[3]_2\(3 downto 0) => switches_B_IBUF(3 downto 0)
    );
Switch2: entity work.switch_to_register_6
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      D(3 downto 0) => switches_A_IBUF(3 downto 0),
      E(0) => register_2_on,
      Q(3 downto 0) => digit_3_out(3 downto 0),
      button_reset_IBUF => button_reset_IBUF,
      \digit_1_reg[3]_0\(7) => Switch2_n_8,
      \digit_1_reg[3]_0\(6) => Switch2_n_9,
      \digit_1_reg[3]_0\(5) => Switch2_n_10,
      \digit_1_reg[3]_0\(4) => Switch2_n_11,
      \digit_1_reg[3]_0\(3) => Switch2_n_12,
      \digit_1_reg[3]_0\(2) => Switch2_n_13,
      \digit_1_reg[3]_0\(1) => Switch2_n_14,
      \digit_1_reg[3]_0\(0) => Switch2_n_15,
      \digit_2_reg[3]_0\(3 downto 0) => digit_4_out(3 downto 0),
      \digit_2_reg[3]_1\(7) => Switch2_n_16,
      \digit_2_reg[3]_1\(6) => Switch2_n_17,
      \digit_2_reg[3]_1\(5) => Switch2_n_18,
      \digit_2_reg[3]_1\(4) => Switch2_n_19,
      \digit_2_reg[3]_1\(3) => Switch2_n_20,
      \digit_2_reg[3]_1\(2) => Switch2_n_21,
      \digit_2_reg[3]_1\(1) => Switch2_n_22,
      \digit_2_reg[3]_1\(0) => Switch2_n_23,
      \digit_2_reg[3]_2\(3 downto 0) => switches_B_IBUF(3 downto 0)
    );
Switch_Selector: entity work.button_mechanisim
     port map (
      CLK100MHZ_IBUF_BUFG => CLK100MHZ_IBUF_BUFG,
      E(0) => register_2_on,
      button_1_IBUF => button_1_IBUF,
      button_2_IBUF => button_2_IBUF,
      register_1_on_reg_0(0) => register_1_on
    );
\anode_select_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_select_OBUF(0),
      O => anode_select(0)
    );
\anode_select_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_select_OBUF(1),
      O => anode_select(1)
    );
\anode_select_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_select_OBUF(2),
      O => anode_select(2)
    );
\anode_select_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => anode_select_OBUF(3),
      O => anode_select(3)
    );
button_1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => button_1,
      O => button_1_IBUF
    );
button_2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => button_2,
      O => button_2_IBUF
    );
button_reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => button_reset,
      O => button_reset_IBUF
    );
lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => lock_OBUF,
      O => lock
    );
\ssd_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(0),
      O => ssd_out(0)
    );
\ssd_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(1),
      O => ssd_out(1)
    );
\ssd_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(2),
      O => ssd_out(2)
    );
\ssd_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(3),
      O => ssd_out(3)
    );
\ssd_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(4),
      O => ssd_out(4)
    );
\ssd_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(5),
      O => ssd_out(5)
    );
\ssd_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(6),
      O => ssd_out(6)
    );
\ssd_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ssd_out_OBUF(7),
      O => ssd_out(7)
    );
\switches_A_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_A(0),
      O => switches_A_IBUF(0)
    );
\switches_A_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_A(1),
      O => switches_A_IBUF(1)
    );
\switches_A_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_A(2),
      O => switches_A_IBUF(2)
    );
\switches_A_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_A(3),
      O => switches_A_IBUF(3)
    );
\switches_B_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_B(0),
      O => switches_B_IBUF(0)
    );
\switches_B_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_B(1),
      O => switches_B_IBUF(1)
    );
\switches_B_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_B(2),
      O => switches_B_IBUF(2)
    );
\switches_B_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => switches_B(3),
      O => switches_B_IBUF(3)
    );
unlock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => unlock_OBUF,
      O => unlock
    );
end STRUCTURE;
