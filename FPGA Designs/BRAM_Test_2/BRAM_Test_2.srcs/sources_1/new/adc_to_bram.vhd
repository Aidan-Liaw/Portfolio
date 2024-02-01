----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.01.2024 14:15:52
-- Design Name: 
-- Module Name: adc_to_axis - Behavioral
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

entity adc_to_bram is
    port ( adc_dat_a_in : in STD_LOGIC_VECTOR(13 downto 0);
           adc_dat_b_in : in STD_LOGIC_VECTOR(13 downto 0);
           adc_clk : in STD_LOGIC;
           adc_clk_source : out STD_LOGIC_VECTOR (1 downto 0);
           adc_cdcs_out : out STD_LOGIC;
           adc_rst_in : in STD_LOGIC;
           
           bram_address : out STD_LOGIC_VECTOR(31 downto 0);
           bram_data : out STD_LOGIC_VECTOR(31 downto 0)
    );
end adc_to_bram;

architecture Behavioral of adc_to_bram is
ATTRIBUTE X_INTERFACE_INFO : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
ATTRIBUTE X_INTERFACE_PARAMETER of adc_rst_in : SIGNAL is "POLARITY ACTIVE_LOW";
-- ATTRIBUTE X_INTERFACE_PARAMETER of adc_clk : SIGNAL is "XIL_INTERFACENAME adc_clk, ASSOCIATED_BUSIF M_AXIS";

signal address : UNSIGNED(31 downto 0) := TO_UNSIGNED(16#42000000# - 1, 32);
begin
   adc_cdcs_out  <= '1';
   adc_clk_source <= "10";
   bram_address <= STD_LOGIC_VECTOR(address);
   
   process (adc_clk)
   begin
      if rising_edge(adc_clk) then
        if adc_rst_in = '0' then
            bram_data <= (others => '0');
            address <= TO_UNSIGNED(16#42000000# - 1, 32);
        else
            if (address /= TO_UNSIGNED(16#42003FFF#, 32)) then
                address <= address + 1;
            else
                address <= TO_UNSIGNED(16#42000000# - 1, 32);
            end if;
            bram_data <= "000000" & adc_dat_a_in(13 downto 4) & "000000" & adc_dat_b_in(13 downto 4);
        end if;
      end if;
   end process;
end Behavioral;
