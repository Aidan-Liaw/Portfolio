// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 23:06:38 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_adc_to_axis_0_0_sim_netlist.v
// Design      : processing_system_adc_to_axis_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis
   (m_axis_tdata,
    D,
    adc_clk);
  output [19:0]m_axis_tdata;
  input [19:0]D;
  input adc_clk;

  wire [19:0]D;
  wire adc_clk;
  wire [19:0]m_axis_tdata;

  FDRE \m_axis_tdata_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "processing_system_adc_to_axis_0_0,adc_to_axis,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "adc_to_axis,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_a_dat,
    adc_b_dat,
    m_axis_tvalid,
    m_axis_tdata,
    adc_clk);
  input [13:0]adc_a_dat;
  input [13:0]adc_b_dat;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME adc_clk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input adc_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]adc_a_dat;
  wire [13:0]adc_b_dat;
  wire adc_clk;
  wire [25:0]\^m_axis_tdata ;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25:16] = \^m_axis_tdata [25:16];
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9:0] = \^m_axis_tdata [9:0];
  assign m_axis_tvalid = \<const1> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_axis U0
       (.D({adc_a_dat[13:4],adc_b_dat[13:4]}),
        .adc_clk(adc_clk),
        .m_axis_tdata({\^m_axis_tdata [25:16],\^m_axis_tdata [9:0]}));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
