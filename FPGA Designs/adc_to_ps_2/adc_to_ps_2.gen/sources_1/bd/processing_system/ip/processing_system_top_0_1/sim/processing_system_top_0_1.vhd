-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:top:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY processing_system_top_0_1 IS
  PORT (
    adc_dat_a_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_dat_b_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_clk_p_in : IN STD_LOGIC;
    adc_clk_n_in : IN STD_LOGIC;
    adc_rst_in : IN STD_LOGIC;
    adc_clk_source : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    adc_cdcs_out : OUT STD_LOGIC;
    led_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    adc_dat_a_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_dat_b_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    adc_clk_out : OUT STD_LOGIC
  );
END processing_system_top_0_1;

ARCHITECTURE processing_system_top_0_1_arch OF processing_system_top_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF processing_system_top_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT top IS
    PORT (
      adc_dat_a_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_dat_b_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_clk_p_in : IN STD_LOGIC;
      adc_clk_n_in : IN STD_LOGIC;
      adc_rst_in : IN STD_LOGIC;
      adc_clk_source : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      adc_cdcs_out : OUT STD_LOGIC;
      led_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      adc_dat_a_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_dat_b_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      adc_clk_out : OUT STD_LOGIC
    );
  END COMPONENT top;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF adc_clk_n_in: SIGNAL IS "digilentinc.com:interface:tmds:1.0 adc_in CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF adc_clk_p_in: SIGNAL IS "digilentinc.com:interface:tmds:1.0 adc_in CLK_P";
BEGIN
  U0 : top
    PORT MAP (
      adc_dat_a_in => adc_dat_a_in,
      adc_dat_b_in => adc_dat_b_in,
      adc_clk_p_in => adc_clk_p_in,
      adc_clk_n_in => adc_clk_n_in,
      adc_rst_in => adc_rst_in,
      adc_clk_source => adc_clk_source,
      adc_cdcs_out => adc_cdcs_out,
      led_out => led_out,
      adc_dat_a_out => adc_dat_a_out,
      adc_dat_b_out => adc_dat_b_out,
      adc_clk_out => adc_clk_out
    );
END processing_system_top_0_1_arch;
