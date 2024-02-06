
-- file: xadc_0.vhd
-- (c) Copyright 2009 - 2023 AMD, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity xadc_0 is
   port
   (
    reset_in        : in  STD_LOGIC;                         -- Reset signal for the System Monitor control logic
    vauxp0          : in  STD_LOGIC;                         -- Auxiliary Channel 0
    vauxn0          : in  STD_LOGIC;
    vauxp1          : in  STD_LOGIC;                         -- Auxiliary Channel 1
    vauxn1          : in  STD_LOGIC;
    vauxp8          : in  STD_LOGIC;                         -- Auxiliary Channel 8
    vauxn8          : in  STD_LOGIC;
    vauxp9          : in  STD_LOGIC;                         -- Auxiliary Channel 9
    vauxn9          : in  STD_LOGIC;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (4 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    ot_out          : out  STD_LOGIC;                        -- Over-Temperature alarm output
    vccddro_alarm_out : out  STD_LOGIC;                        -- VCCDDRO-sensor alarm output
    vccpint_alarm_out : out  STD_LOGIC;                        -- VCCPINT-sensor alarm output
    vccpaux_alarm_out : out  STD_LOGIC;                        -- VCCPAUX-sensor alarm output
    vccaux_alarm_out : out  STD_LOGIC;                        -- VCCAUX-sensor alarm output
    vccint_alarm_out : out  STD_LOGIC;                        -- VCCINT-sensor alarm output
    user_temp_alarm_out : out  STD_LOGIC;                        -- Temperature-sensor alarm output
    alarm_out       : out STD_LOGIC;                         -- OR'ed output of all the Alarms
    vp_in           : in  STD_LOGIC;                         -- Dedicated Analog Input Pair
    vn_in           : in  STD_LOGIC
);
end xadc_0;

architecture AMD of xadc_0 is

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of AMD : architecture is "xadc_0,xadc_wiz_v3_3_9,{component_name=xadc_0,enable_axi=false,enable_axi4stream=false,dclk_frequency=100,enable_busy=true,enable_convst=false,enable_convstclk=false,enable_dclk=false,enable_drp=false,enable_eoc=true,enable_eos=true,enable_vbram_alaram=false,enable_vccddro_alaram=true,enable_Vccint_Alaram=true,enable_Vccaux_alaram=trueenable_vccpaux_alaram=true,enable_vccpint_alaram=true,ot_alaram=true,user_temp_alaram=true,timing_mode=continuous,channel_averaging=None,sequencer_mode=on,startup_channel_selection=independent_adc}";


  signal FLOAT_VBRAM_ALARM : std_logic;
  signal FLOAT_MUXADDR : std_logic_vector (4 downto 0);
  signal aux_channel_p : std_logic_vector (15 downto 0);
  signal aux_channel_n : std_logic_vector (15 downto 0);
  signal alm_int : std_logic_vector (7 downto 0);

begin

       alarm_out <= alm_int(7);
       vccddro_alarm_out <= alm_int(6);
       vccpaux_alarm_out <= alm_int(5);
       vccpint_alarm_out <= alm_int(4);
       vccaux_alarm_out <= alm_int(2);
       vccint_alarm_out <= alm_int(1);
       user_temp_alarm_out <= alm_int(0);

        aux_channel_p(0) <= vauxp0;
        aux_channel_n(0) <= vauxn0;

        aux_channel_p(1) <= vauxp1;
        aux_channel_n(1) <= vauxn1;

        aux_channel_p(2) <= '0';
        aux_channel_n(2) <= '0';

        aux_channel_p(3) <= '0';
        aux_channel_n(3) <= '0';

        aux_channel_p(4) <= '0';
        aux_channel_n(4) <= '0';

        aux_channel_p(5) <= '0';
        aux_channel_n(5) <= '0';

        aux_channel_p(6) <= '0';
        aux_channel_n(6) <= '0';

        aux_channel_p(7) <= '0';
        aux_channel_n(7) <= '0';

        aux_channel_p(8) <= vauxp8;
        aux_channel_n(8) <= vauxn8;

        aux_channel_p(9) <= vauxp9;
        aux_channel_n(9) <= vauxn9;

        aux_channel_p(10) <= '0';
        aux_channel_n(10) <= '0';

        aux_channel_p(11) <= '0';
        aux_channel_n(11) <= '0';

        aux_channel_p(12) <= '0';
        aux_channel_n(12) <= '0';

        aux_channel_p(13) <= '0';
        aux_channel_n(13) <= '0';

        aux_channel_p(14) <= '0';
        aux_channel_n(14) <= '0';

        aux_channel_p(15) <= '0';
        aux_channel_n(15) <= '0';

 U0 : XADC
     generic map(
        INIT_40 => X"0000", -- config reg 0
        INIT_41 => X"8100", -- config reg 1
        INIT_42 => X"0400", -- config reg 2
        INIT_48 => X"0800", -- Sequencer channel selection
        INIT_49 => X"0303", -- Sequencer channel selection
        INIT_4A => X"0000", -- Sequencer Average selection
        INIT_4B => X"0000", -- Sequencer Average selection
        INIT_4C => X"0000", -- Sequencer Bipolar selection
        INIT_4D => X"0000", -- Sequencer Bipolar selection
        INIT_4E => X"0000", -- Sequencer Acq time selection
        INIT_4F => X"0000", -- Sequencer Acq time selection
        INIT_50 => X"B5ED", -- Temp alarm trigger
        INIT_51 => X"57E4", -- Vccint upper alarm limit
        INIT_52 => X"A147", -- Vccaux upper alarm limit
        INIT_53 => X"CA33",  -- Temp alarm OT upper
        INIT_54 => X"A93A", -- Temp alarm reset
        INIT_55 => X"52C6", -- Vccint lower alarm limit
        INIT_56 => X"9555", -- Vccaux lower alarm limit
        INIT_57 => X"AE4E",  -- Temp alarm OT reset
        INIT_58 => X"5999",  -- Vccbram upper alarm limit
        INIT_5C => X"5111",  -- Vccbram lower alarm limit
        INIT_59 => X"5555",  -- Vccpint upper alarm limit
        INIT_5D => X"5111",  -- Vccpint lower alarm limit
        INIT_5A => X"9999",  -- Vccpaux upper alarm limit
        INIT_5E => X"91EB",  -- Vccpaux lower alarm limit
        INIT_5B => X"6AAA",  -- Vccddro upper alarm limit
        INIT_5F => X"6666",  -- Vccddro lower alarm limit
        SIM_DEVICE => "ZYNQ",
        SIM_MONITOR_FILE => "design.txt"
        )

port map (
        CONVST              => '0',
        CONVSTCLK           => '0',
        DADDR(6 downto 0)   => "0000000",
        DCLK                => '0',
        DEN                 => '0',
        DI(15 downto 0)     => "0000000000000000",
        DWE                 => '0',
        RESET               => reset_in,
        VAUXN(15 downto 0)  => aux_channel_n(15 downto 0),
        VAUXP(15 downto 0)  => aux_channel_p(15 downto 0),
        ALM                 => alm_int,
        BUSY                => busy_out,
        CHANNEL(4 downto 0) => channel_out(4 downto 0),
        DO                  => open,
        DRDY                => open,
        EOC                 => eoc_out,
        EOS                 => eos_out,
        JTAGBUSY            => open,
        JTAGLOCKED          => open,
        JTAGMODIFIED        => open,
        OT                  => ot_out,
     
        MUXADDR             => FLOAT_MUXADDR,
        VN                  => vn_in,
        VP                  => vp_in
         );
end AMD;
