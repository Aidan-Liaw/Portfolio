----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2023 14:49:48
-- Design Name: 
-- Module Name: elementwise_and_vector - Behavioral
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

entity elementwise_and_vector is
    generic (
            fa_count : integer := 4
        );
        
    Port ( sum : in STD_LOGIC_VECTOR (fa_count-1 downto 0);
           zero_flag : out STD_LOGIC);
end elementwise_and_vector;

architecture Behavioral of elementwise_and_vector is

signal elementwise_and_sum : std_logic_vector(fa_count-1 downto 0);
begin
    -- REF: https://stackoverflow.com/questions/20296276/and-all-elements-of-an-n-bit-array-in-vhdl
    elementwise_and_sum(0) <= not sum(0);
    ZeroFlag: for idx in 1 to fa_count-1 generate
        elementwise_and_sum(idx) <= elementwise_and_sum(idx - 1) and not sum(idx);
    end generate;
    zero_flag <= elementwise_and_sum(fa_count-1);
end Behavioral;
