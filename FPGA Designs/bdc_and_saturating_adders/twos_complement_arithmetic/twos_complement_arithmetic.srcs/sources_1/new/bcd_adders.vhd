----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.08.2023 15:41:33
-- Design Name: 
-- Module Name: bcd_adders - Behavioral
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

entity bcd_adders is
    generic (
        digit_count : integer := 2
    );
    Port ( 
        inputs : in STD_LOGIC_VECTOR((8 * digit_count)-1 downto 0);
        c_in : in STD_LOGIC;
--        c_out : buffer STD_LOGIC;
        
        ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
        anode_select : buffer STD_LOGIC_VECTOR (7 downto 0);
        CLK_100MHZ : in STD_LOGIC
    );
end bcd_adders;

architecture Behavioral of bcd_adders is
component bcd_adder is
    Port ( a : in STD_LOGIC_VECTOR(3 downto 0);
           b : in STD_LOGIC_VECTOR(3 downto 0);
           c_in : in STD_LOGIC;
           sum : buffer STD_LOGIC_VECTOR(3 downto 0);
           c_out : buffer STD_LOGIC);
end component;

component bcd_to_ssd is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component ssd_clock_divider is
    Port ( CLK_system : in STD_LOGIC;
           CLK_ssd_mux : out STD_LOGIC);
end component;

component ssd_mux is
    generic (
        ssd_used_count : integer := 3;
        ssd_total_count : integer := 8
    );
    Port ( ssds_in : in STD_LOGIC_VECTOR ((8 * ssd_used_count - 1) downto 0);
           ssd_out : out STD_LOGIC_VECTOR (7 downto 0);
           anode_select : buffer STD_LOGIC_VECTOR ((ssd_total_count-1) downto 0);
           CLK : in STD_LOGIC);
end component;

signal c_out_to_c_in : STD_LOGIC_VECTOR(digit_count-2 downto 0);
signal last_c_out : STD_LOGIC;
signal sums_to_ssd_inputs : STD_LOGIC_VECTOR((4 * digit_count - 1) downto 0);
signal ssd_inputs_to_SSDs : STD_LOGIC_VECTOR((8 * (digit_count + 1) - 1) downto 0);
signal ssd_clk : STD_LOGIC;
begin
    FirstBCDAdder: bcd_adder port map (
        a => inputs(3 downto 0),
        b => inputs(7 downto 4),
        c_in => c_in,
        sum => sums_to_ssd_inputs(3 downto 0),
        c_out => c_out_to_c_in(0)
    );
    BCDAdders: for idx in 1 to digit_count-2 generate
        BCDAdder: bcd_adder port map (
            a => inputs((8 * idx + 3) downto (8 * idx)),
            b => inputs((8 * idx + 7) downto (8 * idx + 4)),
            c_in => c_out_to_c_in(idx - 1),
            sum => sums_to_ssd_inputs((4 * idx + 3) downto (4 * idx)),
            c_out => c_out_to_c_in(idx)
        );
    end generate;
    LastBCDAdder: bcd_adder port map (
        a => inputs((8 * (digit_count-1) + 3) downto (8 * (digit_count-1))),
            b => inputs((8 * (digit_count-1) + 7) downto (8 * (digit_count-1) + 4)),
            c_in => c_out_to_c_in(digit_count - 2),
            sum => sums_to_ssd_inputs((4 * (digit_count-1) + 3) downto (4 * (digit_count-1))),
            c_out => last_c_out
    );
    
    GenerateBCDsToSSDs: for idx in 0 to digit_count generate
        BCDsToSSDs: if (idx /= digit_count) generate
            BCDToSSD: bcd_to_ssd port map (
                bcd => sums_to_ssd_inputs((4 * idx + 3) downto (4 * idx)),
                ssd_out => ssd_inputs_to_SSDs((8 * idx + 7) downto (8 * idx))
            );
        end generate;
        
        FinalBCDToSSDs: if (idx = digit_count) generate
            BCDToSSD: bcd_to_ssd port map (
                bcd(3 downto 1) => "000",
                bcd(0) => last_c_out,
                ssd_out => ssd_inputs_to_SSDs((8 * idx + 7) downto (8 * idx))
            );
        end generate;
    end generate;
    
    SSDCLK: ssd_clock_divider 
    port map ( 
        CLK_system => CLK_100MHZ,
        CLK_ssd_mux => ssd_clk
    );
    
    SSDMux: ssd_mux
    generic map(
        ssd_used_count => 3,
        ssd_total_count => 8
    )
    port map ( 
        ssds_in => ssd_inputs_to_SSDs,
        ssd_out => ssd_out,
        anode_select => anode_select,
        CLK => ssd_clk
    );
    
end Behavioral;
