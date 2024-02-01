// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Jan 31 14:22:33 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_s00_data_fifo_1_sim_netlist.v
// Design      : processing_system_s00_data_fifo_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_ACLKEN_CONV_MODE = "0" *) (* C_AXIS_SIGNAL_SET = "27" *) (* C_AXIS_TDATA_WIDTH = "32" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) 
(* C_ECC_MODE = "0" *) (* C_FAMILY = "zynq" *) (* C_FIFO_DEPTH = "64" *) 
(* C_FIFO_MEMORY_TYPE = "auto" *) (* C_FIFO_MODE = "2" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_PROG_EMPTY_THRESH = "5" *) (* C_PROG_FULL_THRESH = "11" *) (* C_SYNCHRONIZER_STAGE = "3" *) 
(* C_USE_ADV_FEATURES = "826486851" *) (* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) 
(* G_INDX_SS_TREADY = "0" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) 
(* G_MASK_SS_TDATA = "2" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) 
(* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) 
(* G_TASK_SEVERITY_INFO = "0" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* LP_CDC_SYNC_STAGES = "3" *) 
(* LP_CLOCKING_MODE = "common_clock" *) (* LP_ECC_MODE = "no_ecc" *) (* LP_FIFO_DEPTH = "64" *) 
(* LP_FIFO_MEMORY_TYPE = "auto" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) (* LP_PACKET_FIFO = "true" *) 
(* LP_PROG_EMPTY_THRESH = "5" *) (* LP_PROG_FULL_THRESH = "11" *) (* LP_RD_DATA_COUNT_WIDTH = "7" *) 
(* LP_RELATED_CLOCKS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_TDATA_WIDTH = "32" *) 
(* LP_TDEST_WIDTH = "1" *) (* LP_TID_WIDTH = "1" *) (* LP_TUSER_WIDTH = "1" *) 
(* LP_USE_ADV_FEATURES = "826486851" *) (* LP_WR_DATA_COUNT_WIDTH = "7" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_11_top
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    almost_full,
    prog_full,
    axis_wr_data_count,
    injectsbiterr,
    injectdbiterr,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    almost_empty,
    prog_empty,
    axis_rd_data_count,
    sbiterr,
    dbiterr);
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output almost_full;
  output prog_full;
  output [31:0]axis_wr_data_count;
  input injectsbiterr;
  input injectdbiterr;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output almost_empty;
  output prog_empty;
  output [31:0]axis_rd_data_count;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [6:0]\^axis_rd_data_count ;
  wire [6:0]\^axis_wr_data_count ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_46 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_54 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_55 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_63 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_64 ;
  wire \gen_fifo.xpm_fifo_axis_inst_n_65 ;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED ;
  wire [3:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED ;
  wire [0:0]\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6:0] = \^axis_rd_data_count [6:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6:0] = \^axis_wr_data_count [6:0];
  assign dbiterr = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* AXIS_DATA_WIDTH = "44" *) 
  (* AXIS_FINAL_DATA_WIDTH = "44" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "3" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001110000001100" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001110000001100" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
  (* EN_ALMOST_FULL_INT = "1'b1" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "64" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* LOG_DEPTH_AXIS = "6" *) 
  (* PACKET_FIFO = "true" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "0" *) 
  (* P_PKT_MODE = "1" *) 
  (* RD_DATA_COUNT_WIDTH = "7" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "32" *) 
  (* TDATA_WIDTH = "32" *) 
  (* TDEST_OFFSET = "42" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "41" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "40" *) 
  (* TSTRB_OFFSET = "36" *) 
  (* TUSER_MAX_WIDTH = "4053" *) 
  (* TUSER_OFFSET = "43" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "826486851" *) 
  (* USE_ADV_FEATURES_INT = "826486851" *) 
  (* WR_DATA_COUNT_WIDTH = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis \gen_fifo.xpm_fifo_axis_inst 
       (.almost_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_63 ),
        .almost_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_54 ),
        .dbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_65 ),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(s_axis_aclk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tdest_UNCONNECTED [0]),
        .m_axis_tid(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tid_UNCONNECTED [0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tstrb_UNCONNECTED [3:0]),
        .m_axis_tuser(\NLW_gen_fifo.xpm_fifo_axis_inst_m_axis_tuser_UNCONNECTED [0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(\gen_fifo.xpm_fifo_axis_inst_n_55 ),
        .prog_full_axis(\gen_fifo.xpm_fifo_axis_inst_n_46 ),
        .rd_data_count_axis(\^axis_rd_data_count ),
        .s_aclk(s_axis_aclk),
        .s_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(\gen_fifo.xpm_fifo_axis_inst_n_64 ),
        .wr_data_count_axis(\^axis_wr_data_count ));
endmodule

(* CHECK_LICENSE_TYPE = "processing_system_s00_data_fifo_1,axis_data_fifo_v2_0_11_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_data_fifo_v2_0_11_top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    axis_wr_data_count,
    axis_rd_data_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input s_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_CLKIF, ASSOCIATED_BUSIF S_AXIS:M_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_RESET s_axis_aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN s_axis_aclken" *) input s_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN processing_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [6:0]\^axis_rd_data_count ;
  wire [6:0]\^axis_wr_data_count ;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_almost_empty_UNCONNECTED;
  wire NLW_inst_almost_full_UNCONNECTED;
  wire NLW_inst_dbiterr_UNCONNECTED;
  wire NLW_inst_prog_empty_UNCONNECTED;
  wire NLW_inst_prog_full_UNCONNECTED;
  wire NLW_inst_sbiterr_UNCONNECTED;
  wire [31:7]NLW_inst_axis_rd_data_count_UNCONNECTED;
  wire [31:7]NLW_inst_axis_wr_data_count_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6:0] = \^axis_rd_data_count [6:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6:0] = \^axis_wr_data_count [6:0];
  GND GND
       (.G(\<const0> ));
  (* C_ACLKEN_CONV_MODE = "0" *) 
  (* C_AXIS_SIGNAL_SET = "27" *) 
  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "1" *) 
  (* C_ECC_MODE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FIFO_DEPTH = "64" *) 
  (* C_FIFO_MEMORY_TYPE = "auto" *) 
  (* C_FIFO_MODE = "2" *) 
  (* C_IS_ACLK_ASYNC = "0" *) 
  (* C_PROG_EMPTY_THRESH = "5" *) 
  (* C_PROG_FULL_THRESH = "11" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_USE_ADV_FEATURES = "826486851" *) 
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
  (* LP_CDC_SYNC_STAGES = "3" *) 
  (* LP_CLOCKING_MODE = "common_clock" *) 
  (* LP_ECC_MODE = "no_ecc" *) 
  (* LP_FIFO_DEPTH = "64" *) 
  (* LP_FIFO_MEMORY_TYPE = "auto" *) 
  (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_PACKET_FIFO = "true" *) 
  (* LP_PROG_EMPTY_THRESH = "5" *) 
  (* LP_PROG_FULL_THRESH = "11" *) 
  (* LP_RD_DATA_COUNT_WIDTH = "7" *) 
  (* LP_RELATED_CLOCKS = "0" *) 
  (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
  (* LP_TDATA_WIDTH = "32" *) 
  (* LP_TDEST_WIDTH = "1" *) 
  (* LP_TID_WIDTH = "1" *) 
  (* LP_TUSER_WIDTH = "1" *) 
  (* LP_USE_ADV_FEATURES = "826486851" *) 
  (* LP_WR_DATA_COUNT_WIDTH = "7" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_data_fifo_v2_0_11_top inst
       (.almost_empty(NLW_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_inst_almost_full_UNCONNECTED),
        .axis_rd_data_count({NLW_inst_axis_rd_data_count_UNCONNECTED[31:7],\^axis_rd_data_count }),
        .axis_wr_data_count({NLW_inst_axis_wr_data_count_UNCONNECTED[31:7],\^axis_wr_data_count }),
        .dbiterr(NLW_inst_dbiterr_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .m_axis_aclk(1'b0),
        .m_axis_aclken(1'b1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty(NLW_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_inst_prog_full_UNCONNECTED),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(1'b1),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr(NLW_inst_sbiterr_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    ram_wr_en_i,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input ram_wr_en_i;
  input wr_clk;

  wire [5:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[5]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \grdc.rd_data_count_i_reg[3] ,
    \count_value_i_reg[1]_1 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_2 ,
    wr_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\grdc.rd_data_count_i_reg[3] ;
  input [1:0]\count_value_i_reg[1]_1 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_2 ;
  input wr_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [0:0]\count_value_i_reg[1]_2 ;
  wire [1:0]\grdc.rd_data_count_i_reg[3] ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h000000005A88A655)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_1 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_2 ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA88AAAA)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_1 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_2 ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFFF755500008AA)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(\count_value_i_reg[1]_1 [0]),
        .I2(rd_en),
        .I3(\count_value_i_reg[1]_1 [1]),
        .I4(ram_empty_i),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\grdc.rd_data_count_i_reg[3] [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\grdc.rd_data_count_i_reg[3] [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2
   (going_afull,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    DI,
    Q,
    S,
    leaving_empty0,
    going_full1,
    \count_value_i_reg[2]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    ram_wr_en_i,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[6] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ,
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output going_afull;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output [0:0]DI;
  output [5:0]Q;
  output [2:0]S;
  output leaving_empty0;
  output going_full1;
  output [0:0]\count_value_i_reg[2]_0 ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input ram_wr_en_i;
  input [0:0]\grdc.rd_data_count_i_reg[3] ;
  input [6:0]\grdc.rd_data_count_i_reg[6] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [5:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  input [5:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [0:0]DI;
  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [5:0]Q;
  wire [2:0]S;
  wire clr_full;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [0:0]\count_value_i_reg[2]_0 ;
  wire \count_value_i_reg_n_0_[6] ;
  wire [5:0]\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire [5:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire going_afull;
  wire going_full1;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire [6:0]\grdc.rd_data_count_i_reg[6] ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(\count_value_i_reg_n_0_[6] ),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[6] ),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(ram_wr_en_i),
        .O(going_afull));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9000009000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[6] [1]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I3(\grdc.rd_data_count_i_reg[6] [0]),
        .I4(Q[0]),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(leaving_empty0));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6] [3]),
        .I2(\grdc.rd_data_count_i_reg[6] [5]),
        .I3(Q[5]),
        .I4(\grdc.rd_data_count_i_reg[6] [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6] [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6] [2]),
        .I2(Q[3]),
        .I3(\grdc.rd_data_count_i_reg[6] [3]),
        .O(\count_value_i_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[6]_i_4 
       (.I0(Q[5]),
        .I1(\grdc.rd_data_count_i_reg[6] [5]),
        .I2(\count_value_i_reg_n_0_[6] ),
        .I3(\grdc.rd_data_count_i_reg[6] [6]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[6]_i_5 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6] [4]),
        .I2(Q[5]),
        .I3(\grdc.rd_data_count_i_reg[6] [5]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[6]_i_6 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6] [3]),
        .I2(Q[4]),
        .I3(\grdc.rd_data_count_i_reg[6] [4]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0
   (Q,
    ram_empty_i0,
    D,
    \count_value_i_reg[2]_0 ,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[6]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_i,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    DI,
    S,
    \grdc.rd_data_count_i_reg[6] ,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[6]_0 ,
    wr_clk);
  output [6:0]Q;
  output ram_empty_i0;
  output [6:0]D;
  output \count_value_i_reg[2]_0 ;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[6]_0 ;
  input rst_d1;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_i;
  input ram_empty_i;
  input [5:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [1:0]DI;
  input [2:0]S;
  input [2:0]\grdc.rd_data_count_i_reg[6] ;
  input [0:0]\grdc.rd_data_count_i_reg[3] ;
  input [3:0]\grdc.rd_data_count_i_reg[6]_0 ;
  input wr_clk;

  wire [6:0]D;
  wire [1:0]DI;
  wire [6:0]Q;
  wire [2:0]S;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i_reg[2]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[6]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [5:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire [2:0]\grdc.rd_data_count_i_reg[6] ;
  wire [3:0]\grdc.rd_data_count_i_reg[6]_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[6]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[6]_i_1_n_3 ;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[6]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .O(\count_value_i_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00008080)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I3(leaving_empty0),
        .I4(ram_wr_en_i),
        .I5(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\grdc.rd_data_count_i_reg[3] ),
        .I2(\grdc.rd_data_count_i_reg[6]_0 [0]),
        .I3(\grdc.rd_data_count_i_reg[6]_0 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[6]_i_2 
       (.I0(Q[4]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [3]),
        .O(\gwdc.wr_data_count_i[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[6]_i_3 
       (.I0(Q[3]),
        .I1(\grdc.rd_data_count_i_reg[6]_0 [2]),
        .O(\gwdc.wr_data_count_i[6]_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({S[2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,S[1:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \gwdc.wr_data_count_i_reg[6]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_CO_UNCONNECTED [3:2],\gwdc.wr_data_count_i_reg[6]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[6]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\gwdc.wr_data_count_i[6]_i_2_n_0 ,\gwdc.wr_data_count_i[6]_i_3_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[6]_i_1_O_UNCONNECTED [3],D[6:4]}),
        .S({1'b0,\grdc.rd_data_count_i_reg[6] }));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [5:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [5:0]Q;
  wire \count_value_i[0]_i_1__3_n_0 ;
  wire \count_value_i[1]_i_1__3_n_0 ;
  wire \count_value_i[2]_i_1__3_n_0 ;
  wire \count_value_i[3]_i_1__3_n_0 ;
  wire \count_value_i[4]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_1__3_n_0 ;
  wire \count_value_i[5]_i_2__1_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__3 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__3 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__3_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__3 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[5]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__3_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__3_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__3_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__3_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[4]_i_1__3_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[5]_i_1__3_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1
   (Q,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    ram_wr_en_i,
    wr_clk);
  output [5:0]Q;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input ram_wr_en_i;
  input wr_clk;

  wire [5:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[5]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[5]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[5]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "44" *) (* AXIS_FINAL_DATA_WIDTH = "44" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "3" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001110000001100" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001110000001100" *) (* EN_ALMOST_EMPTY_INT = "1'b1" *) 
(* EN_ALMOST_FULL_INT = "1'b1" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "64" *) 
(* FIFO_MEMORY_TYPE = "auto" *) (* LOG_DEPTH_AXIS = "6" *) (* PACKET_FIFO = "true" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "0" *) 
(* P_PKT_MODE = "1" *) (* RD_DATA_COUNT_WIDTH = "7" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "32" *) (* TDATA_WIDTH = "32" *) 
(* TDEST_OFFSET = "42" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "41" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "40" *) (* TSTRB_OFFSET = "36" *) 
(* TUSER_MAX_WIDTH = "4053" *) (* TUSER_OFFSET = "43" *) (* TUSER_WIDTH = "1" *) 
(* USE_ADV_FEATURES = "826486851" *) (* USE_ADV_FEATURES_INT = "826486851" *) (* WR_DATA_COUNT_WIDTH = "7" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
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
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
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
  output prog_full_axis;
  output [6:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [6:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire almost_empty_axis;
  wire almost_full_axis;
  wire axis_pkt_read;
  wire axis_rd_eop1;
  wire axis_wr_eop_d1;
  wire data_valid_axis;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0 ;
  wire [31:0]\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_4 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_5 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_6 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_7 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_23_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_44_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_45_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_1 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_2 ;
  wire \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_3 ;
  wire \gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0 ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire p_3_in;
  wire [6:0]rd_data_count_axis;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire [6:0]wr_data_count_axis;
  wire [3:3]\NLW_gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_O_UNCONNECTED ;
  wire [3:0]\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_O_UNCONNECTED ;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;

  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1 
       (.I0(axis_wr_eop_d1),
        .I1(m_axis_tready),
        .I2(data_valid_axis),
        .I3(m_axis_tlast),
        .I4(axis_pkt_read),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [2]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [1]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF7FFF0000)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [0]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [14]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [13]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [12]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [18]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [17]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [16]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [22]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [21]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [20]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [26]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [25]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [24]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [31]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [29]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [28]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [6]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [5]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [4]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [10]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [9]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF00008000FFFF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .I4(axis_wr_eop_d1),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [8]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0 ));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [0]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_3_n_0 ),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3:0]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_5_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_6_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_7_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[10] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [10]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[11] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [12]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15:12]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[12]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[13] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [13]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[14] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [14]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[15] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [16]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[12]_i_1_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19:16]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[16]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[17] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [17]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[18] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [18]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[19] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[1] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [1]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [20]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[16]_i_1_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23:20]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[20]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[21] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [21]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[22] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [22]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[23] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [24]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[20]_i_1_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27:24]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[24]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[25] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [25]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[26] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [26]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[27] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [28]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30:28]}),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[28]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[29] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [29]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[2] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [2]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[30] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[31] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[28]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [31]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[3] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [4]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[0]_i_2_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7:4]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[4]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[5] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [5]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[6] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_5 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [6]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[7] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_4 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7]),
        .R(rst_axis));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_7 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [8]),
        .R(rst_axis));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[4]_i_1_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11:8]),
        .O({\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_4 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_5 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_6 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_7 }),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_3_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_cnt[8]_i_5_n_0 }));
  FDRE \gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[9] 
       (.C(s_aclk),
        .CE(\gaxis_pkt_fifo_cc.axis_pkt_cnt[0]_i_1_n_0 ),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg[8]_i_1_n_6 ),
        .Q(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [9]),
        .R(rst_axis));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h0000FEEE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_1 
       (.I0(axis_pkt_read),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0 ),
        .I2(data_valid_axis),
        .I3(almost_full_axis),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0 ),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_10 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [28]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [29]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_11 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [26]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_12 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [24]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [25]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_13 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0 ),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [31]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0 ),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0 ),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0 ),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_14 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [24]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [25]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [26]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27]),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [28]),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [29]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_15 
       (.I0(m_axis_tready),
        .I1(data_valid_axis),
        .I2(m_axis_tlast),
        .I3(axis_pkt_read),
        .O(p_3_in));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_17 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [22]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_18 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [20]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [21]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_19 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [18]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_20 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [16]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [17]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_21 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [22]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_22 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [20]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [21]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_23 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [18]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_24 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [16]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [17]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_25 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [1]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [2]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [0]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3]),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [4]),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [5]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_26 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [12]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [13]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [14]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15]),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [16]),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [17]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_27 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [18]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [19]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [20]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [21]),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [22]),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [23]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_28 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [6]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7]),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [8]),
        .I3(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [9]),
        .I4(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [10]),
        .I5(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_3 
       (.I0(rst_axis),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_read_i_13_n_0 ),
        .I2(\gaxis_pkt_fifo_cc.axis_pkt_read_i_14_n_0 ),
        .I3(axis_wr_eop_d1),
        .I4(p_3_in),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_30 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [14]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_31 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [12]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [13]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_32 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [10]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_33 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [8]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [9]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_34 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [14]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [15]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_35 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [12]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [13]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_36 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [10]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [11]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_37 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [8]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [9]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_38 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [6]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_39 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [4]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [5]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_40 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [2]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_41 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [0]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [1]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_42 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [6]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [7]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_43 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [4]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [5]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_44 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [2]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [3]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_44_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_45 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [0]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [1]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_45_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_5 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [31]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_6 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [28]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [29]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_7 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [26]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [27]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_8 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [24]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [25]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_i_9 
       (.I0(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [31]),
        .I1(\gaxis_pkt_fifo_cc.axis_pkt_cnt_reg [30]),
        .O(\gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxis_pkt_fifo_cc.axis_pkt_read_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxis_pkt_fifo_cc.axis_pkt_read_i_1_n_0 ),
        .Q(axis_pkt_read),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\gaxis_pkt_fifo_cc.axis_pkt_read_i_30_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_31_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_32_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_33_n_0 }),
        .O(\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_O_UNCONNECTED [3:0]),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_read_i_34_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_35_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_36_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_37_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\gaxis_pkt_fifo_cc.axis_pkt_read_i_5_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_6_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_7_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_8_n_0 }),
        .O(\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_read_i_9_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_10_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_11_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29 
       (.CI(1'b0),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_n_3 }),
        .CYINIT(1'b0),
        .DI({\gaxis_pkt_fifo_cc.axis_pkt_read_i_38_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_39_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_40_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_41_n_0 }),
        .O(\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_29_O_UNCONNECTED [3:0]),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_read_i_42_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_43_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_44_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_45_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4 
       (.CI(\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_16_n_0 ),
        .CO({\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_1 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_2 ,\gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\gaxis_pkt_fifo_cc.axis_pkt_read_i_17_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_18_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_19_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_20_n_0 }),
        .O(\NLW_gaxis_pkt_fifo_cc.axis_pkt_read_reg_i_4_O_UNCONNECTED [3:0]),
        .S({\gaxis_pkt_fifo_cc.axis_pkt_read_i_21_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_22_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_23_n_0 ,\gaxis_pkt_fifo_cc.axis_pkt_read_i_24_n_0 }));
  LUT4 #(
    .INIT(16'h0080)) 
    \gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1 
       (.I0(s_axis_tlast),
        .I1(s_axis_tready),
        .I2(s_axis_tvalid),
        .I3(rst_axis),
        .O(\gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxis_pkt_fifo_cc.axis_wr_eop_d1_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxis_pkt_fifo_cc.axis_wr_eop_d1_i_1_n_0 ),
        .Q(axis_wr_eop_d1),
        .R(1'b0));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(data_valid_axis),
        .I1(axis_pkt_read),
        .O(m_axis_tvalid));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "3" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001110000001100" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "64" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "2816" *) 
  (* FIFO_WRITE_DEPTH = "64" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "59" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "59" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "7" *) 
  (* RD_DC_WIDTH_EXT = "7" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "6" *) 
  (* READ_DATA_WIDTH = "44" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "826486851" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "44" *) 
  (* WR_DATA_COUNT_WIDTH = "7" *) 
  (* WR_DC_WIDTH_EXT = "7" *) 
  (* WR_DEPTH_LOG = "6" *) 
  (* WR_PNTR_WIDTH = "6" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "6" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(almost_empty_axis),
        .almost_full(almost_full_axis),
        .data_valid(data_valid_axis),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(rd_data_count_axis),
        .rd_en(axis_rd_eop1),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(wr_data_count_axis),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h80)) 
    xpm_fifo_base_inst_i_1
       (.I0(axis_pkt_read),
        .I1(data_valid_axis),
        .I2(m_axis_tready),
        .O(axis_rd_eop1));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "3" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001110000001100" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "0" *) (* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "64" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "2816" *) (* FIFO_WRITE_DEPTH = "64" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "59" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "9" *) 
(* PF_THRESH_MAX = "59" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "7" *) (* RD_DC_WIDTH_EXT = "7" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "6" *) 
(* READ_DATA_WIDTH = "44" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "826486851" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "44" *) (* WR_DATA_COUNT_WIDTH = "7" *) 
(* WR_DC_WIDTH_EXT = "7" *) (* WR_DEPTH_LOG = "6" *) (* WR_PNTR_WIDTH = "6" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "6" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [43:0]din;
  output full;
  output full_n;
  output prog_full;
  output [6:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [43:0]dout;
  output empty;
  output prog_empty;
  output [6:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire aempty_fwft_i0;
  wire almost_empty;
  wire almost_full;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [43:0]din;
  wire [43:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire going_afull;
  wire going_full1;
  wire [6:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire [6:0]rd_data_count;
  wire rd_en;
  wire [5:0]rd_pntr_ext;
  wire rdp_inst_n_1;
  wire rdp_inst_n_10;
  wire rdp_inst_n_11;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_16;
  wire rdp_inst_n_2;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire [6:0]wr_data_count;
  wire wr_en;
  wire [5:0]wr_pntr_ext;
  wire wrp_inst_n_0;
  wire wrp_inst_n_15;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp2_inst_n_0;
  wire wrpp2_inst_n_1;
  wire wrpp2_inst_n_2;
  wire wrpp2_inst_n_3;
  wire wrpp2_inst_n_4;
  wire wrpp2_inst_n_5;
  wire xpm_fifo_rst_inst_n_0;
  wire xpm_fifo_rst_inst_n_2;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [43:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h3FF0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_2));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_2));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  LUT5 #(
    .INIT(32'hFDDD4000)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_i),
        .I2(curr_fwft_state[1]),
        .I3(rd_en),
        .I4(almost_empty),
        .O(aempty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.gae_fwft.aempty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .Q(almost_empty),
        .S(xpm_fifo_rst_inst_n_2));
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[1]_1 (curr_fwft_state),
        .\count_value_i_reg[1]_2 (xpm_fifo_rst_inst_n_2),
        .\grdc.rd_data_count_i_reg[3] (wr_pntr_ext[1:0]),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_0),
        .Q(almost_full),
        .S(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_15),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_16),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_2));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_2));
  (* ADDR_WIDTH_A = "6" *) 
  (* ADDR_WIDTH_B = "6" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "44" *) 
  (* BYTE_WRITE_WIDTH_B = "44" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "43" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "44" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "2816" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "64" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "44" *) 
  (* P_MIN_WIDTH_DATA_A = "44" *) 
  (* P_MIN_WIDTH_DATA_B = "44" *) 
  (* P_MIN_WIDTH_DATA_ECC = "44" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "44" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "6" *) 
  (* P_WIDTH_ADDR_READ_B = "6" *) 
  (* P_WIDTH_ADDR_WRITE_A = "6" *) 
  (* P_WIDTH_ADDR_WRITE_B = "6" *) 
  (* P_WIDTH_COL_WRITE_A = "44" *) 
  (* P_WIDTH_COL_WRITE_B = "44" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "44" *) 
  (* READ_DATA_WIDTH_B = "44" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "44" *) 
  (* WRITE_DATA_WIDTH_B = "44" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "44" *) 
  (* rstb_loop_iter = "44" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [43:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdp_inst_n_1),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_2),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_i),
        .web(1'b0));
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(xpm_fifo_rst_inst_n_2));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(xpm_fifo_rst_inst_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2 rdp_inst
       (.DI(rdp_inst_n_2),
        .\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_1),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11}),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[2]_0 (rdp_inst_n_14),
        .\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_3_0 ({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5}),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_15),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_16),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wrp_inst_n_15),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .\grdc.rd_data_count_i_reg[3] (count_value_i),
        .\grdc.rd_data_count_i_reg[6] ({wrp_inst_n_0,wr_pntr_ext}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(rdp_inst_n_1),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_2),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_0 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_2,\gen_fwft.rdpp1_inst_n_2 }),
        .Q({wrp_inst_n_0,wr_pntr_ext}),
        .S({rdp_inst_n_14,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[2]_0 (wrp_inst_n_15),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[6]_0 (xpm_fifo_rst_inst_n_2),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5}),
        .\grdc.rd_data_count_i_reg[3] (count_value_i),
        .\grdc.rd_data_count_i_reg[6] ({rdp_inst_n_9,rdp_inst_n_10,rdp_inst_n_11}),
        .\grdc.rd_data_count_i_reg[6]_0 (rd_pntr_ext[4:1]),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_1 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 wrpp2_inst
       (.Q({wrpp2_inst_n_0,wrpp2_inst_n_1,wrpp2_inst_n_2,wrpp2_inst_n_3,wrpp2_inst_n_4,wrpp2_inst_n_5}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_2),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(curr_fwft_state),
        .SR(\grdc.rd_data_count_i0 ),
        .almost_full(almost_full),
        .\count_value_i_reg[5] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 (xpm_fifo_rst_inst_n_2),
        .going_afull(going_afull),
        .going_full1(going_full1),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .rst(rst),
        .rst_d1(rst_d1),
        .\syncstages_ff_reg[3] (xpm_fifo_rst_inst_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\syncstages_ff_reg[3] ,
    ram_wr_en_i,
    \gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ,
    SR,
    going_full1,
    going_afull,
    rst,
    almost_full,
    ram_empty_i,
    rd_en,
    Q,
    wr_en,
    \count_value_i_reg[5] ,
    rst_d1,
    wr_clk);
  output \syncstages_ff_reg[3] ;
  output ram_wr_en_i;
  output [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  output [0:0]SR;
  input going_full1;
  input going_afull;
  input rst;
  input almost_full;
  input ram_empty_i;
  input rd_en;
  input [1:0]Q;
  input wr_en;
  input \count_value_i_reg[5] ;
  input rst_d1;
  input wr_clk;

  wire [1:0]Q;
  wire [0:0]SR;
  wire almost_full;
  wire \count_value_i_reg[5] ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ;
  wire \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ;
  wire going_afull;
  wire going_full1;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire \syncstages_ff_reg[3] ;
  wire wr_clk;
  wire wr_en;

  LUT6 #(
    .INIT(64'h00FF00F7000000F0)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_1 
       (.I0(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ),
        .I1(going_full1),
        .I2(going_afull),
        .I3(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ),
        .I4(rst),
        .I5(almost_full),
        .O(\syncstages_ff_reg[3] ));
  LUT5 #(
    .INIT(32'h00005455)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4 
       (.I0(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I1(rst_d1),
        .I2(rst),
        .O(\gen_pntr_flags_cc.gaf_cc.ram_afull_i_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[5] ),
        .I2(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[6]_i_1 
       (.I0(\gen_rst_cc.fifo_wr_rst_cc_reg[2]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(SR));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ADDR_WIDTH_A = "6" *) (* ADDR_WIDTH_B = "6" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "44" *) (* BYTE_WRITE_WIDTH_B = "44" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "0" *) (* MEMORY_SIZE = "2816" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "0" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "64" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "44" *) 
(* P_MIN_WIDTH_DATA_A = "44" *) (* P_MIN_WIDTH_DATA_B = "44" *) (* P_MIN_WIDTH_DATA_ECC = "44" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "44" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "6" *) (* P_WIDTH_ADDR_READ_B = "6" *) 
(* P_WIDTH_ADDR_WRITE_A = "6" *) (* P_WIDTH_ADDR_WRITE_B = "6" *) (* P_WIDTH_COL_WRITE_A = "44" *) 
(* P_WIDTH_COL_WRITE_B = "44" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "44" *) 
(* READ_DATA_WIDTH_B = "44" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "44" *) (* WRITE_DATA_WIDTH_B = "44" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "44" *) 
(* rstb_loop_iter = "44" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [5:0]addra;
  input [43:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [43:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [5:0]addrb;
  input [43:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [43:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire [43:0]dina;
  wire [43:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [31:12]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d44" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "43" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d44" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "43" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2816" *) 
  (* RTL_RAM_NAME = "inst/gen_fifo.xpm_fifo_axis_inst/xpm_fifo_base_inst/gen_sdpram.xpm_memory_base_inst/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "43" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b1,1'b0,1'b0,1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b0,1'b0,1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DIADI(dina[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[43:32]}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(doutb[31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED [31:12],doutb[43:32]}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
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
