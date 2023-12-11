----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.09.2023 14:21:08
-- Design Name: 
-- Module Name: test_sequence_detector - Behavioral
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

entity test_sequence_detector is
end test_sequence_detector;

architecture Behavioral of test_sequence_detector is
component sequence_detector is
    Port ( input : in STD_LOGIC;
           reset : in STD_LOGIC;
           CLK : in STD_LOGIC;
           flag_out : out STD_LOGIC);
end component;

signal input : STD_LOGIC;
signal reset : STD_LOGIC;
signal CLK : STD_LOGIC;
signal flag_out : STD_LOGIC;
signal test_string_1 : STD_LOGIC_VECTOR (4 downto 0) := "11001";
signal test_string_2 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
signal test_string_3 : STD_LOGIC_VECTOR (9 downto 0) := "1110011001";
begin
    SequenceDetector: sequence_detector port map (
        input => input,
        reset => reset,
        CLK => CLK,
        flag_out => flag_out
    );
    
    uut: process begin
        reset <= '1';
        for idx1 in 0 to 4 loop
            input <= test_string_1(4 - idx1);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if (flag_out = '1' and idx1 = 4) then
                assert not (flag_out = '1' and idx1 = 4) report "Flag output is valid" severity note;
            elsif (flag_out = '0' and idx1 /= 4) then
                assert not (flag_out = '0' and idx1 /= 4) report "Flag output is valid" severity note;
            else
                assert not ((flag_out = '1' and idx1 /= 4) or (flag_out = '1' and idx1 = 4)) report "Flag output is invalid" severity failure;
            end if;
        end loop;
        
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '1') then
            assert not (flag_out = '1') report "Flag output is valid" severity note;
        else
            assert (flag_out = '1') report "Flag output is invalid" severity failure;
        end if;
        
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        
        
        for idx2 in 0 to 4 loop
            input <= test_string_2(4 - idx2);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if (flag_out = '0') then
                assert not (flag_out = '0') report "Flag output is valid" severity note;
            else
                assert (flag_out = '0') report "Flag output is invalid" severity failure;
            end if;
        end loop;
        
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
                assert not (flag_out = '0') report "Flag output is valid" severity note;
            else
                assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        
        -- "1110011001"
        -- "0123456789"
        for idx3 in 0 to 9 loop
            input <= test_string_3(9 - idx3);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if ((idx3 = 5 or idx3 = 6 or idx3 = 9) and flag_out = '1') then
                assert not ((idx3 = 5 or idx3 = 6 or idx3 = 9) and flag_out = '1') report "Flag output is valid" severity note;
            elsif ((idx3 /= 5 and idx3 /= 6 and idx3 /= 9) and flag_out = '0') then
                assert not ((idx3 /= 5 and idx3 /= 6 and idx3 /= 9) and flag_out = '0') report "Flag output is valid" severity note;
            else
                assert not (((idx3 = 5 or idx3 = 6 or idx3 = 9) and flag_out = '0') 
                or ((idx3 /= 5 and idx3 /= 6 and idx3 /= 9) and flag_out = '1')) report "Flag output is invalid" severity failure;
            end if;
        end loop;
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '1') then
            assert not (flag_out = '1') report "Flag output is valid" severity note;
        else
            assert (flag_out = '1') report "Flag output is invalid" severity failure;
        end if;
        
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        
        
        
        for idx1 in 0 to 4 loop
            input <= test_string_1(4 - idx1);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if (flag_out = '1' and idx1 = 4) then
                assert not (flag_out = '1' and idx1 = 4) report "Flag output is valid" severity note;
            elsif (flag_out = '0' and idx1 /= 4) then
                assert not (flag_out = '0' and idx1 /= 4) report "Flag output is valid" severity note;
            else
                assert not ((flag_out = '1' and idx1 /= 4) or (flag_out = '1' and idx1 = 4)) report "Flag output is invalid" severity failure;
            end if;
        end loop;
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '1') then
            assert not (flag_out = '1') report "Flag output is valid" severity note;
        else 
            assert (flag_out = '1') report "Flag output is valid" severity failure;
        end if;
        
        for idx1 in 0 to 4 loop
            input <= test_string_1(4 - idx1);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if (flag_out = '1' and idx1 = 4) then
                assert not (flag_out = '1') report "Flag output is valid" severity note;
            elsif (flag_out = '0' and idx1 /= 4) then
                assert not (flag_out = '0' and idx1 /= 4) report "Flag output is valid" severity note;
            else
                assert not ((flag_out = '1' and idx1 /= 4) or (flag_out = '1' and idx1 = 4)) report "Flag output is invalid" severity failure;
            end if;
        end loop;
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '1') then
            assert not (flag_out = '1') report "Flag output is valid" severity note;
        else 
            assert (flag_out = '1') report "Flag output is valid" severity failure;
        end if;
        
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else 
            assert (flag_out = '0') report "Flag output is valid" severity failure;
        end if;
        
        for idx1 in 0 to 4 loop
            input <= test_string_1(4 - idx1);
            CLK <= '0';
            wait for 1ps;
            CLK <= '1';
            wait for 1ps;
            if (flag_out = '1' and idx1 = 4) then
                assert not (flag_out = '1') report "Flag output is valid" severity note;
            elsif (flag_out = '0' and idx1 /= 4) then
                assert not (flag_out = '0' and idx1 /= 4) report "Flag output is valid" severity note;
            else
                assert not ((flag_out = '1' and idx1 /= 4) or (flag_out = '1' and idx1 = 4)) report "Flag output is invalid" severity failure;
            end if;
        end loop;
        reset <= '0';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        reset <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        input <= '0';
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
        CLK <= '0';
        wait for 1ps;
        CLK <= '1';
        wait for 1ps;
        if (flag_out = '0') then
            assert not (flag_out = '0') report "Flag output is valid" severity note;
        else
            assert (flag_out = '0') report "Flag output is invalid" severity failure;
        end if;
    end process;
end Behavioral;
