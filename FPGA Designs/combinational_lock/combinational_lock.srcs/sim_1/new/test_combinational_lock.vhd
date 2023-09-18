----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.08.2023 09:17:17
-- Design Name: 
-- Module Name: test_combinational_lock - Behavioral
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

entity test_combinational_lock is
end test_combinational_lock;

architecture Behavioral of test_combinational_lock is
component combinational_lock
    port (switches_A : in STD_LOGIC_VECTOR (3 downto 0);
          switches_B : in STD_LOGIC_VECTOR (3 downto 0);
          button_1 : in STD_LOGIC;
          button_2 : in STD_LOGIC;
          button_reset : in STD_LOGIC;
          lock : out STD_LOGIC;
          unlock : out STD_LOGIC;
          ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
          anode_select : out STD_LOGIC_VECTOR (3 downto 0);
          CLK100MHZ : buffer STD_LOGIC);
end component;

signal switches_A : STD_LOGIC_VECTOR (3 downto 0);
signal switches_B : STD_LOGIC_VECTOR (3 downto 0);
signal button_1 : STD_LOGIC;
signal button_2 : STD_LOGIC;
signal button_reset : STD_LOGIC;
signal lock : STD_LOGIC;
signal unlock : STD_LOGIC;
signal ssd_out : STD_LOGIC_VECTOR (7 downto 0);
signal anode_select : STD_LOGIC_VECTOR (3 downto 0);
signal CLK100MHZ : STD_LOGIC;
begin
    uut: combinational_lock port map (
        switches_A => switches_A,
        switches_B => switches_B,
        button_1 => button_1,
        button_2 => button_2,
        button_reset => button_reset,
        lock => lock,
        unlock => unlock,
        ssd_out => ssd_out,
        anode_select => anode_select,
        CLK100MHZ => CLK100MHZ
    );

    input_gen : process
    variable test_pattern_1 : STD_LOGIC_VECTOR (31 downto 0) := "0100"&"1000"&"0000"&"0111"&"0111"&"0101"&"1000"&"0001";
    begin
        switches_A <= "0000";
        switches_B <= "0000";
        button_1 <= '1';
        button_2 <= '0';
        button_reset <= '0';
        CLK100MHZ <= '0';
        -- Should be 4 downto 1
        for idx in 1 to 4 loop
            if idx mod 2 = 1 then
                button_1 <= '1';
                button_2 <= '0';
                wait for 1ps;
                switches_A <= test_pattern_1(((5-idx)*8) - 1 downto ((5-idx)*8) - 4);
                switches_B <= test_pattern_1(((5-idx)*8) - 5 downto ((5-idx)*8) - 8);
                CLK100MHZ <= '1';
                wait for 1ps;
                CLK100MHZ <= '0';
                wait for 1ps;
                CLK100MHZ <= '1';
                wait for 1ps;
                CLK100MHZ <= '0';
                wait for 1ps;
            elsif idx mod 2 = 0 then
                button_1 <= '0';
                button_2 <= '1';
                wait for 1ps;
                switches_A <= test_pattern_1(((5-idx)*8) - 1 downto ((5-idx)*8) - 4);
                switches_B <= test_pattern_1(((5-idx)*8) - 5 downto ((5-idx)*8) - 8);
                CLK100MHZ <= '1';
                wait for 1ps;
                CLK100MHZ <= '0';
                wait for 1ps;
                CLK100MHZ <= '1';
                wait for 1ps;
                CLK100MHZ <= '0';
                wait for 1ps;
            end if;
        end loop;
        button_reset <= '1';
        CLK100MHZ <= '1';
        wait for 1ps;
        button_reset <= '0';
        CLK100MHZ <= '0';
        wait for 1ps;
    end process;
end Behavioral;
