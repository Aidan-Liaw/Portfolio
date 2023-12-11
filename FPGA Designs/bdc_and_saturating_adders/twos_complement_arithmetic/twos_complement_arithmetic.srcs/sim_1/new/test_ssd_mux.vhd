----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.08.2023 00:56:09
-- Design Name: 
-- Module Name: test_ssd_mux - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_ssd_mux is
end test_ssd_mux;

architecture Behavioral of test_ssd_mux is
component ssd_mux is
    generic (
        ssd_used_count : integer;
        ssd_total_count : integer
    );
    Port ( ssds_in : in STD_LOGIC_VECTOR ((8 * ssd_used_count - 1) downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           anode_select : buffer STD_LOGIC_VECTOR ((ssd_total_count-1) downto 0);
           CLK : in STD_LOGIC);
end component;

signal ssd_1 : STD_LOGIC_VECTOR(7 downto 0);
signal ssd_2 : STD_LOGIC_VECTOR(7 downto 0);
signal ssd_3 : STD_LOGIC_VECTOR(7 downto 0);
signal ssd_4 : STD_LOGIC_VECTOR(7 downto 0);
signal ssd_out : STD_LOGIC_VECTOR(7 downto 0);
signal anode_select : STD_LOGIC_VECTOR(7 downto 0);
signal CLK : STD_LOGIC;
begin
    SSDMux: ssd_mux
    generic map (
        ssd_used_count => 3,
        ssd_total_count => 8
    )
    port map (
        ssds_in(7 downto 0) => ssd_1,
        ssds_in(15 downto 8) => ssd_2,
        ssds_in(23 downto 16) => ssd_3,
        ssd_out => ssd_out,
        anode_select => anode_select,
        CLK => CLK
    );
    
    ssd_1 <= "00000000";
    ssd_2 <= "11111111";
    ssd_3 <= "01001100";
    ssd_4 <= "10101010";
    uut: process begin
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
    end process;
end Behavioral;
