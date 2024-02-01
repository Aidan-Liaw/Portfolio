----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2024 11:32:59
-- Design Name: 
-- Module Name: led - Behavioral
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

entity led is
    port (
        adc_dat_a : in STD_LOGIC_VECTOR(9 downto 0);
        adc_dat_b : in STD_LOGIC_VECTOR(9 downto 0);
        led_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end led;

architecture Behavioral of led is
constant leds1_on : INTEGER range 2**10-1 downto 0 := 2#00_00_00_00_11#;
constant leds2_on : INTEGER range 2**10-1 downto 0 := 2#00_00_00_11_11#;
constant leds3_on : INTEGER range 2**10-1 downto 0 := 2#00_00_00_11_11#;
constant leds4_on : INTEGER range 2**10-1 downto 0 := 2#00_00_11_11_11#;
constant leds5_on : INTEGER range 2**10-1 downto 0 := 2#00_11_11_11_11#;

begin
led_out <= adc_dat_a(7 downto 0);

--process (adc_dat_a)
--begin
--    if TO_INTEGER(unsigned(adc_dat_a)) >= leds5_on then
--        led_out(3 downto 0) <= "1111";
--    elsif TO_INTEGER(unsigned(adc_dat_a)) >= leds4_on then
--        led_out(3 downto 0) <= "0111";
--    elsif TO_INTEGER(unsigned(adc_dat_a)) >= leds3_on then
--        led_out(3 downto 0) <= "0011";
--    elsif TO_INTEGER(unsigned(adc_dat_a)) >= leds2_on then
--        led_out(3 downto 0) <= "0001";
--    elsif TO_INTEGER(unsigned(adc_dat_a)) >= leds1_on then
--        led_out(3 downto 0) <= "0000";
--    else
--        led_out(3 downto 0) <= "0000";
--    end if;
--end process;

--process (adc_dat_b)
--begin
--    if TO_INTEGER(unsigned(adc_dat_b)) >= leds5_on then
--        led_out(7 downto 4) <= "1111";
--    elsif TO_INTEGER(unsigned(adc_dat_b)) >= leds4_on then
--        led_out(7 downto 4) <= "0111";
--    elsif TO_INTEGER(unsigned(adc_dat_b)) >= leds3_on then
--        led_out(7 downto 4) <= "0011";
--    elsif TO_INTEGER(unsigned(adc_dat_b)) >= leds2_on then
--        led_out(7 downto 4) <= "0001";
--    elsif TO_INTEGER(unsigned(adc_dat_b)) >= leds1_on then
--        led_out(7 downto 4) <= "0000";
--    else
--        led_out(7 downto 4) <= "0000";
--    end if;
--end process;

end Behavioral;
