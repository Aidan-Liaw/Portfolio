----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.01.2024 11:07:43
-- Design Name: 
-- Module Name: adc - Behavioral
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

entity adc is
    Port ( adc_dat_a_in : in STD_LOGIC_VECTOR(13 downto 0);
           adc_dat_b_in : in STD_LOGIC_VECTOR(13 downto 0);
           adc_clk : in STD_LOGIC;
           adc_clk_source : out STD_LOGIC_VECTOR(1 downto 0);
           adc_cdcs_out : out STD_LOGIC;
           adc_dat_a_out : out STD_LOGIC_VECTOR(13 downto 0);
           adc_dat_b_out : out STD_LOGIC_VECTOR(13 downto 0);
           adc_rst_in : in STD_LOGIC);
end adc;

architecture Behavioral of adc is
signal adc_dat_a : STD_LOGIC_VECTOR(13 downto 0);
signal adc_dat_b : STD_LOGIC_VECTOR(13 downto 0);

begin
adc_cdcs_out  <= '1';
adc_clk_source <= "10";

adc_dat_a_out <= adc_dat_a;
adc_dat_b_out <= adc_dat_b;

READ_ADC: process (adc_clk)
begin
    if rising_edge(adc_clk) then
        if adc_rst_in = '0' then
            adc_dat_a <= (others => '0');
            adc_dat_b <= (others => '0');
        else 
            adc_dat_a <= adc_dat_a_in;
            adc_dat_b <= adc_dat_b_in;
        end if;
        
--        adc_dat_a <= adc_dat_a_in;
--        adc_dat_b <= adc_dat_b_in;
    end if;
end process;

end Behavioral;
