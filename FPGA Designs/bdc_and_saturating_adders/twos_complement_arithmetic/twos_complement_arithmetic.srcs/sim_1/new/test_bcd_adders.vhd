----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2023 21:48:05
-- Design Name: 
-- Module Name: test_bcd_adders - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_bcd_adders is
end test_bcd_adders;

architecture Behavioral of test_bcd_adders is
component bcd_adders_without_ssd_logic is
    generic (
        digit_count : integer := 2
    );
    Port ( 
        inputs : in STD_LOGIC_VECTOR((8 * digit_count)-1 downto 0);
        c_in : in STD_LOGIC;
        sums : buffer STD_LOGIC_VECTOR((4 * (digit_count + 1) - 1) downto 0)
    );
end component;

signal a : STD_LOGIC_VECTOR(3 downto 0);
signal b : STD_LOGIC_VECTOR(3 downto 0);
signal c : STD_LOGIC_VECTOR(3 downto 0);
signal d : STD_LOGIC_VECTOR(3 downto 0);
signal c_in : STD_LOGIC;

signal digit_0 : STD_LOGIC_VECTOR(3 downto 0);
signal digit_1 : STD_LOGIC_VECTOR(3 downto 0);
signal digit_2 : STD_LOGIC_VECTOR(3 downto 0);

begin
    BCDAdders: bcd_adders_without_ssd_logic 
    generic map(
        digit_count => 2
    )
    port map (
        inputs(3 downto 0) => a,
        inputs(7 downto 4) => b,
        inputs(11 downto 8) => c,
        inputs(15 downto 12) => d,
        c_in => c_in,
        sums(3 downto 0) => digit_0,
        sums(7 downto 4) => digit_1,
        sums(11 downto 8) => digit_2
    );
    
    uut: process begin
        a <= "0000";
        b <= "0000";
        c <= "0000";
        d <= "0000";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "0000" and digit_1 = "0000" and digit_2 = "0000") then
            assert not (digit_0 = "0000" and digit_1 = "0000" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0000" or digit_1 /= "0000" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "0001" and digit_1 = "0000" and digit_2 = "0000") then
            assert not (digit_0 = "0001" and digit_1 = "0000" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0001" or digit_1 /= "0000" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
                
        a <= "1000";
        b <= "0010";
        c <= "0000";
        d <= "0000";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "0000" and digit_1 = "0001" and digit_2 = "0000") then
            assert not (digit_0 = "0000" and digit_1 = "0001" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0000" or digit_1 /= "0001" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "0001" and digit_1 = "0001" and digit_2 = "0000") then
            assert not (digit_0 = "0001" and digit_1 = "0001" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0001" or digit_1 /= "0001" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "0000";
        b <= "0000";
        c <= "0010";
        d <= "0010";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "0000" and digit_1 = "0100" and digit_2 = "0000") then
            assert not (digit_0 = "0000" and digit_1 = "0100" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0000" or digit_1 /= "0100" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "0001" and digit_1 = "0100" and digit_2 = "0000") then
            assert not (digit_0 = "0001" and digit_1 = "0100" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "0001" or digit_1 /= "0100" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "0100";
        b <= "0100";
        c <= "0001";
        d <= "0001";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "0010" and digit_2 = "0000") then
            assert not (digit_0 = "1000" and digit_1 = "0010" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "0010" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "0010" and digit_2 = "0000") then
            assert not (digit_0 = "1001" and digit_1 = "0010" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "0010" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "1001";
        b <= "1001";
        c <= "0001";
        d <= "0001";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "0011" and digit_2 = "0000") then
            assert not (digit_0 = "1000" and digit_1 = "0011" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "0011" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "0011" and digit_2 = "0000") then
            assert not (digit_0 = "1001" and digit_1 = "0011" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "0011" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "1111";
        b <= "1111";
        c <= "0001";
        d <= "0001";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "0011" and digit_2 = "0000") then
            assert not (digit_0 = "1000" and digit_1 = "0011" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "0011" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "0011" and digit_2 = "0000") then
            assert not (digit_0 = "1001" and digit_1 = "0011" and digit_2 = "0000") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "0011" or digit_2 /= "0000") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "0100";
        b <= "0100";
        c <= "1000";
        d <= "1000";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "0110" and digit_2 = "0001") then
            assert not (digit_0 = "1000" and digit_1 = "0110" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "0110" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "0110" and digit_2 = "0001") then
            assert not (digit_0 = "1001" and digit_1 = "0110" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "0110" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "1001";
        b <= "1001";
        c <= "1001";
        d <= "1001";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "1001" and digit_2 = "0001") then
            assert not (digit_0 = "1000" and digit_1 = "1001" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "1001" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "1001" and digit_2 = "0001") then
            assert not (digit_0 = "1001" and digit_1 = "1001" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "1001" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
        
        a <= "1111";
        b <= "1111";
        c <= "1111";
        d <= "1111";
        c_in <= '0';
        wait for 1ps;
        if (digit_0 = "1000" and digit_1 = "1001" and digit_2 = "0001") then
            assert not (digit_0 = "1000" and digit_1 = "1001" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1000" or digit_1 /= "1001" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
        
        c_in <= '1';
        wait for 1ps;
        if (digit_0 = "1001" and digit_1 = "1001" and digit_2 = "0001") then
            assert not (digit_0 = "1001" and digit_1 = "1001" and digit_2 = "0001") report "Sum output is valid" severity note;
        else
            assert not (digit_0 /= "1001" or digit_1 /= "1001" or digit_2 /= "0001") report "Sum output is invalid" severity failure;
        end if;
    end process;

end Behavioral;
