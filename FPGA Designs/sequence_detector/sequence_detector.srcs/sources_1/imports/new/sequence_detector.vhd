----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2023 09:45:34
-- Design Name: 
-- Module Name: sequence_detector - Behavioral
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

entity sequence_detector is
    Port ( input : in STD_LOGIC;
           reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : out STD_LOGIC);
end sequence_detector;

architecture Behavioral of sequence_detector is
component flag_output_handler is
    Port ( sequence_detected : in STD_LOGIC;
           reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : out STD_LOGIC);
end component;

type state_type is (S0, S1, S2, S3, S4, S5);
signal state : state_type := S0;
signal sequence_detected : STD_LOGIC := '0';
begin
    FlagOutputHandler: flag_output_handler port map (
        sequence_detected => sequence_detected,
        reset => reset,
        CLK => CLK,
        flag_out => flag_out
    );
    
    process (CLK, reset) begin
        if (rising_edge(CLK) or falling_edge(reset)) then            
            if (reset = '0') then
                state <= S0;
                sequence_detected <= '0';
            elsif (state = S0 and input = '0') then
                state <= S1;
                sequence_detected <= '1';
            elsif (state = S0 and input = '1') then
                state <= S1;
            elsif (state = S1 and input = '0') then
                state <= S0;
            elsif (state = S1 and input = '1') then
                state <= S2;
            elsif (state = S2 and input = '0') then
                state <= S3;
            elsif (state = S2 and input = '1') then
                state <= S2;
            elsif (state = S3 and input = '0') then
                state <= S4;    
            elsif (state = S3 and input = '1') then
                state <= S0;
            elsif (state = S4 and input = '0') then
                state <= S0;           
            elsif (state = S4 and input = '1') then
                state <= S5;
                sequence_detected <= '1';
            elsif (state = S5 and input = '0') then
                state <= S0;
                sequence_detected <= '0';
            elsif (state = S5 and input = '1') then
                state <= S2;
                sequence_detected <= '0';
            end if;
        end if;
    end process;
end Behavioral;
