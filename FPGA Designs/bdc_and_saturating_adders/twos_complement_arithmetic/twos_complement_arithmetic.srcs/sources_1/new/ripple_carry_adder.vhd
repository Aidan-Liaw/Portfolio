----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2023 15:13:28
-- Design Name: 
-- Module Name: ripple_carry_adder - Behavioral
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

entity ripple_carry_adder is
    generic (
        fa_count : integer := 4
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
end ripple_carry_adder;

architecture Behavioral of ripple_carry_adder is

component full_adder
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c_in : in STD_LOGIC;
           sum : buffer STD_LOGIC;
           c_out : out STD_LOGIC);
end component;

component not_elementwise_or_vector
    generic (
            input_count : integer := fa_count
        );
        
    Port ( inputs : in STD_LOGIC_VECTOR (input_count-1 downto 0);
           output : out STD_LOGIC);
end component;

component saturation is
    generic (
        sum_count : integer := fa_count
    );
    
    Port ( sum_in : in STD_LOGIC_VECTOR (sum_count-1 downto 0);
           sum_with_saturation : buffer STD_LOGIC_VECTOR (sum_count-1 downto 0);
           saturation_enable : in STD_LOGIC;
           overflow_flag : in STD_LOGIC);
end component;

signal c_out_to_c_in : STD_LOGIC_VECTOR(fa_count-2 downto 0);
signal last_c_out_to_ripple_carry_c_out : STD_LOGIC;
signal sum_to_saturation_in : STD_LOGIC_VECTOR (fa_count-1 downto 0);

begin
    FullAdders: for idx in 0 to fa_count-1 generate
        FAFirst: if idx = 0 generate
            First: full_adder 
            port map (
                 a => a(idx),
                 b => b(idx),
                 c_in => ripple_carry_c_in,
                 sum => sum_to_saturation_in(idx),
                 c_out => c_out_to_c_in(idx)
            );
        end generate;
        
        FAMiddle: if idx /= 0 and idx /= fa_count-1 generate
            Middle: full_adder 
            port map (
                 a => a(idx),
                 b => b(idx),
                 c_in => c_out_to_c_in(idx-1),
                 sum => sum_to_saturation_in(idx),
                 c_out => c_out_to_c_in(idx)
            );
        end generate;
        
        FALast: if idx = fa_count-1 generate
            Last: full_adder 
            port map (
                 a => a(idx),
                 b => b(idx),
                 c_in => c_out_to_c_in(idx-1),
                 sum => sum_to_saturation_in(idx),
                 c_out => last_c_out_to_ripple_carry_c_out
            );
        end generate;
    end generate;
    
    ZeroFlag: not_elementwise_or_vector 
    generic map (
        input_count => fa_count
    )
    port map (
        inputs => sum,
        output => zero_flag
    );
    
    NegativeFlag: negative_flag <= sum(fa_count-1);
    
--    CarryOutFlag: ripple_carry_c_out <= '0' when (saturation_enable and (last_c_out_ripple_carry_c_out xor c_out_to_c_in(fa_count - 2))) = '1'
--    else last_c_out_ripple_carry_c_out;

    CarryOutFlag: ripple_carry_c_out <= last_c_out_to_ripple_carry_c_out and (not saturation_enable or c_out_to_c_in(fa_count - 2));
    
    OverflowFlag: overflow_flag <= last_c_out_to_ripple_carry_c_out xor c_out_to_c_in(fa_count - 2);
    
    SaturationLogic: saturation
    generic map (
        sum_count => fa_count
    )
    port map (
        sum_in => sum_to_saturation_in,
        sum_with_saturation => sum,
        saturation_enable => saturation_enable,
        overflow_flag => overflow_flag
    );
end Behavioral;
