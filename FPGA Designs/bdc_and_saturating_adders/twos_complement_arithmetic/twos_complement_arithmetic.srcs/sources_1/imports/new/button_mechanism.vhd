----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.08.2023 00:35:35
-- Design Name: 
-- Module Name: button_mechanism - Behavioral
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

entity button_mechanism is
    Port ( button_1 : in STD_LOGIC;
           button_2 : in STD_LOGIC;
           button_reset : in STD_LOGIC;
           is_unlocked : in STD_LOGIC;
           modify_on : out STD_LOGIC;
           register_1_on : out STD_LOGIC;
           register_2_on : out STD_LOGIC;
           CLK : in STD_LOGIC);
end button_mechanism;

architecture Behavioral of button_mechanism is
signal choose_register : STD_LOGIC := '0';
signal modify_registers : STD_LOGIC := '0';
begin
    process (CLK) is
    begin
        if rising_edge(CLK) then
            if (button_1 = '1' and button_2 = '0') then
                    choose_register <= '0';
                    modify_registers <= '1';
                elsif (button_1 = '0' and button_2 = '1') then
                    choose_register <= '1';
                    modify_registers <= '1';
                else
                    choose_register <= choose_register;
                    if (button_reset = '1' or is_unlocked = '1') then
                        modify_registers <= '0';
                    end if;
                end if;
        end if;
    end process;
       
    modify_on <= modify_registers;
    register_1_on <= not choose_register;
    register_2_on <= choose_register;
end Behavioral;
