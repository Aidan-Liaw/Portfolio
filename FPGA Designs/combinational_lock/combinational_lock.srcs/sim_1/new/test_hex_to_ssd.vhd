----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 15:38:50
-- Design Name: 
-- Module Name: test_hex_to_ssd - Behavioral
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

entity test_hex_to_ssd is
end test_hex_to_ssd;

architecture Behavioral of test_hex_to_ssd is
    component hex_to_ssd
    port ( hex : in STD_LOGIC_VECTOR (3 downto 0);
           ssd_out : buffer STD_LOGIC_VECTOR (7 downto 0));
    end component;
    signal hex : STD_LOGIC_VECTOR(3 downto 0);
    signal ssd_out : STD_LOGIC_VECTOR(7 downto 0);
begin
    uut: hex_to_ssd port map (
        hex => hex,
        ssd_out => ssd_out
    );
    input_gen : process begin
        hex <= "0000";
        for idx in 0 to 16 loop
            wait for 1ps;
            hex <= hex + '1';
        end loop;
    end process;
end Behavioral;
