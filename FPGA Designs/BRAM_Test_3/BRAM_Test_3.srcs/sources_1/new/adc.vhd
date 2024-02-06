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
library UNISIM;
use UNISIM.VComponents.all;

entity adc is
    Port ( adc_dat_a_in : in STD_LOGIC_VECTOR(13 downto 0);
           adc_dat_b_in : in STD_LOGIC_VECTOR(13 downto 0);
           
           adc_clk_p_in : in STD_LOGIC;
           adc_clk_n_in : in STD_LOGIC;
           
           adc_clk_source : out STD_LOGIC_VECTOR(1 downto 0);
           adc_cdcs_out : out STD_LOGIC;
           adc_dat_a_out : out STD_LOGIC_VECTOR(13 downto 0);
           adc_dat_b_out : out STD_LOGIC_VECTOR(13 downto 0)
           );
end adc;

architecture Behavioral of adc is
signal adc_dat_a : STD_LOGIC_VECTOR(13 downto 0);
signal adc_dat_b : STD_LOGIC_VECTOR(13 downto 0);
signal adc_clk : STD_LOGIC;
signal adc_clk_buffered : STD_LOGIC;

begin
adc_cdcs_out  <= '1';
adc_clk_source <= "10";

adc_dat_a_out <= adc_dat_a;
adc_dat_b_out <= adc_dat_b;

READ_ADC: process (adc_clk)
begin
    if rising_edge(adc_clk) then
        adc_dat_a <= adc_dat_a_in;
        adc_dat_b <= adc_dat_b_in;
    end if;
end process;

IBUFDS_inst : IBUFDS
generic map (
   DIFF_TERM => FALSE, -- Differential Termination
   IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
   IOSTANDARD => "DEFAULT")
port map (
   O => adc_clk,  -- Buffer output
   I => adc_clk_p_in,  -- Diff_p buffer input (connect directly to top-level port)
   IB => adc_clk_n_in -- Diff_n buffer input (connect directly to top-level port)
);

BUFG_inst : BUFG
port map (
   O => adc_clk_buffered, -- 1-bit output: Clock output
   I => adc_clk  -- 1-bit input: Clock input
);

end Behavioral;
