----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.09.2023 20:50:48
-- Design Name: 
-- Module Name: bcd_to_ssd - Behavioral
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

entity bcd_to_ssd is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0));
end bcd_to_ssd;

architecture Behavioral of bcd_to_ssd is

begin
    ssd_out <= not "01111110" when bcd = "0000"
    else not "00110000" when bcd = "0001"
    else not "01101101" when bcd = "0010"
    else not "01111001" when bcd = "0011"
    else not "00110011" when bcd = "0100"
    else not "01011011" when bcd = "0101"
    else not "01011111" when bcd = "0110"
    else not "01110000" when bcd = "0111"
    else not "01111111" when bcd = "1000"
    else not "01110011" when bcd = "1001"
    else not "01111110";
end Behavioral;
