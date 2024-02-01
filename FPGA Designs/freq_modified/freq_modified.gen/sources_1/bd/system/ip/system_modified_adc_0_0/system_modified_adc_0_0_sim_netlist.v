// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 10:25:34 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/aidan/Portfolio/FPGA
//               Designs/freq_modified/freq_modified.gen/sources_1/bd/system/ip/system_modified_adc_0_0/system_modified_adc_0_0_sim_netlist.v}
// Design      : system_modified_adc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_modified_adc_0_0,modified_adc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "modified_adc,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module system_modified_adc_0_0
   (adc_clk,
    adc_csn,
    adc_clk_p,
    adc_clk_n,
    adc_dat_a,
    adc_dat_b,
    led_o);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_modified_adc_0_0_adc_clk, INSERT_VIP 0" *) output adc_clk;
  output adc_csn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input adc_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input adc_clk_n;
  input [13:0]adc_dat_a;
  input [13:0]adc_dat_b;
  output [7:0]led_o;

  wire \<const1> ;
  wire adc_clk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p;
  wire [13:0]adc_dat_a;
  wire [7:0]led_o;

  assign adc_csn = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  system_modified_adc_0_0_modified_adc inst
       (.adc_clk(adc_clk),
        .adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .adc_dat_a(adc_dat_a[13:6]),
        .led_o(led_o));
endmodule

(* ORIG_REF_NAME = "modified_adc" *) 
module system_modified_adc_0_0_modified_adc
   (adc_clk,
    led_o,
    adc_clk_p,
    adc_clk_n,
    adc_dat_a);
  output adc_clk;
  output [7:0]led_o;
  input adc_clk_p;
  input adc_clk_n;
  input [7:0]adc_dat_a;

  wire adc_clk;
  wire adc_clk_n;
  wire adc_clk_p;
  wire [7:0]adc_dat_a;
  wire int_clk0;
  wire [7:0]led_o;
  wire [12:6]p_0_out;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG adc_clk_inst
       (.I(int_clk0),
        .O(adc_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_clk_inst0
       (.I(adc_clk_p),
        .IB(adc_clk_n),
        .O(int_clk0));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[10]_i_1 
       (.I0(adc_dat_a[4]),
        .O(p_0_out[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[11]_i_1 
       (.I0(adc_dat_a[5]),
        .O(p_0_out[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[12]_i_1 
       (.I0(adc_dat_a[6]),
        .O(p_0_out[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[6]_i_1 
       (.I0(adc_dat_a[0]),
        .O(p_0_out[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[7]_i_1 
       (.I0(adc_dat_a[1]),
        .O(p_0_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[8]_i_1 
       (.I0(adc_dat_a[2]),
        .O(p_0_out[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \int_dat_a_reg[9]_i_1 
       (.I0(adc_dat_a[3]),
        .O(p_0_out[9]));
  FDRE \int_dat_a_reg_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(led_o[4]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(led_o[5]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(led_o[6]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(adc_dat_a[7]),
        .Q(led_o[7]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(led_o[0]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(led_o[1]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(led_o[2]),
        .R(1'b0));
  FDRE \int_dat_a_reg_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(led_o[3]),
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
