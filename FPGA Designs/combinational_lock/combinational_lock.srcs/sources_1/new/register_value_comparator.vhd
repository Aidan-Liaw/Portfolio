----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 15:49:31
-- Design Name: 
-- Module Name: register_value_comparator - Behavioral
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

entity register_value_comparator is
    Port ( register_input : in STD_LOGIC_VECTOR (3 downto 0);
           comparison : in STD_LOGIC_VECTOR (3 downto 0);
           is_same : out STD_LOGIC;
           CLK : in STD_LOGIC);
end register_value_comparator;

architecture Behavioral of register_value_comparator is

begin
    process (CLK) is
    begin
        if rising_edge(CLK) then
            is_same <=  (register_input(0) xnor comparison(0))
                                and (register_input(1) xnor comparison(1))
                                and (register_input(2) xnor comparison(2))
                                and (register_input(3) xnor comparison(3));
        end if;
    end process;
end Behavioral;
