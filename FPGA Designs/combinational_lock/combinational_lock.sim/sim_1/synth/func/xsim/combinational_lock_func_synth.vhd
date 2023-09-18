-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Aug 11 17:32:55 2023
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/aidan/csse4010_assesment_2/csse4010_assesment_2.sim/sim_1/synth/func/xsim/combinational_lock_func_synth.vhd
-- Design      : combinational_lock
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity combinational_lock is
  port (
    digit_A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    digit_B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    button_1 : in STD_LOGIC;
    button_2 : in STD_LOGIC;
    button_reset : in STD_LOGIC;
    lock : out STD_LOGIC;
    unlock : out STD_LOGIC;
    ssd_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    anode_select : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of combinational_lock : entity is true;
end combinational_lock;

architecture STRUCTURE of combinational_lock is
begin
CLK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => CLK
    );
\anode_select_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => anode_select(0)
    );
\anode_select_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => anode_select(1)
    );
\anode_select_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => anode_select(2)
    );
\anode_select_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => anode_select(3)
    );
lock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => lock
    );
\ssd_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ssd_out(0)
    );
\ssd_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => ssd_out(1)
    );
\ssd_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => ssd_out(2)
    );
\ssd_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ssd_out(3)
    );
\ssd_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => ssd_out(4)
    );
\ssd_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => ssd_out(5)
    );
\ssd_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => ssd_out(6)
    );
\ssd_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => ssd_out(7)
    );
unlock_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => unlock
    );
end STRUCTURE;
