// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Feb  2 14:36:20 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : system_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    addra,
    douta,
    clkb,
    rstb,
    enb,
    addrb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     9.7422 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "system_axi_bram_ctrl_0_bram_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57072)
`pragma protect data_block
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
Z7fmWizBg8X/M4d3cxC1
`pragma protect end_protected
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
