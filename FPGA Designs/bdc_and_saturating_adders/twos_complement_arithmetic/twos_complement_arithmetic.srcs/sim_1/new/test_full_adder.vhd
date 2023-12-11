----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2023 15:04:26
-- Design Name: 
-- Module Name: test_full_adder - Behavioral
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

entity test_full_adder is
end test_full_adder;

architecture Behavioral of test_full_adder is
    component full_adder
        port (
            a, b, c_in : in std_logic;
            sum, c_out : out std_logic
        );
    end component;
    
    signal inputs : std_logic_vector(2 downto 0);
    signal sum : std_logic;
    signal c_out : std_logic;
begin
    uut : full_adder port map (
        a => inputs(0),
        b => inputs(1),
        c_in => inputs(2),
        sum => sum,
        c_out => c_out
    );
    
    input_gen : process begin
    inputs <= "000";
    for idx in 0 to 7 loop
        wait for 1ps;
        inputs <= inputs + '1';
    end loop;
    end process;

end Behavioral;
