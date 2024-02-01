-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Tue Jan 30 10:25:34 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_modified_adc_0_0_stub.vhdl
-- Design      : system_modified_adc_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    adc_clk : out STD_LOGIC;
    adc_csn : out STD_LOGIC;
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    adc_dat_a : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b : in STD_LOGIC_VECTOR ( 13 downto 0 );
    led_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_clk,adc_csn,adc_clk_p,adc_clk_n,adc_dat_a[13:0],adc_dat_b[13:0],led_o[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "modified_adc,Vivado 2023.2";
begin
end;
