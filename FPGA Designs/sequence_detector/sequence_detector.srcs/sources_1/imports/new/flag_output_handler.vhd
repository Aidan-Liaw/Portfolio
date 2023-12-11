----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2023 09:46:59
-- Design Name: 
-- Module Name: flag_output_handler - Behavioral
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

entity flag_output_handler is
    Port ( sequence_detected : in STD_LOGIC;
           reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : out STD_LOGIC);
end flag_output_handler;

architecture Behavioral of flag_output_handler is

type state_type is (S0, S1);
signal state : state_type := S0;
signal flag_value : STD_LOGIC := '0';


begin
    flag_out <= flag_value;
    process (sequence_detected, reset, CLK) begin
        if (rising_edge(CLK) or rising_edge(sequence_detected) or falling_edge(reset)) then
            if (reset = '0') then
                    state <= S0;
                    flag_value <= '0';
            elsif (state = S1) then
                state <= S0;
            elsif (state = S0 and sequence_detected = '0') then
                state <= S0;
                flag_value <= '0';
            elsif (state = S0 and sequence_detected = '1') then
                state <= S1;
                flag_value <= '1';
            end if;
        end if;
    end process;
end Behavioral;
