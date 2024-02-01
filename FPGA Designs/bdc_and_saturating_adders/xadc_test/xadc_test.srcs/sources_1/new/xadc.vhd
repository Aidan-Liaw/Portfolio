----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.01.2024 11:56:46
-- Design Name: 
-- Module Name: xadc - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xadc is
  port (
    vinp_i : in STD_LOGIC_VECTOR(4 downto 0);
    vinn_i : in STD_LOGIC_VECTOR(4 downto 0);
    
    aux0_out : out STD_LOGIC_VECTOR (11 downto 0);
    aux1_out : out STD_LOGIC_VECTOR (11 downto 0);
    aux8_out : out STD_LOGIC_VECTOR (11 downto 0);
    aux9_out : out STD_LOGIC_VECTOR (11 downto 0);
    dedicated_out : out STD_LOGIC_VECTOR (11 downto 0);
    
    adc_clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end xadc;

architecture Behavioral of xadc is
component design_1_wrapper is
  port (
    Dout : out STD_LOGIC_VECTOR (11 downto 0);
    Vaux0_v_n : in STD_LOGIC;
    Vaux0_v_p : in STD_LOGIC;
    Vaux1_v_n : in STD_LOGIC;
    Vaux1_v_p : in STD_LOGIC;
    Vaux8_v_n : in STD_LOGIC;
    Vaux8_v_p : in STD_LOGIC;
    Vaux9_v_n : in STD_LOGIC;
    Vaux9_v_p : in STD_LOGIC;
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR (4 downto 0);
    clk_in1 : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    reset : in STD_LOGIC
  );
end component;

signal channel_out : STD_LOGIC_VECTOR (4 downto 0);
signal adc_out : STD_LOGIC_VECTOR (11 downto 0);
signal read_ready_out : STD_LOGIC;

begin

XADC: design_1_wrapper
    port map (
        Dout => adc_out,
        Vaux0_v_n => vinn_i(1), Vaux0_v_p => vinp_i(1),
        Vaux1_v_n => vinn_i(2), Vaux1_v_p => vinp_i(2),
        Vaux8_v_n => vinn_i(0), Vaux8_v_p => vinp_i(0),
        Vaux9_v_n => vinn_i(3), Vaux9_v_p => vinp_i(3),
        Vp_Vn_v_n => vinn_i(4), Vp_Vn_v_p => vinp_i(4),
        channel_out => channel_out,
        clk_in1 => adc_clk,
        drdy_out => read_ready_out,
        reset => reset
);

process(adc_clk, reset)
    begin
        if rising_edge(adc_clk) then
            if (reset = '1') then
                aux0_out <= (others => '0');
                aux1_out <= (others => '0');
                aux8_out <= (others => '0');
                aux9_out <= (others => '0');
                dedicated_out <= (others => '0');
            elsif (read_ready_out = '1') then
                -- Vp/Vn at 03h
                dedicated_out <= adc_out when channel_out = "00011" else (others => '0');
                -- aux0 at 10h
                aux0_out <= adc_out when channel_out = "10000" else (others => '0');
                -- aux1 at 11h
                aux1_out <= adc_out when channel_out = "10001" else (others => '0');
                -- aux8 at 11h
                aux8_out <= adc_out when channel_out = "11000" else (others => '0');
                -- aux9 at 11h
                aux9_out <= adc_out when channel_out = "11001" else (others => '0');
            end if;
        end if;
    end process;
end Behavioral;
