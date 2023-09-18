----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.08.2023 08:16:28
-- Design Name: 
-- Module Name: ssd_mux - Behavioral
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

entity ssd_mux is
    Port ( ssd_1 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_2 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_3 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_4 : in STD_LOGIC_VECTOR (7 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           anode_select : out STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC);
end ssd_mux;

architecture Behavioral of ssd_mux is

begin
    process (CLK) is
    variable branch_select : STD_LOGIC_VECTOR (1 downto 0) := "00";
    begin
        if rising_edge(CLK) then
            if branch_select = "00" then
                ssd_out <= ssd_1;
                anode_select <= "0001";
                branch_select := "01";
            elsif branch_select = "01" then                
                ssd_out <= ssd_2;
                anode_select <= "0010";
                branch_select := "10";
            elsif branch_select = "10" then
                ssd_out <= ssd_3;
                anode_select <= "0100";
                branch_select := "11";
            else
                ssd_out <= ssd_4;
                anode_select <= "1000";
                branch_select := "00";
            end if;
        end if;
    end process;
end Behavioral;
