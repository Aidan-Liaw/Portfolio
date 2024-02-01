----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2024 16:33:39
-- Design Name: 
-- Module Name: top_2 - Behavioral
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

entity top_2 is
    port (
        adc_dat_a_in : in STD_LOGIC_VECTOR(13 downto 0);
        led_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end top_2;

architecture Behavioral of top_2 is

begin
    led_out <= adc_dat_a_in(7 downto 0);
end Behavioral;
