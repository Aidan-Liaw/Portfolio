----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.08.2023 17:29:53
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ssd_mux is
    generic (
        ssd_used_count : integer := 3;
        ssd_total_count : integer := 8
    );
    Port ( ssds_in : in STD_LOGIC_VECTOR ((8 * ssd_used_count - 1) downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           anode_select : buffer STD_LOGIC_VECTOR ((ssd_total_count-1) downto 0);
           CLK : in STD_LOGIC);
end ssd_mux;

architecture Behavioral of ssd_mux is

signal anode_select_on : 
    STD_LOGIC_VECTOR((ssd_used_count - 1) downto 0) 
    := ((ssd_used_count - 1) => '0', others => '1');
signal anode_select_number : integer range (ssd_used_count - 1) downto 0 := (ssd_used_count - 1);
    
begin
    anode_select((ssd_total_count-1) downto (ssd_total_count-ssd_used_count)) <= anode_select_on;
    anode_select((ssd_total_count-ssd_used_count-1) downto 0) <= (others => '1');
    process (CLK) is
    begin
        if rising_edge(CLK) then
            ssd_out <= ssds_in((8*anode_select_number + 7) downto (8*anode_select_number));
            anode_select_on <= (others => '1');
            anode_select_on(anode_select_number) <= '0';
            if (anode_select_number = 0) then
                anode_select_number <= (ssd_used_count - 1);
            else
                anode_select_number <= anode_select_number - 1;
            end if;
        end if;
    end process;
end Behavioral;
