----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2023 03:29:07
-- Design Name: 
-- Module Name: bcd_correction_mechanism - Behavioral
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

entity bcd_correction_mechanism is
    Port ( sum_in : in STD_LOGIC_VECTOR(3 downto 0);
           c_in : in STD_LOGIC;
           correction_out : out STD_LOGIC_VECTOR(3 downto 0)
    );
end bcd_correction_mechanism;

architecture Behavioral of bcd_correction_mechanism is

begin
    correction_out <= "0110" when sum_in = "1010" 
                               or sum_in = "1011" 
                               or sum_in = "1100"
                               or sum_in = "1101"
                               or sum_in = "1110"
                               or sum_in = "1111"
    else "0000";
end Behavioral;
