----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.09.2023 23:36:42
-- Design Name: 
-- Module Name: bcd_adders_without_ssd_logic - Behavioral
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

entity bcd_adders_without_ssd_logic is
    generic (
        digit_count : integer := 2
    );
    Port ( 
        inputs : in STD_LOGIC_VECTOR((8 * digit_count)-1 downto 0);
        c_in : in STD_LOGIC;
        sums : buffer STD_LOGIC_VECTOR((4 * (digit_count + 1) - 1) downto 0)
    );
end bcd_adders_without_ssd_logic;

architecture Behavioral of bcd_adders_without_ssd_logic is
component bcd_adder is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           b : in STD_LOGIC_VECTOR(3 downto 0);
           c_in : in STD_LOGIC;
           sum : buffer STD_LOGIC_VECTOR(3 downto 0);
           c_out : buffer STD_LOGIC);
end component;

signal c_out_to_c_in : STD_LOGIC_VECTOR(digit_count-2 downto 0);
signal last_c_out : STD_LOGIC;
begin
    FirstBCDAdder: bcd_adder port map (
        a => inputs(3 downto 0),
        b => inputs(7 downto 4),
        c_in => c_in,
        sum => sums(3 downto 0),
        c_out => c_out_to_c_in(0)
    );
    BCDAdders: for idx in 1 to digit_count-2 generate
        BCDAdder: bcd_adder port map (
            a => inputs((8 * idx + 3) downto (8 * idx)),
            b => inputs((8 * idx + 7) downto (8 * idx + 4)),
            c_in => c_out_to_c_in(idx - 1),
            sum => sums((4 * idx + 3) downto (4 * idx)),
            c_out => c_out_to_c_in(idx)
        );
    end generate;
    LastBCDAdder: bcd_adder port map (
            a => inputs((8 * (digit_count-1) + 3) downto (8 * (digit_count-1))),
            b => inputs((8 * (digit_count-1) + 7) downto (8 * (digit_count-1) + 4)),
            c_in => c_out_to_c_in(digit_count - 2),
            sum => sums((4 * (digit_count-1) + 3) downto (4 * (digit_count-1))),
            c_out => last_c_out
    );
    LastSumAssigmnet: bcd_adder port map (
            a => "0000",
            b => "0000",
            c_in => last_c_out,
            sum => sums((4 * (digit_count + 1) - 1) downto (4 * (digit_count + 1) - 4)),
            c_out => open
    );
end Behavioral;
