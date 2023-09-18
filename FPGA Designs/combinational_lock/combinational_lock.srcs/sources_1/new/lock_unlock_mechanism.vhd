----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 21:37:22
-- Design Name: 
-- Module Name: lock_unlock_mechanism - Behavioral
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

entity lock_unlock_mechanism is
    Port ( comparators : in STD_LOGIC_VECTOR (3 downto 0);
           reset_line : in STD_LOGIC;
           lock_line : out STD_LOGIC;
           unlock_line : buffer STD_LOGIC;
           CLK : in STD_LOGIC);
end lock_unlock_mechanism;

architecture Behavioral of lock_unlock_mechanism is

begin
    process (CLK) is
    begin
        if rising_edge(CLK) then
--            if reset_line = '1' then
--                lock_line <= '1';
--                unlock_line <= '0';
--            else
                
--            end if;
            unlock_line <= comparators(0) and comparators(1) 
                            and comparators(2) and comparators(3) and (not reset_line);
            lock_line <= not (comparators(0) and comparators(1) and comparators(2) and comparators(3)) 
                            or reset_line;
        end if;
    end process;

end Behavioral;
