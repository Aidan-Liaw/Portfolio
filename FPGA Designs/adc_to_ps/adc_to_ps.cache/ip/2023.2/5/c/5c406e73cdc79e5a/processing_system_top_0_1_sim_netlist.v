// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 23:06:41 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_top_0_1_sim_netlist.v
// Design      : processing_system_top_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc
   (adc_dat_a_out,
    adc_dat_b_out,
    adc_dat_a_in,
    adc_clk_out,
    adc_dat_b_in,
    adc_rst_in);
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
  input [13:0]adc_dat_a_in;
  input adc_clk_out;
  input [13:0]adc_dat_b_in;
  input adc_rst_in;

  wire adc_clk_out;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_a_out;
  wire [13:0]adc_dat_b_in;
  wire [13:0]adc_dat_b_out;
  wire adc_rst_in;
  wire p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[11]_i_1 
       (.I0(adc_rst_in),
        .O(p_0_in));
  FDRE \adc_dat_a_reg[0] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[0]),
        .Q(adc_dat_a_out[0]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[10] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[10]),
        .Q(adc_dat_a_out[10]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[11] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[11]),
        .Q(adc_dat_a_out[11]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[12] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[12]),
        .Q(adc_dat_a_out[12]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[13] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[13]),
        .Q(adc_dat_a_out[13]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[1] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[1]),
        .Q(adc_dat_a_out[1]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[2] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[2]),
        .Q(adc_dat_a_out[2]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[3] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[3]),
        .Q(adc_dat_a_out[3]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[4] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[4]),
        .Q(adc_dat_a_out[4]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[5] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[5]),
        .Q(adc_dat_a_out[5]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[6] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[6]),
        .Q(adc_dat_a_out[6]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[7] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[7]),
        .Q(adc_dat_a_out[7]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[8] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[8]),
        .Q(adc_dat_a_out[8]),
        .R(p_0_in));
  FDRE \adc_dat_a_reg[9] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_a_in[9]),
        .Q(adc_dat_a_out[9]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[0] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[0]),
        .Q(adc_dat_b_out[0]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[10] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[10]),
        .Q(adc_dat_b_out[10]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[11] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[11]),
        .Q(adc_dat_b_out[11]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[12] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[12]),
        .Q(adc_dat_b_out[12]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[13] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[13]),
        .Q(adc_dat_b_out[13]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[1] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[1]),
        .Q(adc_dat_b_out[1]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[2] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[2]),
        .Q(adc_dat_b_out[2]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[3] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[3]),
        .Q(adc_dat_b_out[3]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[4] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[4]),
        .Q(adc_dat_b_out[4]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[5] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[5]),
        .Q(adc_dat_b_out[5]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[6] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[6]),
        .Q(adc_dat_b_out[6]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[7] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[7]),
        .Q(adc_dat_b_out[7]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[8] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[8]),
        .Q(adc_dat_b_out[8]),
        .R(p_0_in));
  FDRE \adc_dat_b_reg[9] 
       (.C(adc_clk_out),
        .CE(1'b1),
        .D(adc_dat_b_in[9]),
        .Q(adc_dat_b_out[9]),
        .R(p_0_in));
endmodule

(* CHECK_LICENSE_TYPE = "processing_system_top_0_1,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_dat_a_in,
    adc_dat_b_in,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_rst_in,
    adc_clk_source,
    adc_cdcs_out,
    led_out,
    adc_dat_a_out,
    adc_dat_b_out,
    adc_clk_out);
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 adc_in CLK_P" *) input adc_clk_p_in;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 adc_in CLK_N" *) input adc_clk_n_in;
  (* x_interface_parameter = "POLARITY ACTIVE_LOW" *) input adc_rst_in;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  output [7:0]led_out;
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
  output adc_clk_out;

  wire \<const0> ;
  wire \<const1> ;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_in;
  wire adc_clk_out;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_in;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_a_out;
  wire [13:0]adc_dat_b_in;
  wire [13:0]adc_dat_b_out;
  wire adc_rst_in;

  assign adc_cdcs_out = \<const1> ;
  assign adc_clk_source[1] = \<const1> ;
  assign adc_clk_source[0] = \<const0> ;
  assign led_out[7:0] = adc_dat_a_out[11:4];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top U0
       (.adc_clk_n_in(adc_clk_n_in),
        .adc_clk_out(adc_clk_out),
        .adc_clk_p_in(adc_clk_p_in),
        .adc_dat_a_in(adc_dat_a_in),
        .adc_dat_a_out(adc_dat_a_out),
        .adc_dat_b_in(adc_dat_b_in),
        .adc_dat_b_out(adc_dat_b_out),
        .adc_rst_in(adc_rst_in));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top
   (adc_clk_out,
    adc_dat_a_out,
    adc_dat_b_out,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_dat_a_in,
    adc_dat_b_in,
    adc_rst_in);
  output adc_clk_out;
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
  input adc_clk_p_in;
  input adc_clk_n_in;
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  input adc_rst_in;

  wire adc_clk;
  wire adc_clk_n_in;
  wire adc_clk_out;
  wire adc_clk_p_in;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_a_out;
  wire [13:0]adc_dat_b_in;
  wire [13:0]adc_dat_b_out;
  wire adc_rst_in;

  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst
       (.I(adc_clk),
        .O(adc_clk_out));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_inst
       (.I(adc_clk_p_in),
        .IB(adc_clk_n_in),
        .O(adc_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc UUT0
       (.adc_clk_out(adc_clk_out),
        .adc_dat_a_in(adc_dat_a_in),
        .adc_dat_a_out(adc_dat_a_out),
        .adc_dat_b_in(adc_dat_b_in),
        .adc_dat_b_out(adc_dat_b_out),
        .adc_rst_in(adc_rst_in));
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
