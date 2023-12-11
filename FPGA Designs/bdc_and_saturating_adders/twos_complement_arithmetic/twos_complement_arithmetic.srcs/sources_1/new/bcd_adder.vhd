----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2023 14:02:03
-- Design Name: 
-- Module Name: bcd_adder - Behavioral
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

entity bcd_adder is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           b : in STD_LOGIC_VECTOR(3 downto 0);
           c_in : in STD_LOGIC;
           sum : buffer STD_LOGIC_VECTOR(3 downto 0);
           c_out : buffer STD_LOGIC);
end bcd_adder;
-- Need a logic diagram
-- Block with a plus for FA, need logic diagram for saturator and bcd correction
-- Block for flag calculator
architecture Behavioral of bcd_adder is
component ripple_carry_adder is
    generic (
        fa_count : integer := 4
    );
    
    Port ( a : in STD_LOGIC_VECTOR (fa_count-1 downto 0);
           b : in STD_LOGIC_VECTOR (fa_count-1 downto 0);
           ripple_carry_c_in : in STD_LOGIC;
           saturation_enable : in STD_LOGIC;
           
           sum : buffer STD_LOGIC_VECTOR (fa_count-1 downto 0);
           zero_flag : out STD_LOGIC;
           negative_flag : out STD_LOGIC;
           ripple_carry_c_out : buffer STD_LOGIC;
           overflow_flag : buffer STD_LOGIC);
end component;

signal saturated_a : STD_LOGIC_VECTOR(3 downto 0);
signal saturated_b : STD_LOGIC_VECTOR(3 downto 0);
signal sum_uncorrected : STD_LOGIC_VECTOR(3 downto 0);
signal carry_out_on_in_adder : STD_LOGIC;
signal carry_out_on_out_adder : STD_LOGIC;
signal correction_values : STD_LOGIC_VECTOR(3 downto 0);
begin
    AdderIn: ripple_carry_adder
    generic map (
        fa_count => 4
    ) 
    port map (
        a => saturated_a,
        b => saturated_b,
        ripple_carry_c_in => c_in,
        saturation_enable => '0',
        sum => sum_uncorrected,
        zero_flag => open,
        negative_flag => open,
        ripple_carry_c_out => carry_out_on_in_adder,
        overflow_flag => open
    );
    AdderOut: ripple_carry_adder 
    generic map (
        fa_count => 4
    ) 
    port map (
        a => sum_uncorrected,
        b => correction_values,
        ripple_carry_c_in => '0',
        saturation_enable => '0',
        sum => sum,
        zero_flag => open,
        negative_flag => open,
        ripple_carry_c_out => carry_out_on_out_adder,
        overflow_flag => open
    );
    process (a, b, c_in, sum_uncorrected, carry_out_on_in_adder, carry_out_on_out_adder) is
    begin
        if (a = "1010" or a = "1011" 
            or a = "1100" or a = "1101"
            or a = "1110" or a = "1111") then
            saturated_a <= "1001";
        else
            saturated_a <= a;
        end if;
        
        if (b = "1010" or b = "1011" 
            or b = "1100" or b = "1101"
            or b = "1110" or b = "1111") then
            saturated_b <= "1001";
        else
            saturated_b <= b;
        end if;
        
        if (carry_out_on_out_adder = '1' or carry_out_on_in_adder = '1') then
            c_out <= '1';
        else
            c_out <= '0';
        end if;
        
        if (sum_uncorrected = "1010" or sum_uncorrected = "1011" 
            or sum_uncorrected = "1100" or sum_uncorrected = "1101"
            or sum_uncorrected = "1110" or sum_uncorrected = "1111"
            or carry_out_on_in_adder = '1') then
            correction_values <= "0110";
        else
            correction_values <= "0000";
        end if;
    end process;
end Behavioral;
