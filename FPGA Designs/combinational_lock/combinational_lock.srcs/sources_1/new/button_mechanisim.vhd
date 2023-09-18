----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.08.2023 12:38:28
-- Design Name: 
-- Module Name: button_mechanisim - Behavioral
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

entity button_mechanisim is
    Port ( button_1 : in STD_LOGIC;
           button_2 : in STD_LOGIC;
           register_1_on : out STD_LOGIC;
           register_2_on : out STD_LOGIC;
           CLK : in STD_LOGIC);
end button_mechanisim;

architecture Behavioral of button_mechanisim is
signal choose_register : STD_LOGIC := '0';
begin
    process (CLK) is
    variable choose_register : STD_LOGIC := '0';
    begin 
        if rising_edge(CLK) then
            if (button_1 = '1' and button_2 = '0') then
                choose_register := '0';
            elsif (button_1 = '0' and button_2 = '1') then
                choose_register := '1';
            end if;
            register_1_on <= not choose_register;
            register_2_on <= choose_register;
        end if;
    end process;
--    choose_register <= '0' when button_1 = '1' and button_2 = '0'
--                  else '1' when button_1 = '0' and button_2 = '1'
--                  else choose_register when button_1 = '1' and button_2 = '1'
--                  else choose_register when button_1 = '0' and button_2 = '0';
--    register_1_on <= not choose_register;
--    register_2_on <= choose_register;
end Behavioral;
