----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.02.2024 15:17:01
-- Design Name: 
-- Module Name: record_control - Behavioral
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

entity record_control is
    port ( settings_in : in STD_LOGIC_VECTOR(31 downto 0);
           trigger_in : in STD_LOGIC;
           settings_out : out STD_LOGIC_VECTOR(31 downto 0);
           record_out : out STD_LOGIC;
           record_sets_finished_out : out STD_LOGIC;
           clk_in : in STD_LOGIC
    );
end record_control;

architecture Behavioral of record_control is
signal is_recording : STD_LOGIC := '0';
signal trigger_count : INTEGER := 0;
signal samples_count : INTEGER := -6;
signal finished_samples : STD_LOGIC := '0';

type SET is (NO_SET, RECORDING_SET, SET_COMPLETE);
signal set_ctrl : SET := NO_SET;

type SAMPLE is (NO_SAMPLES, SAMPLING, SAMPLES_COMPLETE);
signal sample_ctrl : SAMPLE := NO_SAMPLES;

begin
record_out <= is_recording;
settings_out <= settings_in;
record_sets_finished_out <= finished_samples;

process (clk_in) is
begin
    if (rising_edge(clk_in)) then
        if (trigger_in = '1' and samples_count = -6) then
            samples_count <= samples_count + 1;
            finished_samples <= '0';
        else
            if (finished_samples /= '1') then
                if (samples_count < 0) then
                    samples_count <= samples_count + 1;
                elsif (samples_count < TO_INTEGER(UNSIGNED(settings_in(15 downto 0)))) then
                    is_recording <= '1';
                    samples_count <= samples_count + 1;
                else
                    is_recording <= '0';
                    samples_count <= -6;
                    if (trigger_count + 1 = TO_INTEGER(UNSIGNED(settings_in(31 downto 16)))) then
                        finished_samples <= '1'; 
                        trigger_count <= 0;
                    else
                        trigger_count <= trigger_count + 1;
                    end if;
                end if;
            end if;
        end if;
    end if;
end process;
end Behavioral;
