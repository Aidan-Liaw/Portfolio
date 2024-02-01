-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Jan 31 16:06:24 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/aidan/Portfolio/FPGA
--               Designs/adc_to_ps/adc_to_ps.gen/sources_1/bd/processing_system/ip/processing_system_adc_to_axis_0_0/processing_system_adc_to_axis_0_0_stub.vhdl}
-- Design      : processing_system_adc_to_axis_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processing_system_adc_to_axis_0_0 is
  Port ( 
    adc_dat_a_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_dat_b_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_clk : in STD_LOGIC;
    adc_clk_source : out STD_LOGIC_VECTOR ( 1 downto 0 );
    adc_cdcs_out : out STD_LOGIC;
    adc_rst_in : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end processing_system_adc_to_axis_0_0;

architecture stub of processing_system_adc_to_axis_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_dat_a_in[13:0],adc_dat_b_in[13:0],adc_clk,adc_clk_source[1:0],adc_cdcs_out,adc_rst_in,m_axis_tvalid,m_axis_tdata[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "adc_to_axis,Vivado 2023.2";
begin
end;
