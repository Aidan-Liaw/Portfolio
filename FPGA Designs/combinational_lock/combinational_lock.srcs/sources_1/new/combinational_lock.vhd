----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 17:48:53
-- Design Name: 
-- Module Name: combinational_lock - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity combinational_lock is
    Port (switches_A : in STD_LOGIC_VECTOR (3 downto 0);
          switches_B : in STD_LOGIC_VECTOR (3 downto 0);
          button_1 : in STD_LOGIC;
          button_2 : in STD_LOGIC;
          button_reset : in STD_LOGIC;
          lock : out STD_LOGIC;
          unlock : buffer STD_LOGIC;
          ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
          anode_select : out STD_LOGIC_VECTOR (3 downto 0);
          CLK100MHZ : in STD_LOGIC);
end combinational_lock;

architecture Behavioral of combinational_lock is
component button_mechanisim
    port ( button_1 : in STD_LOGIC;
           button_2 : in STD_LOGIC;
           register_1_on : out STD_LOGIC;
           register_2_on : out STD_LOGIC;
           CLK : in STD_LOGIC);
end component;

component switch_to_register
    port ( switches_1 : in STD_LOGIC_VECTOR (3 downto 0);
           switches_2 : in STD_LOGIC_VECTOR (3 downto 0);
           digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
           digit_2 : out STD_LOGIC_VECTOR (3 downto 0);
           button_on : in STD_LOGIC;
           reset_line : in STD_LOGIC;
           CLK : in STD_LOGIC);
end component;

component hex_to_ssd
    port ( hex : in STD_LOGIC_VECTOR (3 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           reset_line : in STD_LOGIC;
           CLK : in STD_LOGIC);
end component;

component ssd_mux
    port ( ssd_1 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_2 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_3 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_4 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           anode_select : out STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC);
end component;

component register_value_comparator
    port ( register_input : in STD_LOGIC_VECTOR (3 downto 0);
           comparison : in STD_LOGIC_VECTOR (3 downto 0);
           is_same : out STD_LOGIC;
           CLK : in STD_LOGIC);
end component;

component lock_unlock_mechanism
    port ( comparators : in STD_LOGIC_VECTOR (3 downto 0);
           reset_line : in STD_LOGIC;
           lock_line : out STD_LOGIC;
           unlock_line : buffer STD_LOGIC;
           CLK : in STD_LOGIC);
end component;

signal digit_1_out : STD_LOGIC_VECTOR (3 downto 0);
signal digit_2_out : STD_LOGIC_VECTOR (3 downto 0);
signal digit_3_out : STD_LOGIC_VECTOR (3 downto 0);
signal digit_4_out : STD_LOGIC_VECTOR (3 downto 0);
signal register_1_on : STD_LOGIC;
signal register_2_on : STD_LOGIC;
signal ssd_1_to_mux : STD_LOGIC_VECTOR (7 downto 0);
signal ssd_2_to_mux : STD_LOGIC_VECTOR (7 downto 0);
signal ssd_3_to_mux : STD_LOGIC_VECTOR (7 downto 0);
signal ssd_4_to_mux : STD_LOGIC_VECTOR (7 downto 0);
signal comparators_to_lock : STD_LOGIC_VECTOR (3 downto 0);
begin
    Switch_Selector: button_mechanisim
    port map(button_1 => button_1,
             button_2 => button_2,
             register_1_on => register_1_on,
             register_2_on => register_2_on,
             CLK => CLK100MHZ);
    Switch1: switch_to_register 
    port map(switches_1 => switches_A,
             switches_2 => switches_B,
             digit_1 => digit_1_out,
             digit_2 => digit_2_out,
             button_on => register_1_on,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    Switch2: switch_to_register 
    port map(switches_1 => switches_A,
             switches_2 => switches_B,
             digit_1 => digit_3_out,
             digit_2 => digit_4_out,
             button_on => register_2_on,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    SSD1: hex_to_ssd
    port map(hex => digit_1_out,
             ssd_out => ssd_1_to_mux,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    SSD2: hex_to_ssd
    port map(hex => digit_2_out,
             ssd_out => ssd_2_to_mux,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    SSD3: hex_to_ssd
    port map(hex => digit_3_out,
             ssd_out => ssd_3_to_mux,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    SSD4: hex_to_ssd
    port map(hex => digit_4_out,
             ssd_out => ssd_4_to_mux,
             reset_line => button_reset,
             CLK => CLK100MHZ);
    SSD_Switch: ssd_mux
    port map(ssd_1 => ssd_1_to_mux,
             ssd_2 => ssd_2_to_mux,
             ssd_3 => ssd_3_to_mux,
             ssd_4 => ssd_4_to_mux,
             ssd_out => ssd_out,
             anode_select => anode_select,
             CLK => CLK100MHZ);
    Comparator1: register_value_comparator
    port map(register_input => digit_1_out,
             comparison => "0111", -- 7
             is_same => comparators_to_lock(0),
             CLK => CLK100MHZ);
    Comparator2: register_value_comparator
    port map(register_input => digit_2_out,
             comparison => "0101", -- 5
             is_same => comparators_to_lock(1),
             CLK => CLK100MHZ);  
    Comparator3: register_value_comparator
    port map(register_input => digit_3_out,
             comparison => "1000", -- 8
             is_same => comparators_to_lock(2),
             CLK => CLK100MHZ);  
    Comparator4: register_value_comparator
    port map(register_input => digit_4_out,
             comparison => "0001", -- 1
             is_same => comparators_to_lock(3),
             CLK => CLK100MHZ);                                       
    Lock_Unlock: lock_unlock_mechanism
    port map(comparators => comparators_to_lock,
             reset_line => button_reset,
             lock_line => lock,
             unlock_line => unlock,
             CLK => CLK100MHZ);      
end Behavioral;
