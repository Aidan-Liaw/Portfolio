----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2023 14:42:18
-- Design Name: 
-- Module Name: test_bcd_adder - Behavioral
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

entity test_bcd_adder is
end test_bcd_adder;

architecture Behavioral of test_bcd_adder is
component bcd_adder is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           b : in STD_LOGIC_VECTOR(3 downto 0);
           c_in : in STD_LOGIC;
           sum : buffer STD_LOGIC_VECTOR(3 downto 0);
           c_out : buffer STD_LOGIC);
end component;

signal a : STD_LOGIC_VECTOR(3 downto 0);
signal b : STD_LOGIC_VECTOR(3 downto 0);
signal c_in : STD_LOGIC;
signal sum : STD_LOGIC_VECTOR(3 downto 0);
signal c_out : STD_LOGIC;
begin
    BCDAdder: bcd_adder port map (
        a => a,
        b => b,
        c_in => c_in,
        sum => sum,
        c_out => c_out
    );
    -- Overflow that gives a positive flag when it shouldn't 
    uut: process begin
        a <= "0000";
        b <= "0000";
        c_in <= '0';
        wait for 1ps;
        for idxA in 0 to 15 loop
            for idxB in 0 to 14 loop
                b <= b + 1;
                wait for 1ps;
            end loop;
            b <= "0000";
            a <= a + 1;
            wait for 1ps;
        end loop;
        
        a <= "0000";
        b <= "0000";
        c_in <= '1';
        wait for 1ps;
        for idxA in 0 to 15 loop
            for idxB in 0 to 14 loop
                b <= b + 1;
                wait for 1ps;
            end loop;
            b <= "0000";
            a <= a + 1;
            wait for 1ps;
        end loop;
    end process;

end Behavioral;
