--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Sun Jan 28 21:46:30 2024
--Host        : Lenovo running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Vaux0_v_n : in STD_LOGIC;
    Vaux0_v_p : in STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    Vaux8_v_n : in STD_LOGIC;
    Vaux8_v_p : in STD_LOGIC;
    Vaux9_v_n : in STD_LOGIC;
    Vaux9_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in1 : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    Vaux0_v_n : in STD_LOGIC;
    Vaux0_v_p : in STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    Vaux8_v_n : in STD_LOGIC;
    Vaux8_v_p : in STD_LOGIC;
    Vaux9_v_n : in STD_LOGIC;
    Vaux9_v_p : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    drdy_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Dout(11 downto 0) => Dout(11 downto 0),
      Vaux0_v_n => Vaux0_v_n,
      Vaux0_v_p => Vaux0_v_p,
      Vaux1_v_n => Vaux1_v_n,
      Vaux1_v_p => Vaux1_v_p,
      Vaux8_v_n => Vaux8_v_n,
      Vaux8_v_p => Vaux8_v_p,
      Vaux9_v_n => Vaux9_v_n,
      Vaux9_v_p => Vaux9_v_p,
      Vp_Vn_v_n => Vp_Vn_v_n,
      Vp_Vn_v_p => Vp_Vn_v_p,
      channel_out(4 downto 0) => channel_out(4 downto 0),
      clk_in1 => clk_in1,
      drdy_out => drdy_out,
      reset => reset
    );
end STRUCTURE;
