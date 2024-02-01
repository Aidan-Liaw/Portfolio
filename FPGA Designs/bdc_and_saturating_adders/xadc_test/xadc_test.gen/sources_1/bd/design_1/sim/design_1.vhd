--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Sun Jan 28 21:46:30 2024
--Host        : Lenovo running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
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
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in1 : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xadc_wiz_0_0 is
  port (
    di_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    daddr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    den_in : in STD_LOGIC;
    dwe_in : in STD_LOGIC;
    drdy_out : out STD_LOGIC;
    do_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dclk_in : in STD_LOGIC;
    reset_in : in STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp0 : in STD_LOGIC;
    vauxn0 : in STD_LOGIC;
    vauxp1 : in STD_LOGIC;
    vauxn1 : in STD_LOGIC;
    vauxp8 : in STD_LOGIC;
    vauxn8 : in STD_LOGIC;
    vauxp9 : in STD_LOGIC;
    vauxn9 : in STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component design_1_xadc_wiz_0_0;
  component design_1_clk_wiz_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_0;
  component design_1_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ila_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component design_1_xlconcat_0_1;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_1_0;
  signal Vaux0_0_1_V_N : STD_LOGIC;
  signal Vaux0_0_1_V_P : STD_LOGIC;
  signal Vaux1_0_1_V_N : STD_LOGIC;
  signal Vaux1_0_1_V_P : STD_LOGIC;
  signal Vaux8_0_1_V_N : STD_LOGIC;
  signal Vaux8_0_1_V_P : STD_LOGIC;
  signal Vaux9_0_1_V_N : STD_LOGIC;
  signal Vaux9_0_1_V_P : STD_LOGIC;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_clk_out1 : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  signal xadc_wiz_0_channel_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xadc_wiz_0_do_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xadc_wiz_0_drdy_out : STD_LOGIC;
  signal xadc_wiz_0_eoc_out : STD_LOGIC;
  signal xadc_wiz_0_eos_out : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_clk_wiz_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of Vaux0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux0 ";
  attribute X_INTERFACE_INFO of Vaux0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux0 ";
  attribute X_INTERFACE_INFO of Vaux1_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux1 ";
  attribute X_INTERFACE_INFO of Vaux1_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux1 ";
  attribute X_INTERFACE_INFO of Vaux8_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux8 ";
  attribute X_INTERFACE_INFO of Vaux8_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux8 ";
  attribute X_INTERFACE_INFO of Vaux9_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux9 ";
  attribute X_INTERFACE_INFO of Vaux9_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vaux9 ";
  attribute X_INTERFACE_INFO of Vp_Vn_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn ";
  attribute X_INTERFACE_INFO of Vp_Vn_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 Vp_Vn ";
  attribute X_INTERFACE_INFO of clk_in1 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN1 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_in1 : signal is "XIL_INTERFACENAME CLK.CLK_IN1, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of channel_out : signal is "xilinx.com:signal:data:1.0 DATA.CHANNEL_OUT DATA";
  attribute X_INTERFACE_PARAMETER of channel_out : signal is "XIL_INTERFACENAME DATA.CHANNEL_OUT, LAYERED_METADATA undef";
begin
  Dout(11 downto 0) <= xlslice_0_Dout(11 downto 0);
  Vaux0_0_1_V_N <= Vaux0_v_n;
  Vaux0_0_1_V_P <= Vaux0_v_p;
  Vaux1_0_1_V_N <= Vaux1_v_n;
  Vaux1_0_1_V_P <= Vaux1_v_p;
  Vaux8_0_1_V_N <= Vaux8_v_n;
  Vaux8_0_1_V_P <= Vaux8_v_p;
  Vaux9_0_1_V_N <= Vaux9_v_n;
  Vaux9_0_1_V_P <= Vaux9_v_p;
  Vp_Vn_0_1_V_N <= Vp_Vn_v_n;
  Vp_Vn_0_1_V_P <= Vp_Vn_v_p;
  channel_out(4 downto 0) <= xadc_wiz_0_channel_out(4 downto 0);
  clk_in1_0_1 <= clk_in1;
  drdy_out <= xadc_wiz_0_drdy_out;
  reset_0_1 <= reset;
clk_wiz: component design_1_clk_wiz_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_clk_out1,
      locked => NLW_clk_wiz_locked_UNCONNECTED,
      reset => reset_0_1
    );
ila_0: component design_1_ila_0_0
     port map (
      clk => clk_wiz_clk_out1,
      probe0(11 downto 0) => xlslice_0_Dout(11 downto 0),
      probe1(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      probe2(0) => xadc_wiz_0_eoc_out,
      probe3(0) => xadc_wiz_0_drdy_out,
      probe4(0) => xadc_wiz_0_eos_out
    );
xadc_wiz_0: component design_1_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      daddr_in(6 downto 0) => xlconcat_0_dout(6 downto 0),
      dclk_in => clk_wiz_clk_out1,
      den_in => xadc_wiz_0_eoc_out,
      di_in(15 downto 0) => B"0000000000000000",
      do_out(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      drdy_out => xadc_wiz_0_drdy_out,
      dwe_in => xlconstant_1_dout(0),
      eoc_out => xadc_wiz_0_eoc_out,
      eos_out => xadc_wiz_0_eos_out,
      reset_in => reset_0_1,
      vauxn0 => Vaux0_0_1_V_N,
      vauxn1 => Vaux1_0_1_V_N,
      vauxn8 => Vaux8_0_1_V_N,
      vauxn9 => Vaux9_0_1_V_N,
      vauxp0 => Vaux0_0_1_V_P,
      vauxp1 => Vaux1_0_1_V_P,
      vauxp8 => Vaux8_0_1_V_P,
      vauxp9 => Vaux9_0_1_V_P,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
xlconcat_0: component design_1_xlconcat_0_1
     port map (
      In0(4 downto 0) => xadc_wiz_0_channel_out(4 downto 0),
      In1(1 downto 0) => xlconstant_0_dout(1 downto 0),
      dout(6 downto 0) => xlconcat_0_dout(6 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(1 downto 0) => xlconstant_0_dout(1 downto 0)
    );
xlconstant_1: component design_1_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(15 downto 0) => xadc_wiz_0_do_out(15 downto 0),
      Dout(11 downto 0) => xlslice_0_Dout(11 downto 0)
    );
end STRUCTURE;
