----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 15:29:36
-- Design Name: 
-- Module Name: hex_to_ssd - Behavioral
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

entity hex_to_ssd is
    Port ( hex : in STD_LOGIC_VECTOR (3 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           reset_line : in STD_LOGIC;
           CLK : in STD_LOGIC);
end hex_to_ssd;

architecture Behavioral of hex_to_ssd is

begin
    ssd_out <= not "01110111" when reset_line = '1'
    else not "01111110" when hex = "0000"
    else not "00110000" when hex = "0001"
    else not "01101101" when hex = "0010"
    else not "01111001" when hex = "0011"
    else not "00110011" when hex = "0100"
    else not "01011011" when hex = "0101"
    else not "01011111" when hex = "0110"
    else not "01110000" when hex = "0111"
    else not "01111111" when hex = "1000"
    else not "01110011" when hex = "1001"
    else not "01110111" when hex = "1010"
    else not "00011111" when hex = "1011"
    else not "01001110" when hex = "1100"
    else not "00111101" when hex = "1101"
    else not "01001111" when hex = "1110"
    else not "01000111" when hex = "1111";
end Behavioral;
