-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Feb  1 11:50:23 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_to_bram_0_0_stub.vhdl
-- Design      : system_adc_to_bram_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : in STD_LOGIC;
    adc_clk_source : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_cdcs_out : out STD_LOGIC;
    adc_rst_in : in STD_LOGIC;
    bram_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_data : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_dat_a_in[13:0],adc_dat_b_in[13:0],adc_clk,adc_clk_source[1:0],adc_cdcs_out,adc_rst_in,bram_address[31:0],bram_data[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adc_to_bram,Vivado 2023.2";
begin
end;
