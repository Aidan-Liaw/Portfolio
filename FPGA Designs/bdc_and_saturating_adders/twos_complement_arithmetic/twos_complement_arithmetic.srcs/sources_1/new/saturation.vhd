----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2023 21:56:58
-- Design Name: 
-- Module Name: saturation - Behavioral
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

entity saturation is
    generic (
        sum_count : integer := 4
    );
    
    Port ( sum_in : in STD_LOGIC_VECTOR (sum_count-1 downto 0);
           sum_with_saturation : buffer STD_LOGIC_VECTOR (sum_count-1 downto 0);
           saturation_enable : in STD_LOGIC;
           overflow_flag : in STD_LOGIC);
end saturation;

architecture Behavioral of saturation is
begin
--    sum_with_saturation(sum_count-1) <= sum_in(sum_count-1) when overflow_flag = '0'
--    else not sum_in(sum_count-1) when overflow_flag = '1' and saturation_enable = '1';
    sum_with_saturation(sum_count-1) <= not sum_in(sum_count-1) when overflow_flag = '1' and saturation_enable = '1'
    else sum_in(sum_count-1);
    
    Saturation: for idx in 0 to sum_count-2 generate
--        sum_with_saturation(idx) <= sum_in(idx) when overflow_flag = '0'
--        else sum_in(sum_count-1) when overflow_flag = '1' and saturation_enable = '1';
        sum_with_saturation(idx) <= sum_in(sum_count-1) when overflow_flag = '1' and saturation_enable = '1'
        else sum_in(idx);
    end generate;
end Behavioral;
