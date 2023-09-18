----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.08.2023 14:58:15
-- Design Name: 
-- Module Name: test_switch_to_register - Behavioral
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

entity test_switch_to_register is
end test_switch_to_register;

architecture Behavioral of test_switch_to_register is
component switch_to_register
    port (switches : in STD_LOGIC_VECTOR (3 downto 0);
          digit_1 : buffer STD_LOGIC_VECTOR (3 downto 0);
          digit_2 : buffer STD_LOGIC_VECTOR (3 downto 0);
          button_A : in STD_LOGIC;
          button_B : in STD_LOGIC;
          reset_line : in STD_LOGIC;
          halt_line : in STD_LOGIC;
          CLK : in STD_LOGIC);
end component;

signal switches : STD_LOGIC_VECTOR (3 downto 0);
signal digit_1 : STD_LOGIC_VECTOR (3 downto 0);
signal digit_2 : STD_LOGIC_VECTOR (3 downto 0);
signal button_A : STD_LOGIC;
signal button_B : STD_LOGIC;
signal reset : STD_LOGIC;
signal halt : STD_LOGIC;
signal CLK : STD_LOGIC;

begin
    uut: switch_to_register port map (
        switches => switches,
        digit_1 => digit_1,
        digit_2 => digit_2,
        button_A => button_A,
        button_B => button_B,
        reset_line => reset,
        halt_line => halt,
        CLK => CLK
    );
    input_gen : process begin
        switches <= "0000";
        button_A <= '0';
        button_B <= '1';
        reset <= '0';
        halt <= '0';
        CLK <= '0';
        for idx in 0 to 15 loop
            wait for 1ps;
            CLK <= not CLK;
            switches <= switches + '1';
            if (button_A = '1') then
                button_A <= '0';
                button_B <= '1';
            else 
                button_A <= '1';
                button_B <= '0';
            end if;
        end loop;
        reset <= '1';
        CLK <= not CLK;
        wait for 1ps;
        CLK <= not CLK;
        wait for 1ps;
        halt <= '1';
        wait for 1ps;
        switches <= "0000";
        button_A <= '1';
        button_B <= '0';
        reset <= '0';
        halt <= '0';
        CLK <= '0';
        for idx in 0 to 15 loop
            wait for 1ps;
            CLK <= not CLK;
            switches <= switches + '1';
            if (button_A = '1') then
                button_A <= '0';
                button_B <= '1';
            else 
                button_A <= '1';
                button_B <= '0';
            end if;
        end loop;
        reset <= '0';
        CLK <= '0';
        wait for 1ps;
        reset <= '1';
        CLK <= '1';
        wait for 1ps;
        reset <= '0';
        CLK <= '0';
        wait for 1ps;
    end process;
end Behavioral;
