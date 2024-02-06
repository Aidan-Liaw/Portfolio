----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2024 16:49:40
-- Design Name: 
-- Module Name: test_record_control - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_record_control is
end test_record_control;

architecture Behavioral of test_record_control is
component record_control is
    port ( settings_in : in STD_LOGIC_VECTOR(31 downto 0);
           trigger_in : in STD_LOGIC;
           settings_out : out STD_LOGIC_VECTOR(31 downto 0);
           record_out : out STD_LOGIC;
           record_sets_finished_out : out STD_LOGIC;
           clk_in : in STD_LOGIC
    );
end component;

signal settings_in : STD_LOGIC_VECTOR(31 downto 0) := STD_LOGIC_VECTOR(TO_UNSIGNED(16#0002_0002#, 32));
signal trigger_in : STD_LOGIC := '0';
signal settings_out : STD_LOGIC_VECTOR(31 downto 0);
signal record_out : STD_LOGIC; 
signal record_sets_finished_out : STD_LOGIC;
signal clk_in : STD_LOGIC := '0';

begin

UUT: component record_control port map (
    settings_in => settings_in,
    trigger_in => trigger_in,
    settings_out => settings_out,
    record_out => record_out,
    record_sets_finished_out => record_sets_finished_out,
    clk_in => clk_in
);

process 
begin
    clk_in <= '1';
    trigger_in <= '1';
    wait for 1ps;
    clk_in <= '0';
    trigger_in <= '0';
    wait for 1ps;
    for idx in 0 to 20 loop
        clk_in <= not clk_in;
        wait for 1ps;
    end loop;
    clk_in <= '1';
    trigger_in <= '1';
    wait for 1ps;
    clk_in <= '0';
    trigger_in <= '0';
    wait for 1ps;
    for idx in 0 to 3 loop
        clk_in <= not clk_in;
        wait for 1ps;
    end loop;
    wait for 1ps;
    wait for 1ps;
    wait for 1ps;
    wait for 1ps;
end process;
end Behavioral;
