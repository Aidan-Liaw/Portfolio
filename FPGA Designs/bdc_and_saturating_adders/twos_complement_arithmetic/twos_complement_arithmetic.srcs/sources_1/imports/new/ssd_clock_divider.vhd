----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.08.2023 23:31:53
-- Design Name: 
-- Module Name: ssd_clock_divider - Behavioral
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

entity ssd_clock_divider is
    Port ( CLK_system : in STD_LOGIC;
           CLK_ssd_mux : out STD_LOGIC);
end ssd_clock_divider;

architecture Behavioral of ssd_clock_divider is
signal counter : integer range 1 to 131072;
signal state : STD_LOGIC := '0';
begin
    process (CLK_system)
    begin
    if rising_edge(CLK_system) then
--        if counter = 1024 then
        if counter = 131072 then
            counter <= 1;
            state <= not state;
        else
            counter <= counter + 1;
        end if;
    end if;
    end process;
CLK_ssd_mux <= state;
end Behavioral;
