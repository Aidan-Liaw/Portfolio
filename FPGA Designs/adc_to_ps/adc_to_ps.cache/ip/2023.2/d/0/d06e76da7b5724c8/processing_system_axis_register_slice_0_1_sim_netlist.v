// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 31 14:43:58 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_axis_register_slice_0_1_sim_netlist.v
// Design      : processing_system_axis_register_slice_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_AXIS_SIGNAL_SET = "2" *) (* C_AXIS_TDATA_WIDTH = "32" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_NUM_SLR_CROSSINGS = "0" *) (* C_PIPELINES_MASTER = "0" *) (* C_PIPELINES_MIDDLE = "0" *) 
(* C_PIPELINES_SLAVE = "0" *) (* C_REG_CONFIG = "10" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* P_TPAYLOAD_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_register_slice_v1_1_29_axis_register_slice
   (aclk,
    aclk2x,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aclk2x;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_register_slice_v1_1_29_axisc_register_slice axisc_register_slice_0
       (.aclk(aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_register_slice_v1_1_29_axisc_register_slice
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tdata,
    aclk,
    s_axis_tvalid);
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  input [31:0]s_axis_tdata;
  input aclk;
  input s_axis_tvalid;

  wire aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;

  FDRE #(
    .INIT(1'b0)) 
    \NO_READY.m_valid_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(m_axis_tvalid),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \NO_READY.storage_data1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "processing_system_axis_register_slice_0_1,axis_register_slice_v1_1_29_axis_register_slice,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_register_slice_v1_1_29_axis_register_slice,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_tdata;

  wire aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_tready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "2" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_NUM_SLR_CROSSINGS = "0" *) 
  (* C_PIPELINES_MASTER = "0" *) 
  (* C_PIPELINES_MIDDLE = "0" *) 
  (* C_PIPELINES_SLAVE = "0" *) 
  (* C_REG_CONFIG = "10" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_TPAYLOAD_WIDTH = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_register_slice_v1_1_29_axis_register_slice inst
       (.aclk(aclk),
        .aclk2x(1'b0),
        .aclken(1'b1),
        .aresetn(1'b0),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b1),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b1),
        .s_axis_tready(NLW_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
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
