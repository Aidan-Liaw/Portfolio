----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2023 15:28:53
-- Design Name: 
-- Module Name: not_elementwise_or_vector - Behavioral
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

entity not_elementwise_or_vector is
    generic (
            input_count : integer := 4
            );
        
    Port ( inputs : in STD_LOGIC_VECTOR (input_count-1 downto 0);
           output : out STD_LOGIC);
end not_elementwise_or_vector;

architecture Behavioral of not_elementwise_or_vector is

signal elementwise_or_connects : std_logic_vector(input_count-1 downto 0);
begin
    -- REF: https://stackoverflow.com/questions/20296276/and-all-elements-of-an-n-bit-array-in-vhdl
    elementwise_or_connects(0) <= inputs(0);
    ElementwiseOr: for idx in 1 to input_count-1 generate
        elementwise_or_connects(idx) <= elementwise_or_connects(idx - 1) or inputs(idx);
    end generate;
    output <= not elementwise_or_connects(input_count-1);
end Behavioral;
