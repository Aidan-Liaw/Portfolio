----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 14:16:17
-- Design Name: 
-- Module Name: switch_to_register - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- One register responds to button 1, another to button 2
entity switch_to_register is
    Port ( switches_1 : in STD_LOGIC_VECTOR (3 downto 0);
           switches_2 : in STD_LOGIC_VECTOR (3 downto 0);
           digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
           digit_2 : out STD_LOGIC_VECTOR (3 downto 0);
           button_on : in STD_LOGIC;
           reset_line : in STD_LOGIC;
           CLK : in STD_LOGIC);
end switch_to_register;

architecture Behavioral of switch_to_register is
begin
    process (CLK) is
    begin
        if rising_edge(CLK) then
            if reset_line = '1' then 
                digit_1 <= "1010";
                digit_2 <= "1010";
            elsif button_on = '1' then
                digit_1 <= switches_1;
                digit_2 <= switches_2;
            end if;
        end if;
    end process;
end Behavioral;
