-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Feb  1 11:56:46 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_to_bram_0_0_sim_netlist.vhdl
-- Design      : system_adc_to_bram_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram is
  port (
    bram_data : out STD_LOGIC_VECTOR ( 19 downto 0 );
    bram_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 19 downto 0 );
    adc_clk : in STD_LOGIC;
    adc_rst_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram is
  signal \address[3]_i_2_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^bram_address\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clear : STD_LOGIC;
  signal \NLW_address_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \address_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[31]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \address_reg[7]_i_1\ : label is 11;
begin
  bram_address(31 downto 0) <= \^bram_address\(31 downto 0);
\address[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adc_rst_in,
      O => clear
    );
\address[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_address\(0),
      O => \address[3]_i_2_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[3]_i_1_n_7\,
      Q => \^bram_address\(0),
      S => clear
    );
\address_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[11]_i_1_n_5\,
      Q => \^bram_address\(10),
      S => clear
    );
\address_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[11]_i_1_n_4\,
      Q => \^bram_address\(11),
      S => clear
    );
\address_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[7]_i_1_n_0\,
      CO(3) => \address_reg[11]_i_1_n_0\,
      CO(2) => \address_reg[11]_i_1_n_1\,
      CO(1) => \address_reg[11]_i_1_n_2\,
      CO(0) => \address_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[11]_i_1_n_4\,
      O(2) => \address_reg[11]_i_1_n_5\,
      O(1) => \address_reg[11]_i_1_n_6\,
      O(0) => \address_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(11 downto 8)
    );
\address_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[15]_i_1_n_7\,
      Q => \^bram_address\(12),
      S => clear
    );
\address_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[15]_i_1_n_6\,
      Q => \^bram_address\(13),
      S => clear
    );
\address_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[15]_i_1_n_5\,
      Q => \^bram_address\(14),
      S => clear
    );
\address_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[15]_i_1_n_4\,
      Q => \^bram_address\(15),
      S => clear
    );
\address_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[11]_i_1_n_0\,
      CO(3) => \address_reg[15]_i_1_n_0\,
      CO(2) => \address_reg[15]_i_1_n_1\,
      CO(1) => \address_reg[15]_i_1_n_2\,
      CO(0) => \address_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[15]_i_1_n_4\,
      O(2) => \address_reg[15]_i_1_n_5\,
      O(1) => \address_reg[15]_i_1_n_6\,
      O(0) => \address_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(15 downto 12)
    );
\address_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[19]_i_1_n_7\,
      Q => \^bram_address\(16),
      S => clear
    );
\address_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[19]_i_1_n_6\,
      Q => \^bram_address\(17),
      S => clear
    );
\address_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[19]_i_1_n_5\,
      Q => \^bram_address\(18),
      S => clear
    );
\address_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[19]_i_1_n_4\,
      Q => \^bram_address\(19),
      S => clear
    );
\address_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[15]_i_1_n_0\,
      CO(3) => \address_reg[19]_i_1_n_0\,
      CO(2) => \address_reg[19]_i_1_n_1\,
      CO(1) => \address_reg[19]_i_1_n_2\,
      CO(0) => \address_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[19]_i_1_n_4\,
      O(2) => \address_reg[19]_i_1_n_5\,
      O(1) => \address_reg[19]_i_1_n_6\,
      O(0) => \address_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(19 downto 16)
    );
\address_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[3]_i_1_n_6\,
      Q => \^bram_address\(1),
      S => clear
    );
\address_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[23]_i_1_n_7\,
      Q => \^bram_address\(20),
      S => clear
    );
\address_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[23]_i_1_n_6\,
      Q => \^bram_address\(21),
      S => clear
    );
\address_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[23]_i_1_n_5\,
      Q => \^bram_address\(22),
      S => clear
    );
\address_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[23]_i_1_n_4\,
      Q => \^bram_address\(23),
      S => clear
    );
\address_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[19]_i_1_n_0\,
      CO(3) => \address_reg[23]_i_1_n_0\,
      CO(2) => \address_reg[23]_i_1_n_1\,
      CO(1) => \address_reg[23]_i_1_n_2\,
      CO(0) => \address_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[23]_i_1_n_4\,
      O(2) => \address_reg[23]_i_1_n_5\,
      O(1) => \address_reg[23]_i_1_n_6\,
      O(0) => \address_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(23 downto 20)
    );
\address_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[27]_i_1_n_7\,
      Q => \^bram_address\(24),
      S => clear
    );
\address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[27]_i_1_n_6\,
      Q => \^bram_address\(25),
      R => clear
    );
\address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[27]_i_1_n_5\,
      Q => \^bram_address\(26),
      R => clear
    );
\address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[27]_i_1_n_4\,
      Q => \^bram_address\(27),
      R => clear
    );
\address_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[23]_i_1_n_0\,
      CO(3) => \address_reg[27]_i_1_n_0\,
      CO(2) => \address_reg[27]_i_1_n_1\,
      CO(1) => \address_reg[27]_i_1_n_2\,
      CO(0) => \address_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[27]_i_1_n_4\,
      O(2) => \address_reg[27]_i_1_n_5\,
      O(1) => \address_reg[27]_i_1_n_6\,
      O(0) => \address_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(27 downto 24)
    );
\address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[31]_i_2_n_7\,
      Q => \^bram_address\(28),
      R => clear
    );
\address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[31]_i_2_n_6\,
      Q => \^bram_address\(29),
      R => clear
    );
\address_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[3]_i_1_n_5\,
      Q => \^bram_address\(2),
      S => clear
    );
