// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 17:15:08 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/aidan/Portfolio/FPGA
//               Designs/Stopwatch_2/Stopwatch_2.gen/sources_1/bd/system/ip/system_adc_0_0/system_adc_0_0_sim_netlist.v}
// Design      : system_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_adc_0_0,adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module system_adc_0_0
   (adc_dat_a_in,
    adc_dat_b_in,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_clk_source,
    adc_cdcs_out,
    adc_dat_a_out,
    adc_dat_b_out);
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  input adc_clk_p_in;
  input adc_clk_n_in;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;

  wire \<const0> ;
  wire \<const1> ;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_in;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_in;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_a_out;
  wire [13:0]adc_dat_b_in;
  wire [13:0]adc_dat_b_out;

  assign adc_cdcs_out = \<const1> ;
  assign adc_clk_source[1] = \<const1> ;
  assign adc_clk_source[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_adc_0_0_adc inst
       (.adc_clk_n_in(adc_clk_n_in),
        .adc_clk_p_in(adc_clk_p_in),
        .adc_dat_a_in(adc_dat_a_in),
        .adc_dat_a_out(adc_dat_a_out),
        .adc_dat_b_in(adc_dat_b_in),
        .adc_dat_b_out(adc_dat_b_out));
endmodule

(* ORIG_REF_NAME = "adc" *) 
module system_adc_0_0_adc
   (adc_dat_a_out,
    adc_dat_b_out,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_dat_a_in,
    adc_dat_b_in);
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
  input adc_clk_p_in;
  input adc_clk_n_in;
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;

  wire adc_clk;
  wire adc_clk_n_in;
  wire adc_clk_p_in;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_a_out;
  wire [13:0]adc_dat_b_in;
  wire [13:0]adc_dat_b_out;
  wire NLW_BUFG_inst_O_UNCONNECTED;

  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst
       (.I(adc_clk),
        .O(NLW_BUFG_inst_O_UNCONNECTED));
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
  FDRE \adc_dat_a_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[0]),
        .Q(adc_dat_a_out[0]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[10]),
        .Q(adc_dat_a_out[10]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[11]),
        .Q(adc_dat_a_out[11]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[12]),
        .Q(adc_dat_a_out[12]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[13]),
        .Q(adc_dat_a_out[13]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[1]),
        .Q(adc_dat_a_out[1]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[2]),
        .Q(adc_dat_a_out[2]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[3]),
        .Q(adc_dat_a_out[3]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[4]),
        .Q(adc_dat_a_out[4]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[5]),
        .Q(adc_dat_a_out[5]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[6]),
        .Q(adc_dat_a_out[6]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[7]),
        .Q(adc_dat_a_out[7]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[8]),
        .Q(adc_dat_a_out[8]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a_in[9]),
        .Q(adc_dat_a_out[9]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[0]),
        .Q(adc_dat_b_out[0]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[10]),
        .Q(adc_dat_b_out[10]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[11]),
        .Q(adc_dat_b_out[11]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[12]),
        .Q(adc_dat_b_out[12]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[13]),
        .Q(adc_dat_b_out[13]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[1]),
        .Q(adc_dat_b_out[1]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[2]),
        .Q(adc_dat_b_out[2]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[3]),
        .Q(adc_dat_b_out[3]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[4]),
        .Q(adc_dat_b_out[4]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[5]),
        .Q(adc_dat_b_out[5]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[6]),
        .Q(adc_dat_b_out[6]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[7]),
        .Q(adc_dat_b_out[7]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[8]),
        .Q(adc_dat_b_out[8]),
        .R(1'b0));
  FDRE \adc_dat_b_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_b_in[9]),
        .Q(adc_dat_b_out[9]),
        .R(1'b0));
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
