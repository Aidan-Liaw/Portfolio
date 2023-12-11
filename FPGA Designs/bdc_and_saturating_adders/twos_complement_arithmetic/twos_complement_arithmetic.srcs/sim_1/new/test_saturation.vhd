----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2023 23:18:44
-- Design Name: 
-- Module Name: test_saturation - Behavioral
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

entity test_saturation is
end test_saturation;

architecture Behavioral of test_saturation is
component saturation is
    generic (
        sum_count : integer := 2
    );
    
    Port ( sum_in : in STD_LOGIC_VECTOR (sum_count-1 downto 0);
           sum_with_saturation : buffer STD_LOGIC_VECTOR (sum_count-1 downto 0);
           saturation_enable : in STD_LOGIC;
           overflow_flag : in STD_LOGIC);
end component;

signal sum_in : STD_LOGIC_VECTOR(1 downto 0);
signal sum_with_saturation : STD_LOGIC_VECTOR(1 downto 0);
begin
    uut : saturation port map (
        sum_in => sum_in,
        sum_with_saturation => sum_with_saturation,
        saturation_enable => '1',
        overflow_flag => '1'
    );
    
    input_gen : process begin
        sum_in <= "10";
        wait for 1ps;
        sum_in <= "00";
        wait for 1ps;
        sum_in <= "01";
        wait for 1ps;
        sum_in <= "01";
        wait for 1ps;
    end process;
end Behavioral;