\address_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[31]_i_2_n_5\,
      Q => \^bram_address\(30),
      S => clear
    );
\address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[31]_i_2_n_4\,
      Q => \^bram_address\(31),
      R => clear
    );
\address_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[27]_i_1_n_0\,
      CO(3) => \NLW_address_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \address_reg[31]_i_2_n_1\,
      CO(1) => \address_reg[31]_i_2_n_2\,
      CO(0) => \address_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[31]_i_2_n_4\,
      O(2) => \address_reg[31]_i_2_n_5\,
      O(1) => \address_reg[31]_i_2_n_6\,
      O(0) => \address_reg[31]_i_2_n_7\,
      S(3 downto 0) => \^bram_address\(31 downto 28)
    );
\address_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[3]_i_1_n_4\,
      Q => \^bram_address\(3),
      S => clear
    );
\address_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[3]_i_1_n_0\,
      CO(2) => \address_reg[3]_i_1_n_1\,
      CO(1) => \address_reg[3]_i_1_n_2\,
      CO(0) => \address_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \address_reg[3]_i_1_n_4\,
      O(2) => \address_reg[3]_i_1_n_5\,
      O(1) => \address_reg[3]_i_1_n_6\,
      O(0) => \address_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^bram_address\(3 downto 1),
      S(0) => \address[3]_i_2_n_0\
    );
\address_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[7]_i_1_n_7\,
      Q => \^bram_address\(4),
      S => clear
    );
\address_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[7]_i_1_n_6\,
      Q => \^bram_address\(5),
      S => clear
    );
\address_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[7]_i_1_n_5\,
      Q => \^bram_address\(6),
      S => clear
    );
\address_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[7]_i_1_n_4\,
      Q => \^bram_address\(7),
      S => clear
    );
\address_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[3]_i_1_n_0\,
      CO(3) => \address_reg[7]_i_1_n_0\,
      CO(2) => \address_reg[7]_i_1_n_1\,
      CO(1) => \address_reg[7]_i_1_n_2\,
      CO(0) => \address_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[7]_i_1_n_4\,
      O(2) => \address_reg[7]_i_1_n_5\,
      O(1) => \address_reg[7]_i_1_n_6\,
      O(0) => \address_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^bram_address\(7 downto 4)
    );
\address_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[11]_i_1_n_7\,
      Q => \^bram_address\(8),
      S => clear
    );
\address_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => adc_clk,
      CE => '1',
      D => \address_reg[11]_i_1_n_6\,
      Q => \^bram_address\(9),
      S => clear
    );
\bram_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(0),
      Q => bram_data(0),
      R => clear
    );
\bram_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(10),
      Q => bram_data(10),
      R => clear
    );
\bram_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(11),
      Q => bram_data(11),
      R => clear
    );
\bram_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(12),
      Q => bram_data(12),
      R => clear
    );
\bram_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(13),
      Q => bram_data(13),
      R => clear
    );
\bram_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(1),
      Q => bram_data(1),
      R => clear
    );
\bram_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(14),
      Q => bram_data(14),
      R => clear
    );
\bram_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(15),
      Q => bram_data(15),
      R => clear
    );
\bram_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(16),
      Q => bram_data(16),
      R => clear
    );
\bram_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(17),
      Q => bram_data(17),
      R => clear
    );
\bram_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(18),
      Q => bram_data(18),
      R => clear
    );
\bram_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(19),
      Q => bram_data(19),
      R => clear
    );
\bram_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(2),
      Q => bram_data(2),
      R => clear
    );
\bram_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(3),
      Q => bram_data(3),
      R => clear
    );
\bram_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(4),
      Q => bram_data(4),
      R => clear
    );
\bram_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(5),
      Q => bram_data(5),
      R => clear
    );
\bram_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(6),
      Q => bram_data(6),
      R => clear
    );
\bram_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(7),
      Q => bram_data(7),
      R => clear
    );
\bram_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(8),
      Q => bram_data(8),
      R => clear
    );
\bram_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => adc_clk,
      CE => '1',
      D => D(9),
      Q => bram_data(9),
      R => clear
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
    bram_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_adc_to_bram_0_0,adc_to_bram,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adc_to_bram,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^bram_data\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_PARAMETER of adc_rst_in : signal is "POLARITY ACTIVE_LOW";
begin
  adc_cdcs_out <= \<const1>\;
  adc_clk_source(1) <= \<const1>\;
  adc_clk_source(0) <= \<const0>\;
  bram_data(31) <= \<const0>\;
  bram_data(30) <= \<const0>\;
  bram_data(29) <= \<const0>\;
  bram_data(28) <= \<const0>\;
  bram_data(27) <= \<const0>\;
  bram_data(26) <= \<const0>\;
  bram_data(25 downto 16) <= \^bram_data\(25 downto 16);
  bram_data(15) <= \<const0>\;
  bram_data(14) <= \<const0>\;
  bram_data(13) <= \<const0>\;
  bram_data(12) <= \<const0>\;
  bram_data(11) <= \<const0>\;
  bram_data(10) <= \<const0>\;
  bram_data(9 downto 0) <= \^bram_data\(9 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram
     port map (
      D(19 downto 10) => adc_dat_a_in(13 downto 4),
      D(9 downto 0) => adc_dat_b_in(13 downto 4),
      adc_clk => adc_clk,
      adc_rst_in => adc_rst_in,
      bram_address(31 downto 0) => bram_address(31 downto 0),
      bram_data(19 downto 10) => \^bram_data\(25 downto 16),
      bram_data(9 downto 0) => \^bram_data\(9 downto 0)
    );
end STRUCTURE;
