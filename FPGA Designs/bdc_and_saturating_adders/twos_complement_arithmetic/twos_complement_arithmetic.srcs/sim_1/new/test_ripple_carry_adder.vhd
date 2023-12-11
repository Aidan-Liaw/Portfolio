----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2023 15:35:45
-- Design Name: 
-- Module Name: test_ripple_carry_adder - Behavioral
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

entity test_ripple_carry_adder is
end test_ripple_carry_adder;

architecture Behavioral of test_ripple_carry_adder is
    component ripple_carry_adder
        generic (
            fa_count : integer := 16
        );
        
        Port ( a : in STD_LOGIC_VECTOR (fa_count-1 downto 0);
               b : in STD_LOGIC_VECTOR (fa_count-1 downto 0);
               ripple_carry_c_in : in STD_LOGIC;
               saturation_enable : in STD_LOGIC;
               
               sum : buffer STD_LOGIC_VECTOR (fa_count-1 downto 0);
               zero_flag : out STD_LOGIC;
               negative_flag : out STD_LOGIC;
               ripple_carry_c_out : buffer STD_LOGIC;
               overflow_flag : buffer STD_LOGIC);
    end component;
    
    signal a : STD_LOGIC_VECTOR (16-1 downto 0);
    signal b : STD_LOGIC_VECTOR (16-1 downto 0);
    signal ripple_carry_c_in : STD_LOGIC;
    signal saturation_enable : STD_LOGIC;
    
    signal sum : STD_LOGIC_VECTOR (16-1 downto 0);
    signal zero_flag : STD_LOGIC;
    signal negative_flag : STD_LOGIC;
    signal ripple_carry_c_out : STD_LOGIC;
    signal overflow_flag : STD_LOGIC;
begin
    uut : ripple_carry_adder
    generic map (
        fa_count => 16
    ) 
    port map (
        a => a,
        b => b,
        ripple_carry_c_in => ripple_carry_c_in,
        saturation_enable => saturation_enable,
        sum => sum,
        zero_flag => zero_flag,
        negative_flag => negative_flag,
        ripple_carry_c_out => ripple_carry_c_out,
        overflow_flag => overflow_flag
    );
    
    input_gen : process begin
    a <= "0000"&"0000"&"0000"&"0000";
    b <= "0000"&"0000"&"0000"&"0000";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    a <= "0111"&"1111"&"1111"&"1111";
    b <= "0111"&"1111"&"1111"&"1111";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = -2 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = -2 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = -2 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    saturation_enable <= '1';
    wait for 1ps;
    if (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    ripple_carry_c_in <= '1';
    wait for 1ps;
    if (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 32767 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    
    a <= "1000"&"0000"&"0000"&"0000";
    b <= "1000"&"0000"&"0000"&"0000";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = 0 and overflow_flag = '1' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') then
        assert not (signed(sum) = 0 and overflow_flag = '1' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 0 and overflow_flag = '1' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    saturation_enable <= '1';
    wait for 1ps;
    if (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    ripple_carry_c_in <= '1';
    wait for 1ps;
    if (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = -32768 and overflow_flag = '1' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    a <= "1111"&"1111"&"1111"&"1111";
    b <= "0000"&"0000"&"0000"&"0001";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') then
        assert not (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    saturation_enable <= '1';
    wait for 1ps;
    if (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') then
        assert not (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 0 and overflow_flag = '0' and zero_flag = '1' and negative_flag = '0' and ripple_carry_c_out = '1') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    a <= "1111"&"1111"&"1111"&"1111";
    b <= "1111"&"1111"&"1111"&"1110";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') then
        assert not (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    saturation_enable <= '1';
    wait for 1ps;
    if (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') then
        assert not (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = -3 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '1' and ripple_carry_c_out = '1') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    a <= "0000"&"1101"&"1001"&"1111";
    b <= "0101"&"0001"&"0000"&"1000";
    ripple_carry_c_in <= '0';
    saturation_enable <= '0';
    wait for 1ps;
    if (signed(sum) = 24231 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 24231 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 24231 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    ripple_carry_c_in <= '1';
    wait for 1ps;
    if (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    saturation_enable <= '1';
    wait for 1ps;
    if (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') then
        assert not (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output and flag outputs are valid" severity note;
    else
        assert (signed(sum) = 24232 and overflow_flag = '0' and zero_flag = '0' and negative_flag = '0' and ripple_carry_c_out = '0') 
        report "Sum output or flag outputs are invalid" severity failure;
    end if;
    
    end process;
end Behavioral;
