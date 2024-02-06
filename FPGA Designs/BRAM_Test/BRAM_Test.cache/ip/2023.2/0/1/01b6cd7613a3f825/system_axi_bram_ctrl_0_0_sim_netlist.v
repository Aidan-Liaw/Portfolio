// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Feb  2 16:59:17 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : system_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_BRAM_ADDR_WIDTH = "14" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "16384" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "2" *) (* C_SINGLE_PORT_BRAM = "0" *) (* C_S_AXI_ADDR_WIDTH = "16" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [15:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [15:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [15:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [15:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [15:2]\^bram_addr_a ;
  wire [15:2]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[15:2] = \^bram_addr_a [15:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[15:2] = \^bram_addr_b [15:2];
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_a = bram_rst_b;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_addr_b(\^bram_addr_b ),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[15:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bram_rst_b),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[15:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl_top
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    s_axi_aresetn_0,
    bram_addr_a,
    axi_bvalid_int_reg,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_rready,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_araddr,
    bram_rddata_b,
    s_axi_arburst,
    s_axi_awvalid,
    s_axi_wlast);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output s_axi_aresetn_0;
  output [13:0]bram_addr_a;
  output axi_bvalid_int_reg;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [13:0]bram_addr_b;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [7:0]s_axi_awlen;
  input [13:0]s_axi_awaddr;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [13:0]s_axi_araddr;
  input [31:0]bram_rddata_b;
  input [1:0]s_axi_arburst;
  input s_axi_awvalid;
  input s_axi_wlast;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire axi_bvalid_int_reg;
  wire [13:0]bram_addr_a;
  wire [13:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_axi \GEN_AXI4.I_FULL_AXI 
       (.\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_full_axi
   (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    s_axi_awready,
    s_axi_aresetn_0,
    bram_addr_a,
    axi_bvalid_int_reg,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_rready,
    s_axi_awburst,
    s_axi_aclk,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_araddr,
    bram_rddata_b,
    s_axi_arburst,
    s_axi_awvalid,
    s_axi_wlast);
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output s_axi_awready;
  output s_axi_aresetn_0;
  output [13:0]bram_addr_a;
  output axi_bvalid_int_reg;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [13:0]bram_addr_b;
  output [31:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input [1:0]s_axi_awburst;
  input s_axi_aclk;
  input [7:0]s_axi_awlen;
  input [13:0]s_axi_awaddr;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [13:0]s_axi_araddr;
  input [31:0]bram_rddata_b;
  input [1:0]s_axi_arburst;
  input s_axi_awvalid;
  input s_axi_wlast;

  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire I_WR_CHNL_n_37;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire axi_bvalid_int_reg;
  wire [13:0]bram_addr_a;
  wire [13:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_chnl I_RD_CHNL
       (.\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 (I_WR_CHNL_n_37),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .bram_addr_b(bram_addr_b),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_chnl I_WR_CHNL
       (.\GEN_AWREADY.axi_aresetn_d3_reg_0 (I_WR_CHNL_n_37),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\wrap_burst_total_reg[0] (s_axi_aresetn_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_chnl
   (s_axi_aresetn_0,
    bram_en_b,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    bram_addr_b,
    s_axi_arready,
    s_axi_rdata,
    s_axi_araddr,
    s_axi_aclk,
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 ,
    axi_aresetn_d3,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arburst,
    axi_aresetn_re_reg,
    bram_rddata_b);
  output s_axi_aresetn_0;
  output bram_en_b;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output [13:0]bram_addr_b;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  input [13:0]s_axi_araddr;
  input s_axi_aclk;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 ;
  input axi_aresetn_d3;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input s_axi_rready;
  input s_axi_aresetn;
  input [1:0]s_axi_arburst;
  input axi_aresetn_re_reg;
  input [31:0]bram_rddata_b;

  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[9] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ;
  wire [9:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg ;
  wire [8:6]\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_cnt_en_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_6_n_0 ;
  wire [10:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ;
  wire [10:0]\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_31 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_32 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_15_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_16_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_18_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_19_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire addr_rl_rd_buf_in;
  wire addr_rl_rd_buf_in0_carry__0_i_1_n_0;
  wire addr_rl_rd_buf_in0_carry__0_n_3;
  wire addr_rl_rd_buf_in0_carry_i_1_n_0;
  wire addr_rl_rd_buf_in0_carry_i_2_n_0;
  wire addr_rl_rd_buf_in0_carry_i_3_n_0;
  wire addr_rl_rd_buf_in0_carry_i_4_n_0;
  wire addr_rl_rd_buf_in0_carry_i_5_n_0;
  wire addr_rl_rd_buf_in0_carry_i_6_n_0;
  wire addr_rl_rd_buf_in0_carry_i_7_n_0;
  wire addr_rl_rd_buf_in0_carry_i_8_n_0;
  wire addr_rl_rd_buf_in0_carry_n_0;
  wire addr_rl_rd_buf_in0_carry_n_1;
  wire addr_rl_rd_buf_in0_carry_n_2;
  wire addr_rl_rd_buf_in0_carry_n_3;
  wire ar_active;
  wire araddr_pipe_ld49_out;
  wire axi_araddr_full;
  wire [1:0]axi_arburst_pipe;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire [7:0]axi_arlen_pipe;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arlen_pipe_1_or_20;
  wire axi_arready_int;
  wire [1:1]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_early_arready_int;
  wire axi_early_arready_int0;
  wire axi_rd_burst;
  wire axi_rd_burst0;
  wire axi_rd_burst_two0;
  wire axi_rlast_set;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [13:0]bram_addr_b;
  wire bram_addr_ld_en;
  wire bram_addr_ld_en_mod;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [7:0]brst_cnt;
  wire brst_cnt_max;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_zero;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire data_out_comp;
  wire data_out_comp0_carry_i_1_n_0;
  wire data_out_comp0_carry_i_2_n_0;
  wire data_out_comp0_carry_i_3_n_0;
  wire data_out_comp0_carry_i_4_n_0;
  wire data_out_comp0_carry_i_5_n_0;
  wire data_out_comp0_carry_i_6_n_0;
  wire data_out_comp0_carry_i_7_n_0;
  wire data_out_comp0_carry_n_1;
  wire data_out_comp0_carry_n_2;
  wire data_out_comp0_carry_n_3;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire no_ar_ack;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire pend_rd_op;
  wire [9:9]plusOp;
  wire [9:1]plusOp__0;
  wire [1:1]rd_addr_sm_cs;
  wire [1:1]rd_addr_sm_ns;
  wire rd_adv_buf50_out;
  wire [3:0]rd_data_sm_cs;
  wire rl_cnt_en;
  wire rl_count0;
  wire [1:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire s_axi_rready;
  wire sel;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_DOC_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_DOC_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_DOC_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_DOC_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_DOC_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_DOD_UNCONNECTED ;
  wire \NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_DOD_UNCONNECTED ;
  wire [3:0]NLW_addr_rl_rd_buf_in0_carry_O_UNCONNECTED;
  wire [3:1]NLW_addr_rl_rd_buf_in0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_addr_rl_rd_buf_in0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_data_out_comp0_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0077FFFFFF0F0000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(data_out_comp),
        .I1(rd_adv_buf50_out),
        .I2(sel),
        .I3(rlast_sm_cs[1]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_3_n_0 ),
        .I5(rlast_sm_cs[0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFF0DD0000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(axi_rd_burst),
        .I1(sel),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I3(rlast_sm_cs[0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_3_n_0 ),
        .I5(rlast_sm_cs[1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(data_out_comp),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F808F8F8F808F80)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,w8_throttle:010,w8_throttle_b2:101,w8_last_data:11,rd_latency_rlast:01,w8_2nd_last_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:00,w8_throttle:010,w8_throttle_b2:101,w8_last_data:11,rd_latency_rlast:01,w8_2nd_last_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFD555FFFFC000)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_i_1 
       (.I0(s_axi_arvalid),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(axi_aresetn_re_reg),
        .I5(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_i_1_n_0 ),
        .Q(axi_arready_int),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0000545500000001)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(sel),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ),
        .O(axi_early_arready_int0));
  LUT6 #(
    .INIT(64'hAEAEAEAEAEFFAEAE)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I1(brst_zero),
        .I2(rd_adv_buf50_out),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[2]),
        .I3(s_axi_arvalid),
        .I4(axi_arready_int),
        .I5(brst_one),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00088888)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .I4(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_early_arready_int0),
        .Q(axi_early_arready_int),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hBBBABBBFAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_5_n_0 ),
        .I5(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000100A1A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2 
       (.I0(sel),
        .I1(axi_rd_burst),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hECFC0000A8A80000)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_6_n_0 ),
        .I1(brst_zero),
        .I2(end_brst_rd),
        .I3(axi_b2b_brst),
        .I4(rd_adv_buf50_out),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h050C)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_6 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_1_n_0 ),
        .Q(ar_active),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h5400540074005400)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs[1]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(rd_addr_sm_cs),
        .I2(axi_arready_int),
        .I3(s_axi_arvalid),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ),
        .I5(axi_araddr_full),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs[1]_i_2_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[11]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg[14] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[12]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg[15] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[13]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_araddr[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7555F00000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(axi_aresetn_d3),
        .I3(rd_addr_sm_ns),
        .I4(axi_araddr_full),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ),
        .Q(axi_araddr_full),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAA03AA)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_arburst[1]),
        .I3(rd_addr_sm_ns),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_2 
       (.I0(axi_araddr_full),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(axi_aresetn_d3),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arburst[0]),
        .Q(axi_arburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arburst[1]),
        .Q(axi_arburst_pipe[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0888)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_1 
       (.I0(rd_addr_sm_ns),
        .I1(axi_aresetn_d3),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(axi_araddr_full),
        .O(araddr_pipe_ld49_out));
  LUT5 #(
    .INIT(32'h4000C8C8)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2 
       (.I0(rd_addr_sm_cs),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .O(rd_addr_sm_ns));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[6]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ),
        .O(axi_arlen_pipe_1_or_20));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(axi_arlen_pipe_1_or_20),
        .Q(axi_arlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[0]),
        .Q(axi_arlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[1]),
        .Q(axi_arlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[2]),
        .Q(axi_arlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[3]),
        .Q(axi_arlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[4]),
        .Q(axi_arlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[5]),
        .Q(axi_arlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[6]),
        .Q(axi_arlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(s_axi_arlen[7]),
        .Q(axi_arlen_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld49_out),
        .D(1'b1),
        .Q(axi_arsize_pipe),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1 
       (.I0(brst_zero),
        .I1(ar_active),
        .I2(pend_rd_op),
        .I3(brst_cnt_max),
        .I4(s_axi_aresetn),
        .I5(bram_addr_ld_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(brst_cnt_max),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[6]_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_int),
        .I2(s_axi_arlen[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[0]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[1]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[2]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[3]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[4]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[5]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[6]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg[7]_i_2_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(bram_addr_b[6]),
        .I1(bram_addr_b[4]),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I3(bram_addr_b[5]),
        .I4(bram_addr_b[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[8]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0051555500510051)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .I4(rd_adv_buf50_out),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(bram_addr_b[8]),
        .I1(bram_addr_b[7]),
        .I2(bram_addr_b[5]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I4(bram_addr_b[4]),
        .I5(bram_addr_b[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[9]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_adv_buf50_out),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2 
       (.I0(bram_addr_b[1]),
        .I1(bram_addr_b[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2 
       (.I0(bram_addr_b[3]),
        .I1(bram_addr_b[0]),
        .I2(bram_addr_b[1]),
        .I3(bram_addr_b[2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2 
       (.I0(bram_addr_b[3]),
        .I1(bram_addr_b[0]),
        .I2(bram_addr_b[1]),
        .I3(bram_addr_b[2]),
        .I4(bram_addr_b[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(bram_addr_b[4]),
        .I1(bram_addr_b[2]),
        .I2(bram_addr_b[1]),
        .I3(bram_addr_b[0]),
        .I4(bram_addr_b[3]),
        .I5(bram_addr_b[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2 
       (.I0(bram_addr_b[5]),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .I2(bram_addr_b[4]),
        .I3(bram_addr_b[6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ),
        .Q(bram_addr_b[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ),
        .Q(bram_addr_b[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .Q(bram_addr_b[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ),
        .Q(bram_addr_b[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .Q(bram_addr_b[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .Q(bram_addr_b[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 ),
        .Q(bram_addr_b[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ),
        .Q(bram_addr_b[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ),
        .Q(bram_addr_b[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ),
        .Q(bram_addr_b[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .Q(bram_addr_b[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ),
        .Q(bram_addr_b[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ),
        .Q(bram_addr_b[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .D(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ),
        .Q(bram_addr_b[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[8]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .O(plusOp__0[8]));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_2 
       (.I0(addr_rl_rd_buf_in0_carry__0_n_3),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .O(addr_rl_rd_buf_in));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[9] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[0] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[0]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[1] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[2] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[3] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[4] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[5] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[6] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[7] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[8] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg[9] 
       (.C(s_axi_aclk),
        .CE(addr_rl_rd_buf_in),
        .D(plusOp__0[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[9] ),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [4]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[8]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .O(plusOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[0]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[1]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[2]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[3]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[4]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[5]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[6]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[7]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[8]_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_adv_buf50_out),
        .D(plusOp),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_cnt_en_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(bram_en_b),
        .I2(rl_cnt_en),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_cnt_en_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_cnt_en_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_cnt_en_i_1_n_0 ),
        .Q(rl_cnt_en),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .O(p_0_in__0[0]));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1 
       (.I0(rl_cnt_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_2 
       (.I0(rl_cnt_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ),
        .O(rl_count0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [10]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [8]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [9]),
        .O(p_0_in__0[10]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [5]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [8]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [10]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [9]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[8]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[9]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_5_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [8]),
        .O(p_0_in__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(rl_count0),
        .D(p_0_in__0[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[0]),
        .DIB(bram_rddata_b[1]),
        .DIC(bram_rddata_b[2]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[12]),
        .DIB(bram_rddata_b[13]),
        .DIC(bram_rddata_b[14]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[15]),
        .DIB(bram_rddata_b[16]),
        .DIC(bram_rddata_b[17]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[18]),
        .DIB(bram_rddata_b[19]),
        .DIC(bram_rddata_b[20]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[21]),
        .DIB(bram_rddata_b[22]),
        .DIC(bram_rddata_b[23]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[24]),
        .DIB(bram_rddata_b[25]),
        .DIC(bram_rddata_b[26]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[27]),
        .DIB(bram_rddata_b[28]),
        .DIC(bram_rddata_b[29]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[30]),
        .DIB(bram_rddata_b[31]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_1 ),
        .DOC(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_DOC_UNCONNECTED ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[3]),
        .DIB(bram_rddata_b[4]),
        .DIC(bram_rddata_b[5]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[6]),
        .DIB(bram_rddata_b[7]),
        .DIC(bram_rddata_b[8]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[9]),
        .DIB(bram_rddata_b[10]),
        .DIC(bram_rddata_b[11]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[0]),
        .DIB(bram_rddata_b[1]),
        .DIC(bram_rddata_b[2]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[12]),
        .DIB(bram_rddata_b[13]),
        .DIC(bram_rddata_b[14]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[15]),
        .DIB(bram_rddata_b[16]),
        .DIC(bram_rddata_b[17]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[18]),
        .DIB(bram_rddata_b[19]),
        .DIC(bram_rddata_b[20]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[21]),
        .DIB(bram_rddata_b[22]),
        .DIC(bram_rddata_b[23]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[24]),
        .DIB(bram_rddata_b[25]),
        .DIC(bram_rddata_b[26]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[27]),
        .DIB(bram_rddata_b[28]),
        .DIC(bram_rddata_b[29]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[30]),
        .DIB(bram_rddata_b[31]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_1 ),
        .DOC(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_DOC_UNCONNECTED ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[3]),
        .DIB(bram_rddata_b[4]),
        .DIC(bram_rddata_b[5]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[6]),
        .DIB(bram_rddata_b[7]),
        .DIC(bram_rddata_b[8]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[9]),
        .DIB(bram_rddata_b[10]),
        .DIC(bram_rddata_b[11]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[0]),
        .DIB(bram_rddata_b[1]),
        .DIC(bram_rddata_b[2]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[12]),
        .DIB(bram_rddata_b[13]),
        .DIC(bram_rddata_b[14]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[15]),
        .DIB(bram_rddata_b[16]),
        .DIC(bram_rddata_b[17]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[18]),
        .DIB(bram_rddata_b[19]),
        .DIC(bram_rddata_b[20]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[21]),
        .DIB(bram_rddata_b[22]),
        .DIC(bram_rddata_b[23]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[24]),
        .DIB(bram_rddata_b[25]),
        .DIC(bram_rddata_b[26]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[27]),
        .DIB(bram_rddata_b[28]),
        .DIC(bram_rddata_b[29]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[30]),
        .DIB(bram_rddata_b[31]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_1 ),
        .DOC(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_DOC_UNCONNECTED ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[3]),
        .DIB(bram_rddata_b[4]),
        .DIC(bram_rddata_b[5]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[6]),
        .DIB(bram_rddata_b[7]),
        .DIC(bram_rddata_b[8]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[9]),
        .DIB(bram_rddata_b[10]),
        .DIC(bram_rddata_b[11]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[0]),
        .DIB(bram_rddata_b[1]),
        .DIC(bram_rddata_b[2]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[12]),
        .DIB(bram_rddata_b[13]),
        .DIC(bram_rddata_b[14]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[15]),
        .DIB(bram_rddata_b[16]),
        .DIC(bram_rddata_b[17]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[18]),
        .DIB(bram_rddata_b[19]),
        .DIC(bram_rddata_b[20]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[21]),
        .DIB(bram_rddata_b[22]),
        .DIC(bram_rddata_b[23]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[24]),
        .DIB(bram_rddata_b[25]),
        .DIC(bram_rddata_b[26]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[27]),
        .DIB(bram_rddata_b[28]),
        .DIC(bram_rddata_b[29]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[30]),
        .DIB(bram_rddata_b[31]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_1 ),
        .DOC(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_DOC_UNCONNECTED ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[3]),
        .DIB(bram_rddata_b[4]),
        .DIC(bram_rddata_b[5]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[6]),
        .DIB(bram_rddata_b[7]),
        .DIC(bram_rddata_b[8]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "256" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[9]),
        .DIB(bram_rddata_b[10]),
        .DIC(bram_rddata_b[11]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[0]),
        .DIB(bram_rddata_b[1]),
        .DIC(bram_rddata_b[2]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "14" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[12]),
        .DIB(bram_rddata_b[13]),
        .DIC(bram_rddata_b[14]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "17" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[15]),
        .DIB(bram_rddata_b[16]),
        .DIC(bram_rddata_b[17]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "20" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[18]),
        .DIB(bram_rddata_b[19]),
        .DIC(bram_rddata_b[20]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "23" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[21]),
        .DIB(bram_rddata_b[22]),
        .DIC(bram_rddata_b[23]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "26" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[24]),
        .DIB(bram_rddata_b[25]),
        .DIC(bram_rddata_b[26]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "29" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[27]),
        .DIB(bram_rddata_b[28]),
        .DIC(bram_rddata_b[29]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[30]),
        .DIB(bram_rddata_b[31]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_1 ),
        .DOC(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_DOC_UNCONNECTED ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[3]),
        .DIB(bram_rddata_b[4]),
        .DIC(bram_rddata_b[5]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "8" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[6]),
        .DIB(bram_rddata_b[7]),
        .DIC(bram_rddata_b[8]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8224" *) 
  (* RTL_RAM_NAME = "gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "11" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11 
       (.ADDRA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5:0]),
        .ADDRD({\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ,\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] }),
        .DIA(bram_rddata_b[9]),
        .DIB(bram_rddata_b[10]),
        .DIC(bram_rddata_b[11]),
        .DID(1'b0),
        .DOA(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_0 ),
        .DOB(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_1 ),
        .DOC(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_2 ),
        .DOD(\NLW_GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_DOD_UNCONNECTED ),
        .WCLK(s_axi_aclk),
        .WE(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2_n_0 ),
        .O(axi_rd_burst0));
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_31 ),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_4_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_32 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_3 
       (.I0(s_axi_arlen[6]),
        .I1(axi_arlen_pipe[6]),
        .I2(s_axi_arlen[4]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_4 
       (.I0(s_axi_arlen[7]),
        .I1(axi_arlen_pipe[7]),
        .I2(s_axi_arlen[5]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(axi_rd_burst0),
        .Q(axi_rd_burst),
        .R(s_axi_aresetn_0));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ),
        .O(axi_rd_burst_two0));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3 
       (.I0(s_axi_arlen[0]),
        .I1(axi_araddr_full),
        .I2(axi_arlen_pipe[0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(axi_rd_burst_two0),
        .Q(sel),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [10]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [8]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [9]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [4]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[4]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[6]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[8]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[9]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [8]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [10]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [4]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [5]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [8]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [9]),
        .R(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count[10]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst_0 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.D({\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_5 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_6 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_7 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_8 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_9 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_10 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_11 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_12 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_13 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_15 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_16 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_17 ,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_18 }),
        .E({bram_addr_ld_en_mod,\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_3 }),
        .\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_31 ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_32 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_19 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 (\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ),
        .\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] (brst_cnt),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .\GEN_NO_RD_CMD_OPT.no_ar_ack_reg (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_21 ),
        .\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_27 ),
        .Q(rd_data_sm_cs),
        .ar_active(ar_active),
        .axi_araddr_full(axi_araddr_full),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_arlen_pipe_1_or_2(axi_arlen_pipe_1_or_2),
        .axi_arready_int(axi_arready_int),
        .axi_arsize_pipe(axi_arsize_pipe),
        .axi_arsize_pipe_max(axi_arsize_pipe_max),
        .axi_b2b_brst(axi_b2b_brst),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_b(bram_addr_b[9:0]),
        .bram_addr_ld_en(bram_addr_ld_en),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .disable_b2b_brst(disable_b2b_brst),
        .end_brst_rd(end_brst_rd),
        .last_bram_addr(last_bram_addr),
        .no_ar_ack(no_ar_ack),
        .pend_rd_op(pend_rd_op),
        .rd_addr_sm_cs(rd_addr_sm_cs),
        .rd_adv_buf50_out(rd_adv_buf50_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .sel(sel),
        .\wrap_burst_total_reg[0]_0 (axi_arlen_pipe[3:0]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(sel),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000020AAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h06060600FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_11_n_0 ),
        .I3(act_rd_burst),
        .I4(act_rd_burst_two),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4 
       (.I0(axi_rd_burst),
        .I1(sel),
        .I2(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFFFFFFF7)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[3]),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .Q(act_rd_burst_two),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFF7000)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1 
       (.I0(axi_araddr_full),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(axi_aresetn_d3),
        .I3(rd_addr_sm_ns),
        .I4(axi_arsize_pipe_max),
        .O(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_arsize_pipe_max_i_1_n_0 ),
        .Q(axi_arsize_pipe_max),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h8C8C8C8CCCCCCCDC)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(axi_b2b_brst),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_28 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_1_n_0 ),
        .Q(axi_b2b_brst),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hDC00)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(s_axi_rready),
        .I1(axi_rlast_set),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000800)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count[10]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_count_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .I5(rlast_sm_cs[1]),
        .O(axi_rlast_set));
  LUT5 #(
    .INIT(32'h74443333)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I1(rlast_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(rlast_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBB800000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ),
        .I4(axi_rvalid_clr_ok),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(disable_b2b_brst),
        .I2(last_bram_addr),
        .I3(axi_rvalid_clr_ok),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(axi_rvalid_clr_ok),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .I3(axi_rvalid_set),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hDFDFDF5510101055)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .I4(rd_data_sm_cs[3]),
        .I5(bram_en_b),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000E)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_10 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_20 ),
        .I1(axi_araddr_full),
        .I2(no_ar_ack),
        .I3(pend_rd_op),
        .I4(ar_active),
        .I5(rd_addr_sm_cs),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_11 
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0EF00EF000F00EF0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_12 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(brst_one),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_19_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_13 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_rready),
        .I4(act_rd_burst_two),
        .I5(act_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF9F9FFF9)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_14 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .I4(axi_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_15 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_16 
       (.I0(brst_zero),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_17 
       (.I0(rd_addr_sm_cs),
        .I1(ar_active),
        .I2(pend_rd_op),
        .I3(no_ar_ack),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_18 
       (.I0(axi_araddr_full),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_19 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0E0E0E000E0E)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I4(axi_aresetn_d3),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h002F2F2F2F2F2F2F)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(pend_rd_op),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_4 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0B0A0B0B0B000B0B)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_11_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_12_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I4(axi_aresetn_d3),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_13_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFC00FCFC37373737)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(axi_rd_burst),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_5_n_0 ),
        .I2(sel),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_14_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.axi_early_arready_int_i_4_n_0 ),
        .I5(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAEAAAAA)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_15_n_0 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_adv_buf50_out),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(last_bram_addr),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_16_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I4(\GEN_NO_RD_CMD_OPT.bram_en_int_i_17_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_18_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7E)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_9 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .Q(bram_en_b),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(axi_arlen_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(axi_arlen_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[0]),
        .I4(brst_cnt[2]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2 
       (.I0(axi_arlen_pipe[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[2]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_32 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[0]),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[3]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_30 ),
        .I5(brst_cnt[4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_2_n_0 ),
        .I5(brst_cnt[5]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_2 
       (.I0(brst_cnt[4]),
        .I1(brst_cnt[3]),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[1]),
        .I4(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(axi_arlen_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[6]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[6]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBBB8B8B8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_24 ),
        .I3(brst_cnt[6]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ),
        .I5(brst_cnt[7]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(axi_arlen_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[7]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5 
       (.I0(brst_cnt[5]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[3]),
        .I5(brst_cnt[4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_cnt_max),
        .Q(brst_cnt_max_d1),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1_n_0 ),
        .Q(brst_cnt[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1_n_0 ),
        .Q(brst_cnt[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1_n_0 ),
        .Q(brst_cnt[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1_n_0 ),
        .Q(brst_cnt[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1_n_0 ),
        .Q(brst_cnt[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1_n_0 ),
        .Q(brst_cnt[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1_n_0 ),
        .Q(brst_cnt[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2_n_0 ),
        .Q(brst_cnt[7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0044444400444040)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I1(s_axi_aresetn),
        .I2(brst_one),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_3_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[3]),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I4(brst_cnt[1]),
        .I5(brst_cnt[0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5400)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I2(brst_zero),
        .I3(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hD000D0D0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(axi_arburst_pipe[0]),
        .I2(s_axi_arburst[1]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hEAEAEAAAEAAAEAEA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(rd_data_sm_cs[3]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h44444444FFFF44F4)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_5_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_6_n_0 ),
        .I4(disable_b2b_brst),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFF15)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_4 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(axi_rd_burst),
        .I3(sel),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_5 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_6 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(brst_one),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFBBFFEF44000000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .Q(end_brst_rd_clr),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h55300000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(brst_cnt_max),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0DFF0DFFFFFF0D)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ),
        .O(last_bram_addr0));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_10 
       (.I0(sel),
        .I1(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_11 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(rd_adv_buf50_out),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(sel),
        .I5(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044000000000000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(axi_aresetn_d3),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I4(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[3]),
        .I2(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_23 ),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA3A3333)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_10_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I4(axi_aresetn_d3),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_11_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0075FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_6 
       (.I0(axi_aresetn_d3),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I3(pend_rd_op),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_32 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_2_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_31 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_33 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_8 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_9 
       (.I0(brst_cnt[5]),
        .I1(brst_cnt[7]),
        .I2(brst_cnt[4]),
        .I3(brst_cnt[6]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF707788880000)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_7_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(no_ar_ack),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_i_2 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.no_ar_ack_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_1_n_0 ),
        .Q(no_ar_ack),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0A0A0AFB0A0A0A08)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_25 ),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ),
        .I5(pend_rd_op),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0101010100000001)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_10 
       (.I0(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(sel),
        .I4(axi_rd_burst),
        .I5(pend_rd_op),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h700F7FFF7FFF7FFF)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_11 
       (.I0(ar_active),
        .I1(end_brst_rd),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(pend_rd_op),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFD00000FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_9_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h002F2F2F)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(end_brst_rd),
        .I4(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(pend_rd_op),
        .I5(rd_adv_buf50_out),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h88CC88888FFF8F8F)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6 
       (.I0(pend_rd_op),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_10_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_11_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .I4(axi_aresetn_d3),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_7 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4445)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_8 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(sel),
        .I3(axi_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_9 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .Q(pend_rd_op),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hBBBBBBBBABBBAAAA)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_adv_buf50_out),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBBBBBBA)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(sel),
        .I3(axi_rd_burst),
        .I4(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h02FFFFFF)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4 
       (.I0(rd_data_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(act_rd_burst),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_6_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_7_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [10]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [4]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [3]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [9]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_7 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_DATA_SM_RL.rd_latency_count_reg [8]),
        .I3(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4444FFF4)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_6_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_7_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000455FFFF)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(pend_rd_op),
        .I1(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I2(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I3(axi_aresetn_d3),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCEEFFFCFC)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_29 ),
        .I1(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_8_n_0 ),
        .I2(sel),
        .I3(rd_adv_buf50_out),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_22 ),
        .I1(\GEN_NO_RD_CMD_OPT.bram_en_int_i_10_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_9_n_0 ),
        .I4(rd_adv_buf50_out),
        .I5(\GEN_NO_RD_CMD_OPT.no_ar_ack_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBABABAAABABABABA)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_6 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(axi_rd_burst),
        .I4(sel),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_7 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(s_axi_rready),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00E0FFFF)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_8 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_9 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8F80FF8F8F80F080)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000007FF0000000)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h042A)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0063)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF9EFFFFFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_adv_buf50_out),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6 
       (.I0(axi_b2b_brst),
        .I1(end_brst_rd),
        .I2(brst_zero),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ),
        .Q(rd_data_sm_cs[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(rd_data_sm_cs[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ),
        .Q(rd_data_sm_cs[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2_n_0 ),
        .Q(rd_data_sm_cs[3]),
        .R(s_axi_aresetn_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr_rl_rd_buf_in0_carry
       (.CI(1'b0),
        .CO({addr_rl_rd_buf_in0_carry_n_0,addr_rl_rd_buf_in0_carry_n_1,addr_rl_rd_buf_in0_carry_n_2,addr_rl_rd_buf_in0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({addr_rl_rd_buf_in0_carry_i_1_n_0,addr_rl_rd_buf_in0_carry_i_2_n_0,addr_rl_rd_buf_in0_carry_i_3_n_0,addr_rl_rd_buf_in0_carry_i_4_n_0}),
        .O(NLW_addr_rl_rd_buf_in0_carry_O_UNCONNECTED[3:0]),
        .S({addr_rl_rd_buf_in0_carry_i_5_n_0,addr_rl_rd_buf_in0_carry_i_6_n_0,addr_rl_rd_buf_in0_carry_i_7_n_0,addr_rl_rd_buf_in0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 addr_rl_rd_buf_in0_carry__0
       (.CI(addr_rl_rd_buf_in0_carry_n_0),
        .CO({NLW_addr_rl_rd_buf_in0_carry__0_CO_UNCONNECTED[3:1],addr_rl_rd_buf_in0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_addr_rl_rd_buf_in0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,addr_rl_rd_buf_in0_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    addr_rl_rd_buf_in0_carry__0_i_1
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[9] ),
        .O(addr_rl_rd_buf_in0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_rl_rd_buf_in0_carry_i_1
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .O(addr_rl_rd_buf_in0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_rl_rd_buf_in0_carry_i_2
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .O(addr_rl_rd_buf_in0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_rl_rd_buf_in0_carry_i_3
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .O(addr_rl_rd_buf_in0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    addr_rl_rd_buf_in0_carry_i_4
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .O(addr_rl_rd_buf_in0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_rl_rd_buf_in0_carry_i_5
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[6] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ),
        .O(addr_rl_rd_buf_in0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_rl_rd_buf_in0_carry_i_6
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[4] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .O(addr_rl_rd_buf_in0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_rl_rd_buf_in0_carry_i_7
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[2] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .O(addr_rl_rd_buf_in0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    addr_rl_rd_buf_in0_carry_i_8
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[1] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_in_reg_n_0_[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .O(addr_rl_rd_buf_in0_carry_i_8_n_0));
  CARRY4 data_out_comp0_carry
       (.CI(1'b0),
        .CO({data_out_comp,data_out_comp0_carry_n_1,data_out_comp0_carry_n_2,data_out_comp0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_data_out_comp0_carry_O_UNCONNECTED[3:0]),
        .S({data_out_comp0_carry_i_1_n_0,data_out_comp0_carry_i_2_n_0,data_out_comp0_carry_i_3_n_0,data_out_comp0_carry_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    data_out_comp0_carry_i_1
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_RL.axi_rd_burst_two_i_2_n_0 ),
        .O(data_out_comp0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000884422110)) 
    data_out_comp0_carry_i_2
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[6] ),
        .I3(data_out_comp0_carry_i_5_n_0),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[7] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .O(data_out_comp0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8002200808800220)) 
    data_out_comp0_carry_i_3
       (.I0(data_out_comp0_carry_i_6_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [5]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .I3(data_out_comp0_carry_i_7_n_0),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [4]),
        .O(data_out_comp0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000099090090000)) 
    data_out_comp0_carry_i_4
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[0] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [2]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [1]),
        .O(data_out_comp0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    data_out_comp0_carry_i_5
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[4] ),
        .O(data_out_comp0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hA956)) 
    data_out_comp0_carry_i_6
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .O(data_out_comp0_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    data_out_comp0_carry_i_7
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[2] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_CURR_ARLEN_RL.GEN_CURR_ARLEN_DUAL.curr_arlen_reg_reg_n_0_[1] ),
        .O(data_out_comp0_carry_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    s_axi_arready_INST_0
       (.I0(axi_arready_int),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_rready),
        .I3(axi_early_arready_int),
        .O(s_axi_arready));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[0]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_0 ),
        .O(\s_axi_rdata[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[10]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_1 ),
        .O(\s_axi_rdata[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[11]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[11]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_2 ),
        .O(\s_axi_rdata[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[12]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_0 ),
        .O(\s_axi_rdata[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[13]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_1 ),
        .O(\s_axi_rdata[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_12_14_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[14]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_12_14_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_12_14_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_12_14_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_12_14_n_2 ),
        .O(\s_axi_rdata[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[15]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_0 ),
        .O(\s_axi_rdata[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[16]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_1 ),
        .O(\s_axi_rdata[16]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_15_17_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[17]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_15_17_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_15_17_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_15_17_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_15_17_n_2 ),
        .O(\s_axi_rdata[17]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[18]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_0 ),
        .O(\s_axi_rdata[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[19]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_1 ),
        .O(\s_axi_rdata[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[1]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_1 ),
        .O(\s_axi_rdata[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_18_20_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[20]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_18_20_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_18_20_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_18_20_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_18_20_n_2 ),
        .O(\s_axi_rdata[20]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[21]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_0 ),
        .O(\s_axi_rdata[21]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[22]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_1 ),
        .O(\s_axi_rdata[22]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_21_23_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[23]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_21_23_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_21_23_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_21_23_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_21_23_n_2 ),
        .O(\s_axi_rdata[23]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[24]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_0 ),
        .O(\s_axi_rdata[24]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[25]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_1 ),
        .O(\s_axi_rdata[25]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_24_26_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[26]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_24_26_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_24_26_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_24_26_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_24_26_n_2 ),
        .O(\s_axi_rdata[26]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[27]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_0 ),
        .O(\s_axi_rdata[27]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[28]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_1 ),
        .O(\s_axi_rdata[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_27_29_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[29]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_27_29_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_27_29_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_27_29_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_27_29_n_2 ),
        .O(\s_axi_rdata[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_0_2_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[2]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_0_2_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_0_2_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_0_2_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_0_2_n_2 ),
        .O(\s_axi_rdata[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[30]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_0 ),
        .O(\s_axi_rdata[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_30_31_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[31]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_30_31_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_30_31_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_30_31_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_30_31_n_1 ),
        .O(\s_axi_rdata[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[3]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_0 ),
        .O(\s_axi_rdata[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[4]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_1 ),
        .O(\s_axi_rdata[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_3_5_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[5]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_3_5_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_3_5_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_3_5_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_3_5_n_2 ),
        .O(\s_axi_rdata[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[6]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_0 ),
        .O(\s_axi_rdata[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[7]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_1 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_1 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_1 ),
        .O(\s_axi_rdata[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_6_8_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[8]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_6_8_n_2 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_6_8_n_2 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_6_8_n_2 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_6_8_n_2 ),
        .O(\s_axi_rdata[8]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_256_319_9_11_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [8]),
        .I4(\s_axi_rdata[9]_INST_0_i_1_n_0 ),
        .O(s_axi_rdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_INST_0_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_192_255_9_11_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_128_191_9_11_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [7]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_64_127_9_11_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg_rep [6]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.rl_rd_buf_reg_0_63_9_11_n_0 ),
        .O(\s_axi_rdata[9]_INST_0_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "system_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_1_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [15:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [15:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY, READ_LATENCY 2" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [15:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY, READ_LATENCY 2" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) output [3:0]bram_we_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) output [15:0]bram_addr_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) output [31:0]bram_wrdata_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [15:2]\^bram_addr_a ;
  wire [15:2]\^bram_addr_b ;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [15:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [1:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign bram_addr_a[15:2] = \^bram_addr_a [15:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[15:2] = \^bram_addr_b [15:2];
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "14" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "16384" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "2" *) 
  (* C_SINGLE_PORT_BRAM = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "16" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_bram_ctrl U0
       (.bram_addr_a({\^bram_addr_a ,NLW_U0_bram_addr_a_UNCONNECTED[1:0]}),
        .bram_addr_b({\^bram_addr_b ,NLW_U0_bram_addr_b_UNCONNECTED[1:0]}),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[15:2],1'b0,1'b0}),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[15:2],1'b0,1'b0}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_chnl
   (axi_aresetn_d3,
    axi_aresetn_re_reg,
    bram_en_a,
    bram_wrdata_a,
    axi_bvalid_int_reg_0,
    s_axi_wready,
    \GEN_AWREADY.axi_aresetn_d3_reg_0 ,
    s_axi_awready,
    bram_addr_a,
    bram_we_a,
    s_axi_awaddr,
    s_axi_aclk,
    s_axi_aresetn,
    \wrap_burst_total_reg[0] ,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_awlen,
    s_axi_wstrb);
  output axi_aresetn_d3;
  output axi_aresetn_re_reg;
  output bram_en_a;
  output [31:0]bram_wrdata_a;
  output axi_bvalid_int_reg_0;
  output s_axi_wready;
  output \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  output s_axi_awready;
  output [13:0]bram_addr_a;
  output [3:0]bram_we_a;
  input [13:0]s_axi_awaddr;
  input s_axi_aclk;
  input s_axi_aresetn;
  input \wrap_burst_total_reg[0] ;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [7:0]s_axi_awlen;
  input [3:0]s_axi_wstrb;

  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ;
  wire \GEN_AWREADY.axi_aresetn_d3_reg_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_1_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_2_n_0 ;
  wire \GEN_AW_DUAL.aw_active_i_1_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_2_n_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_4_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_5_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire \I_RD_CHNL/axi_aresetn_d1 ;
  wire \I_RD_CHNL/axi_aresetn_d2 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_20;
  wire I_WRAP_BRST_n_21;
  wire I_WRAP_BRST_n_22;
  wire I_WRAP_BRST_n_23;
  wire I_WRAP_BRST_n_24;
  wire I_WRAP_BRST_n_25;
  wire I_WRAP_BRST_n_26;
  wire I_WRAP_BRST_n_3;
  wire I_WRAP_BRST_n_4;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_6;
  wire I_WRAP_BRST_n_7;
  wire I_WRAP_BRST_n_9;
  wire aw_active;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire axi_awlen_pipe_1_or_20;
  wire [1:1]axi_awsize_pipe;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_i_3_n_0;
  wire axi_bvalid_int_i_4_n_0;
  wire axi_bvalid_int_i_5_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_3_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire [13:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire bram_addr_ld_en_mod;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire curr_awlen_reg_1_or_2_i_2_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_i_3_n_0;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire delay_aw_active_clr;
  wire last_data_ack_mod;
  wire last_data_ack_mod0;
  wire [12:9]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire [0:0]wr_data_sm_ns__0;
  wire \wrap_burst_total_reg[0] ;
  wire wrdata_reg_ld;

  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(wr_data_sm_ns__0),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5C5C5C5C0CFC0C0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3_n_0 ),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I5(wr_data_sm_cs[1]),
        .O(wr_data_sm_ns__0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3 
       (.I0(wr_data_sm_cs[0]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[0]),
        .I4(I_WRAP_BRST_n_5),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00A8FFFF00AA0000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .I3(wr_data_sm_cs[2]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I5(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hFAAAFBAB)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I2(wr_data_sm_cs[0]),
        .I3(axi_wr_burst),
        .I4(s_axi_wlast),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF040000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[1]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I5(wr_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h4555)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(I_WRAP_BRST_n_5),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003010100030000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(axi_wr_burst),
        .I4(wr_data_sm_cs[0]),
        .I5(s_axi_wlast),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD0D0000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h000055D0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6 
       (.I0(wr_data_sm_cs[1]),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ),
        .Q(wr_data_sm_cs[0]),
        .R(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ),
        .Q(wr_data_sm_cs[1]),
        .R(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .Q(wr_data_sm_cs[2]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(\I_RD_CHNL/axi_aresetn_d1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\I_RD_CHNL/axi_aresetn_d1 ),
        .Q(\I_RD_CHNL/axi_aresetn_d2 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\I_RD_CHNL/axi_aresetn_d2 ),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(\I_RD_CHNL/axi_aresetn_d1 ),
        .I1(\I_RD_CHNL/axi_aresetn_d2 ),
        .O(axi_aresetn_re));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFBFFFFF00AA)) 
    \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(I_WRAP_BRST_n_2),
        .I4(axi_aresetn_re_reg),
        .I5(s_axi_awready),
        .O(\GEN_AWREADY.axi_awready_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000F000D000000)) 
    \GEN_AWREADY.axi_awready_int_i_2 
       (.I0(last_data_ack_mod),
        .I1(I_WRAP_BRST_n_5),
        .I2(wr_addr_sm_cs),
        .I3(s_axi_awvalid),
        .I4(aw_active),
        .I5(I_WRAP_BRST_n_3),
        .O(\GEN_AWREADY.axi_awready_int_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AWREADY.axi_awready_int_i_1_n_0 ),
        .Q(s_axi_awready),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'hFFF7FFFF0000FFFF)) 
    \GEN_AW_DUAL.aw_active_i_1 
       (.I0(wr_data_sm_cs[2]),
        .I1(delay_aw_active_clr),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(I_WRAP_BRST_n_2),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.aw_active_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.aw_active_i_1_n_0 ),
        .Q(aw_active),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_AW_DUAL.last_data_ack_mod_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .O(last_data_ack_mod0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.last_data_ack_mod_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_data_ack_mod0),
        .Q(last_data_ack_mod),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0010001000100000)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(\GEN_AW_DUAL.wr_addr_sm_cs_i_2_n_0 ),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(I_WRAP_BRST_n_3),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_2 
       (.I0(I_WRAP_BRST_n_3),
        .I1(last_data_ack_mod),
        .I2(axi_awaddr_full),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(curr_awlen_reg_1_or_2),
        .I5(axi_awlen_pipe_1_or_2),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_2_n_0 ));
  FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ),
        .Q(wr_addr_sm_cs),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[11]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[12]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[13]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEA004000)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(s_axi_aresetn),
        .I4(I_WRAP_BRST_n_2),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF00BF00BF00FF40)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2_n_0 ),
        .I2(axi_aresetn_d3),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awlen[3]),
        .O(axi_awlen_pipe_1_or_20));
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[7]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awlen[4]),
        .I4(s_axi_awlen[1]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(axi_awlen_pipe_1_or_20),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(1'b1),
        .Q(axi_awsize_pipe),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[8]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3 
       (.I0(bram_addr_a[6]),
        .I1(bram_addr_a[4]),
        .I2(I_WRAP_BRST_n_24),
        .I3(bram_addr_a[5]),
        .I4(bram_addr_a[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[9]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(bram_addr_a[8]),
        .I1(bram_addr_a[7]),
        .I2(bram_addr_a[5]),
        .I3(I_WRAP_BRST_n_24),
        .I4(bram_addr_a[4]),
        .I5(bram_addr_a[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4 
       (.I0(bram_addr_a[1]),
        .I1(bram_addr_a[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .I4(bram_addr_a[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3 
       (.I0(bram_addr_a[4]),
        .I1(bram_addr_a[2]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[0]),
        .I4(bram_addr_a[3]),
        .I5(bram_addr_a[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3 
       (.I0(bram_addr_a[5]),
        .I1(I_WRAP_BRST_n_24),
        .I2(bram_addr_a[4]),
        .I3(bram_addr_a[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_15),
        .Q(bram_addr_a[8]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_14),
        .Q(bram_addr_a[9]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[9]),
        .Q(bram_addr_a[10]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[10]),
        .Q(bram_addr_a[11]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[11]),
        .Q(bram_addr_a[12]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en_mod),
        .D(p_1_in[12]),
        .Q(bram_addr_a[13]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_23),
        .Q(bram_addr_a[0]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_22),
        .Q(bram_addr_a[1]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_21),
        .Q(bram_addr_a[2]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_20),
        .Q(bram_addr_a[3]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_19),
        .Q(bram_addr_a[4]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_18),
        .Q(bram_addr_a[5]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_17),
        .Q(bram_addr_a[6]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_9),
        .D(I_WRAP_BRST_n_16),
        .Q(bram_addr_a[7]),
        .R(I_WRAP_BRST_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_DUAL.rd_addr_sm_cs[1]_i_1 
       (.I0(axi_aresetn_d3),
        .O(\GEN_AWREADY.axi_aresetn_d3_reg_0 ));
  LUT6 #(
    .INIT(64'h000000007F777F55)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I4(axi_wdata_full_reg),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_4_n_0 ),
        .O(axi_wdata_full_cmb));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080888)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3 
       (.I0(axi_awaddr_full),
        .I1(axi_aresetn_d3),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_5_n_0 ),
        .I3(I_WRAP_BRST_n_4),
        .I4(aw_active),
        .I5(I_WRAP_BRST_n_3),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hE0E0EAFB)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_4 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .I4(axi_wdata_full_reg),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_5 
       (.I0(axi_awlen_pipe_1_or_2),
        .I1(curr_awlen_reg_1_or_2),
        .I2(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I3(axi_awaddr_full),
        .I4(last_data_ack_mod),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h4400450055115511)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wvalid),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .O(bram_en_cmb));
  LUT6 #(
    .INIT(64'h8080808080FFFFFF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(aw_active),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 
       (.I0(axi_awaddr_full),
        .I1(I_WRAP_BRST_n_2),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I3(wr_data_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h8A888A8888888A88)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ),
        .I2(axi_wr_burst),
        .I3(wr_data_sm_cs[0]),
        .I4(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I5(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ),
        .O(clr_bram_we_cmb));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .I2(s_axi_wvalid),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0000DDDF0000DDD0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3_n_0 ),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ),
        .I2(clr_bram_we_cmb),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ),
        .Q(delay_aw_active_clr),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7D50000FFFFFFFF)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst I_WRAP_BRST
       (.D({p_1_in,I_WRAP_BRST_n_14,I_WRAP_BRST_n_15,I_WRAP_BRST_n_16,I_WRAP_BRST_n_17,I_WRAP_BRST_n_18,I_WRAP_BRST_n_19,I_WRAP_BRST_n_20,I_WRAP_BRST_n_21,I_WRAP_BRST_n_22,I_WRAP_BRST_n_23}),
        .E(bram_addr_ld_en),
        .\GEN_AWREADY.axi_awready_int_i_2 (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .\GEN_AW_DUAL.aw_active_reg (I_WRAP_BRST_n_2),
        .\GEN_AW_DUAL.wr_addr_sm_cs_reg (I_WRAP_BRST_n_4),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg (I_WRAP_BRST_n_5),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] (I_WRAP_BRST_n_26),
        .\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] (I_WRAP_BRST_n_25),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] (\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] (I_WRAP_BRST_n_24),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ),
        .Q(axi_awlen_pipe[3:0]),
        .SR(I_WRAP_BRST_n_0),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .axi_awsize_pipe(axi_awsize_pipe),
        .bram_addr_a(bram_addr_a[9:0]),
        .bram_addr_ld_en_mod(bram_addr_ld_en_mod),
        .bvalid_cnt(bvalid_cnt),
        .\bvalid_cnt_reg[2] (I_WRAP_BRST_n_3),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .curr_fixed_burst(curr_fixed_burst),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_6),
        .curr_fixed_burst_reg_reg_0(curr_fixed_burst_reg_i_3_n_0),
        .curr_wrap_burst(curr_wrap_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_7),
        .last_data_ack_mod(last_data_ack_mod),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(I_WRAP_BRST_n_9),
        .\save_init_bram_addr_ld_reg[15]_0 (axi_aresetn_d3),
        .wr_addr_sm_cs(wr_addr_sm_cs),
        .wr_data_sm_cs(wr_data_sm_cs),
        .\wrap_burst_total_reg[0]_0 (\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(axi_bvalid_int_i_2_n_0),
        .I4(bvalid_cnt[0]),
        .I5(axi_bvalid_int_i_3_n_0),
        .O(axi_bvalid_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_int_i_2
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg_0),
        .O(axi_bvalid_int_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBBBAABABBBBBBBB)) 
    axi_bvalid_int_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(axi_bvalid_int_i_4_n_0),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3_n_0 ),
        .I4(wr_data_sm_cs[1]),
        .I5(axi_bvalid_int_i_5_n_0),
        .O(axi_bvalid_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h0C000400)) 
    axi_bvalid_int_i_4
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2_n_0 ),
        .I1(s_axi_wlast),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[1]),
        .O(axi_bvalid_int_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_bvalid_int_i_5
       (.I0(wr_data_sm_cs[0]),
        .I1(axi_wr_burst),
        .O(axi_bvalid_int_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(axi_wr_burst_i_3_n_0),
        .I2(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003FF4700034447)) 
    axi_wr_burst_i_2
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3_n_0 ),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wlast),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[2]),
        .I5(s_axi_wvalid),
        .O(axi_wr_burst_cmb));
  LUT6 #(
    .INIT(64'h400C44CC400C400C)) 
    axi_wr_burst_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3_n_0 ),
        .I5(s_axi_wlast),
        .O(axi_wr_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(\wrap_burst_total_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6A6A6A6A95959555)) 
    \bvalid_cnt[0]_i_1 
       (.I0(axi_bvalid_int_i_3_n_0),
        .I1(axi_bvalid_int_reg_0),
        .I2(s_axi_bready),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h98AAAAAAAA666666)) 
    \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .I5(axi_bvalid_int_i_3_n_0),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0F0F0F0F0787878)) 
    \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_bready),
        .I4(axi_bvalid_int_reg_0),
        .I5(axi_bvalid_int_i_3_n_0),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(bvalid_cnt[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(bvalid_cnt[1]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(bvalid_cnt[2]),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0202020202000202)) 
    curr_awlen_reg_1_or_2_i_1
       (.I0(curr_awlen_reg_1_or_2_i_2_n_0),
        .I1(I_WRAP_BRST_n_25),
        .I2(I_WRAP_BRST_n_26),
        .I3(axi_awaddr_full),
        .I4(s_axi_awvalid),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .O(curr_awlen_reg_1_or_20));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[4]),
        .I1(axi_awlen_pipe[7]),
        .I2(axi_awlen_pipe[1]),
        .I3(axi_awlen_pipe[5]),
        .I4(axi_awlen_pipe[6]),
        .I5(axi_awaddr_full),
        .O(curr_awlen_reg_1_or_2_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_2
       (.I0(s_axi_awburst[0]),
        .I1(axi_awburst_pipe[0]),
        .I2(s_axi_awburst[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[1]),
        .O(curr_fixed_burst));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    curr_fixed_burst_reg_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .O(curr_fixed_burst_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_6),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    curr_wrap_burst_reg_i_2
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_7),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst
   (SR,
    bram_addr_ld_en_mod,
    \GEN_AW_DUAL.aw_active_reg ,
    \bvalid_cnt_reg[2] ,
    \GEN_AW_DUAL.wr_addr_sm_cs_reg ,
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ,
    curr_fixed_burst_reg_reg,
    curr_wrap_burst_reg_reg,
    E,
    s_axi_wvalid_0,
    D,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ,
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ,
    wr_data_sm_cs,
    s_axi_wvalid,
    s_axi_aresetn,
    aw_active,
    last_data_ack_mod,
    \save_init_bram_addr_ld_reg[15]_0 ,
    curr_fixed_burst_reg,
    curr_fixed_burst,
    curr_fixed_burst_reg_reg_0,
    curr_wrap_burst_reg,
    curr_wrap_burst,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    bram_addr_a,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ,
    axi_awaddr_full,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ,
    bvalid_cnt,
    \GEN_AWREADY.axi_awready_int_i_2 ,
    curr_awlen_reg_1_or_2,
    axi_awlen_pipe_1_or_2,
    wr_addr_sm_cs,
    s_axi_awvalid,
    axi_awsize_pipe,
    Q,
    s_axi_awlen,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_aclk);
  output [0:0]SR;
  output bram_addr_ld_en_mod;
  output \GEN_AW_DUAL.aw_active_reg ;
  output \bvalid_cnt_reg[2] ;
  output \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  output \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ;
  output curr_fixed_burst_reg_reg;
  output curr_wrap_burst_reg_reg;
  output [0:0]E;
  output [0:0]s_axi_wvalid_0;
  output [13:0]D;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  output \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  input [2:0]wr_data_sm_cs;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input aw_active;
  input last_data_ack_mod;
  input \save_init_bram_addr_ld_reg[15]_0 ;
  input curr_fixed_burst_reg;
  input curr_fixed_burst;
  input curr_fixed_burst_reg_reg_0;
  input curr_wrap_burst_reg;
  input curr_wrap_burst;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  input [9:0]bram_addr_a;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  input axi_awaddr_full;
  input [13:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ;
  input [2:0]bvalid_cnt;
  input \GEN_AWREADY.axi_awready_int_i_2 ;
  input curr_awlen_reg_1_or_2;
  input axi_awlen_pipe_1_or_2;
  input wr_addr_sm_cs;
  input s_axi_awvalid;
  input [0:0]axi_awsize_pipe;
  input [3:0]Q;
  input [3:0]s_axi_awlen;
  input \wrap_burst_total_reg[0]_0 ;
  input s_axi_aclk;

  wire [13:0]D;
  wire [0:0]E;
  wire \GEN_AWREADY.axi_awready_int_i_2 ;
  wire \GEN_AW_DUAL.aw_active_reg ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire aw_active;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire [0:0]axi_awsize_pipe;
  wire [9:0]bram_addr_a;
  wire bram_addr_ld_en_mod;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt_reg[2] ;
  wire curr_awlen_reg_1_or_2;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire [13:1]data0;
  wire last_data_ack_mod;
  wire [8:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [13:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [0:0]s_axi_wvalid_0;
  wire \save_init_bram_addr_ld_reg[15]_0 ;
  wire wr_addr_sm_cs;
  wire [2:0]wr_data_sm_cs;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[0]_i_2__0_n_0 ;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_2__0_n_0 ;
  wire \wrap_burst_total_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFEFEAAFEFFFFFFFF)) 
    \GEN_AWREADY.axi_awready_int_i_3 
       (.I0(\bvalid_cnt_reg[2] ),
        .I1(aw_active),
        .I2(\GEN_AW_DUAL.wr_addr_sm_cs_reg ),
        .I3(last_data_ack_mod),
        .I4(\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ),
        .I5(\save_init_bram_addr_ld_reg[15]_0 ),
        .O(\GEN_AW_DUAL.aw_active_reg ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \GEN_AWREADY.axi_awready_int_i_4 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AWREADY.axi_awready_int_i_2 ),
        .I2(curr_awlen_reg_1_or_2),
        .I3(axi_awlen_pipe_1_or_2),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \GEN_AWREADY.axi_awready_int_i_5 
       (.I0(wr_addr_sm_cs),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_reg ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_3 
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .O(\bvalid_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(data0[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ),
        .I3(bram_addr_ld_en_mod),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .I5(bram_addr_a[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAEAAAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(bram_addr_ld_en_mod),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[1]),
        .I5(curr_fixed_burst_reg),
        .O(s_axi_wvalid_0));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(data0[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[9]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(data0[10]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1 
       (.I0(data0[11]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[13].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_1 
       (.I0(data0[12]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[14].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_1 
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[0]),
        .I4(bram_addr_ld_en_mod),
        .I5(s_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h00000200FFFFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4_n_0 ),
        .I5(\GEN_AW_DUAL.aw_active_reg ),
        .O(bram_addr_ld_en_mod));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3 
       (.I0(data0[13]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[15].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h55555555FFFFFDFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4 
       (.I0(curr_wrap_burst_reg),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[1]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5 
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000008F00C000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[1]),
        .I2(wrap_burst_total[1]),
        .I3(bram_addr_a[0]),
        .I4(wrap_burst_total[0]),
        .I5(wrap_burst_total[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h454045404540FFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1 
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .I1(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[0]),
        .I4(bram_addr_ld_en_mod),
        .I5(bram_addr_a[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[1]),
        .I5(bram_addr_a[0]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[2]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(data0[3]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I4(bram_addr_ld_en_mod),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(data0[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[4]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3 
       (.I0(bram_addr_a[2]),
        .I1(bram_addr_a[1]),
        .I2(bram_addr_a[0]),
        .I3(bram_addr_a[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(data0[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[5]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(data0[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[6]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(data0[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ),
        .I3(bram_addr_ld_en_mod),
        .I4(bram_addr_a[7]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hD800D800D8000000)) 
    curr_fixed_burst_reg_i_1
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .I1(curr_fixed_burst_reg),
        .I2(curr_fixed_burst),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en_mod),
        .I5(curr_fixed_burst_reg_reg_0),
        .O(curr_fixed_burst_reg_reg));
  LUT6 #(
    .INIT(64'hD800D800D8000000)) 
    curr_wrap_burst_reg_i_1
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .I1(curr_wrap_burst_reg),
        .I2(curr_wrap_burst),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en_mod),
        .I5(curr_fixed_burst_reg_reg_0),
        .O(curr_wrap_burst_reg_reg));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[8]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[9]),
        .O(p_1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \save_init_bram_addr_ld[15]_i_1 
       (.I0(\GEN_AW_DUAL.aw_active_reg ),
        .O(E));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[2]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(data0[3]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(data0[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[4]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(data0[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[5]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[6]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[7]),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[8]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[10]),
        .Q(data0[10]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[11]),
        .Q(data0[11]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[12]),
        .Q(data0[12]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[15] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(D[13]),
        .Q(data0[13]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000009090809)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(\wrap_burst_total[0]_i_2__0_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .I2(\wrap_burst_total[0]_i_3_n_0 ),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe),
        .I5(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[1]),
        .O(\wrap_burst_total[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0F77)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[0]),
        .I2(Q[0]),
        .I3(axi_awaddr_full),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h08A200A2)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(\wrap_burst_total[2]_i_2__0_n_0 ),
        .I1(axi_awaddr_full),
        .I2(axi_awsize_pipe),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .I4(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h80880000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(\wrap_burst_total[2]_i_2__0_n_0 ),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ),
        .I2(axi_awsize_pipe),
        .I3(axi_awaddr_full),
        .I4(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hCA0AC000C000C000)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_awlen[1]),
        .I1(Q[1]),
        .I2(axi_awaddr_full),
        .I3(Q[0]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awvalid),
        .O(\wrap_burst_total[2]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[2]_i_3 
       (.I0(Q[3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[3]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \wrap_burst_total[2]_i_4 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wrap_brst_0
   (\GEN_NO_RD_CMD_OPT.brst_zero_reg ,
    s_axi_aresetn_0,
    E,
    bram_addr_ld_en,
    D,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ,
    \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg ,
    \GEN_NO_RD_CMD_OPT.no_ar_ack_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ,
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] ,
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ,
    rd_adv_buf50_out,
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ,
    \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ,
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ,
    brst_zero,
    end_brst_rd,
    axi_b2b_brst,
    s_axi_rready,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ,
    s_axi_aresetn,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    curr_fixed_burst_reg,
    bram_addr_b,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ,
    s_axi_araddr,
    axi_araddr_full,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ,
    axi_aresetn_d3,
    rd_addr_sm_cs,
    no_ar_ack,
    pend_rd_op,
    ar_active,
    axi_arready_int,
    s_axi_arvalid,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ,
    curr_wrap_burst_reg,
    last_bram_addr,
    Q,
    axi_rd_burst,
    sel,
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ,
    axi_arlen_pipe_1_or_2,
    axi_arsize_pipe_max,
    disable_b2b_brst,
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] ,
    s_axi_arlen,
    axi_arsize_pipe,
    \wrap_burst_total_reg[0]_0 ,
    s_axi_aclk);
  output \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  output s_axi_aresetn_0;
  output [1:0]E;
  output bram_addr_ld_en;
  output [13:0]D;
  output \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  output \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg ;
  output \GEN_NO_RD_CMD_OPT.no_ar_ack_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  output \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] ;
  output \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ;
  output rd_adv_buf50_out;
  output \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ;
  output \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  input brst_zero;
  input end_brst_rd;
  input axi_b2b_brst;
  input s_axi_rready;
  input \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ;
  input s_axi_aresetn;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  input curr_fixed_burst_reg;
  input [9:0]bram_addr_b;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  input [13:0]s_axi_araddr;
  input axi_araddr_full;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  input axi_aresetn_d3;
  input [0:0]rd_addr_sm_cs;
  input no_ar_ack;
  input pend_rd_op;
  input ar_active;
  input axi_arready_int;
  input s_axi_arvalid;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ;
  input curr_wrap_burst_reg;
  input last_bram_addr;
  input [3:0]Q;
  input axi_rd_burst;
  input sel;
  input \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  input axi_arlen_pipe_1_or_2;
  input axi_arsize_pipe_max;
  input disable_b2b_brst;
  input [7:0]\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] ;
  input [3:0]s_axi_arlen;
  input [0:0]axi_arsize_pipe;
  input [3:0]\wrap_burst_total_reg[0]_0 ;
  input s_axi_aclk;

  wire [13:0]D;
  wire [1:0]E;
  wire \GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] ;
  wire [7:0]\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  wire \GEN_NO_RD_CMD_OPT.no_ar_ack_reg ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ;
  wire \GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  wire [3:0]Q;
  wire ar_active;
  wire axi_araddr_full;
  wire axi_aresetn_d3;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arready_int;
  wire [0:0]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_rd_burst;
  wire [9:0]bram_addr_b;
  wire bram_addr_ld_en;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire end_brst_rd;
  wire last_bram_addr;
  wire no_ar_ack;
  wire pend_rd_op;
  wire [0:0]rd_addr_sm_cs;
  wire rd_adv_buf50_out;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [3:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[10]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[11]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[3]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[4]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[6]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[7]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[8]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[9]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld_reg_n_0_[10] ;
  wire \save_init_bram_addr_ld_reg_n_0_[11] ;
  wire \save_init_bram_addr_ld_reg_n_0_[12] ;
  wire \save_init_bram_addr_ld_reg_n_0_[13] ;
  wire \save_init_bram_addr_ld_reg_n_0_[14] ;
  wire \save_init_bram_addr_ld_reg_n_0_[15] ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \save_init_bram_addr_ld_reg_n_0_[6] ;
  wire \save_init_bram_addr_ld_reg_n_0_[7] ;
  wire \save_init_bram_addr_ld_reg_n_0_[8] ;
  wire \save_init_bram_addr_ld_reg_n_0_[9] ;
  wire sel;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[0]_i_2_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_2_n_0 ;
  wire [3:0]\wrap_burst_total_reg[0]_0 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hFFFFBFAAFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ),
        .I2(s_axi_rready),
        .I3(brst_zero),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ),
        .I5(last_bram_addr),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ),
        .I1(bram_addr_b[8]),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEEFE)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I3(curr_fixed_burst_reg),
        .O(E[0]));
  LUT6 #(
    .INIT(64'hFFF600F6FF060006)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(bram_addr_b[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_1 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[13]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[13] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[13].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[14]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[14] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[14].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .O(E[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_2 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[15] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[15].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h1010111000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ),
        .I5(curr_wrap_burst_reg),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDDDDDD0DDD0)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ),
        .I1(rd_adv_buf50_out),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ),
        .I4(\GEN_NO_RD_CMD_OPT.brst_zero_reg ),
        .I5(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ));
  LUT6 #(
    .INIT(64'h000000008F00C000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5 
       (.I0(bram_addr_b[2]),
        .I1(bram_addr_b[1]),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(bram_addr_b[0]),
        .I4(\wrap_burst_total_reg_n_0_[0] ),
        .I5(\wrap_burst_total_reg_n_0_[2] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE000000000000000)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ),
        .I3(s_axi_rready),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFAAABBBBBFFBB)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_7 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(axi_rd_burst),
        .I3(sel),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ));
  LUT6 #(
    .INIT(64'h00000000DDD111D1)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1 
       (.I0(bram_addr_b[0]),
        .I1(bram_addr_ld_en),
        .I2(s_axi_araddr[0]),
        .I3(axi_araddr_full),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFF600F6FF060006)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(bram_addr_b[1]),
        .I1(bram_addr_b[0]),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(bram_addr_b[2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_0 ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0E0EFE0E0202F202)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I3(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3 
       (.I0(\wrap_burst_total_reg_n_0_[1] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(bram_addr_b[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 
       (.I0(bram_addr_b[2]),
        .I1(bram_addr_b[1]),
        .I2(bram_addr_b[0]),
        .I3(bram_addr_b[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] ));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_b[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_b[6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFF900F9FF090009)) 
    \GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_b[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I4(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out[9]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ),
        .I1(s_axi_rready),
        .O(rd_adv_buf50_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_b2b_brst_reg ),
        .I1(axi_arlen_pipe_1_or_2),
        .I2(axi_arsize_pipe_max),
        .I3(axi_araddr_full),
        .I4(disable_b2b_brst),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h51FFFFFF)) 
    \GEN_NO_RD_CMD_OPT.axi_b2b_brst_i_4 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(axi_b2b_brst),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_RL_NO_ECC.addr_rl_rd_buf_out_reg[0] ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_reg ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [0]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [1]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [2]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [3]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [6]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [4]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [7]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] [5]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[8]),
        .O(\save_init_bram_addr_ld[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[9]),
        .O(\save_init_bram_addr_ld[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000A8AAAAAAAA)) 
    \save_init_bram_addr_ld[15]_i_1__0 
       (.I0(axi_aresetn_d3),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg ),
        .I2(axi_araddr_full),
        .I3(\GEN_NO_RD_CMD_OPT.no_ar_ack_reg ),
        .I4(rd_addr_sm_cs),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .O(bram_addr_ld_en));
  LUT2 #(
    .INIT(4'h8)) 
    \save_init_bram_addr_ld[15]_i_2 
       (.I0(axi_arready_int),
        .I1(s_axi_arvalid),
        .O(\GEN_NO_RD_CMD_OPT.GEN_ARREADY.GEN_ARREADY_RL.axi_arready_int_reg ));
  LUT3 #(
    .INIT(8'hFE)) 
    \save_init_bram_addr_ld[15]_i_3 
       (.I0(no_ar_ack),
        .I1(pend_rd_op),
        .I2(ar_active),
        .O(\GEN_NO_RD_CMD_OPT.no_ar_ack_reg ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .O(\save_init_bram_addr_ld[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[2]),
        .O(\save_init_bram_addr_ld[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(\save_init_bram_addr_ld[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[4]),
        .O(\save_init_bram_addr_ld[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[5]),
        .O(\save_init_bram_addr_ld[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[6]),
        .O(\save_init_bram_addr_ld[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_DUAL_ADDR_CNT.bram_addr_int[15]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[7]),
        .O(\save_init_bram_addr_ld[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[10]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[11]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[10]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[12] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[11]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[13] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[14] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[12]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[14] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[15] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[13]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[15] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[3]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[4]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[5]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[6]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[7]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[8]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[9]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hC9C9390900000000)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I2(axi_araddr_full),
        .I3(axi_arsize_pipe),
        .I4(\wrap_burst_total_reg[0]_0 [2]),
        .I5(\wrap_burst_total[0]_i_2_n_0 ),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \wrap_burst_total[0]_i_2 
       (.I0(s_axi_arlen[0]),
        .I1(\wrap_burst_total_reg[0]_0 [0]),
        .I2(s_axi_arlen[3]),
        .I3(axi_araddr_full),
        .I4(\wrap_burst_total_reg[0]_0 [3]),
        .O(\wrap_burst_total[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20CF000000000000)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total_reg[0]_0 [2]),
        .I1(axi_arsize_pipe),
        .I2(axi_araddr_full),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_2 
       (.I0(\wrap_burst_total_reg[0]_0 [3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_3 
       (.I0(\wrap_burst_total_reg[0]_0 [1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_4 
       (.I0(\wrap_burst_total_reg[0]_0 [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] ));
  LUT5 #(
    .INIT(32'h8A800A00)) 
    \wrap_burst_total[2]_i_1 
       (.I0(\wrap_burst_total[2]_i_2_n_0 ),
        .I1(\wrap_burst_total_reg[0]_0 [2]),
        .I2(axi_araddr_full),
        .I3(s_axi_arlen[2]),
        .I4(axi_arsize_pipe),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \wrap_burst_total[2]_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(\wrap_burst_total_reg[0]_0 [3]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] ),
        .I3(\wrap_burst_total_reg[0]_0 [0]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[0]),
        .O(\wrap_burst_total[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(s_axi_aresetn_0));
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
