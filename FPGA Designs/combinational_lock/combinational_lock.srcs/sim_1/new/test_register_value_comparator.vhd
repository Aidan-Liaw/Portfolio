----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 16:56:12
-- Design Name: 
-- Module Name: test_register_value_comparator - Behavioral
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

entity test_register_value_comparator is
end test_register_value_comparator;

architecture Behavioral of test_register_value_comparator is
component register_value_comparator
    port( register_input : in STD_LOGIC_VECTOR (3 downto 0);
           comparison : in STD_LOGIC_VECTOR (3 downto 0);
           is_same : out STD_LOGIC);
end component;

signal register_input : STD_LOGIC_VECTOR (3 downto 0);
signal comparison : STD_LOGIC_VECTOR (3 downto 0);
signal is_same : STD_LOGIC;
begin
    uut: register_value_comparator port map (
        register_input => register_input,
        comparison => comparison,
        is_same => is_same
    );
    input_gen : process begin
        register_input <= "0000";
        comparison <= "1010";
        for idx in 0 to 15 loop
            wait for 1ps;
            register_input <= register_input + '1';
        end loop;
    end process;
end Behavioral;
