// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 10:57:14 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/aidan/Portfolio/FPGA
//               Designs/adc_test_2/adc_test_2.gen/sources_1/bd/processing_system/ip/processing_system_top_0_0/processing_system_top_0_0_sim_netlist.v}
// Design      : processing_system_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processing_system_top_0_0,top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "top,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module processing_system_top_0_0
   (adc_dat_a_in,
    adc_dat_b_in,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_clk_source,
    adc_cdcs_out,
    led_out);
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 adc_in CLK_P" *) input adc_clk_p_in;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 adc_in CLK_N" *) input adc_clk_n_in;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  output [7:0]led_out;

  wire \<const0> ;
  wire \<const1> ;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n_in;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p_in;
  wire [13:0]adc_dat_a_in;
  wire [7:0]led_out;

  assign adc_cdcs_out = \<const1> ;
  assign adc_clk_source[1] = \<const1> ;
  assign adc_clk_source[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  processing_system_top_0_0_top U0
       (.adc_clk_n_in(adc_clk_n_in),
        .adc_clk_p_in(adc_clk_p_in),
        .adc_dat_a_in(adc_dat_a_in[11:4]),
        .led_out(led_out));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "adc" *) 
module processing_system_top_0_0_adc
   (led_out,
    adc_dat_a_in,
    CLK);
  output [7:0]led_out;
  input [7:0]adc_dat_a_in;
  input CLK;

  wire CLK;
  wire \adc_dat_a[10]_i_1_n_0 ;
  wire \adc_dat_a[11]_i_1_n_0 ;
  wire \adc_dat_a[4]_i_1_n_0 ;
  wire \adc_dat_a[5]_i_1_n_0 ;
  wire \adc_dat_a[6]_i_1_n_0 ;
  wire \adc_dat_a[7]_i_1_n_0 ;
  wire \adc_dat_a[8]_i_1_n_0 ;
  wire \adc_dat_a[9]_i_1_n_0 ;
  wire [7:0]adc_dat_a_in;
  wire [7:0]led_out;

  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[10]_i_1 
       (.I0(adc_dat_a_in[6]),
        .O(\adc_dat_a[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[11]_i_1 
       (.I0(adc_dat_a_in[7]),
        .O(\adc_dat_a[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[4]_i_1 
       (.I0(adc_dat_a_in[0]),
        .O(\adc_dat_a[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[5]_i_1 
       (.I0(adc_dat_a_in[1]),
        .O(\adc_dat_a[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[6]_i_1 
       (.I0(adc_dat_a_in[2]),
        .O(\adc_dat_a[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[7]_i_1 
       (.I0(adc_dat_a_in[3]),
        .O(\adc_dat_a[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[8]_i_1 
       (.I0(adc_dat_a_in[4]),
        .O(\adc_dat_a[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adc_dat_a[9]_i_1 
       (.I0(adc_dat_a_in[5]),
        .O(\adc_dat_a[9]_i_1_n_0 ));
  FDRE \adc_dat_a_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[10]_i_1_n_0 ),
        .Q(led_out[6]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[11]_i_1_n_0 ),
        .Q(led_out[7]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[4]_i_1_n_0 ),
        .Q(led_out[0]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[5]_i_1_n_0 ),
        .Q(led_out[1]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[6]_i_1_n_0 ),
        .Q(led_out[2]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[7]_i_1_n_0 ),
        .Q(led_out[3]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[8]_i_1_n_0 ),
        .Q(led_out[4]),
        .R(1'b0));
  FDRE \adc_dat_a_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\adc_dat_a[9]_i_1_n_0 ),
        .Q(led_out[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top" *) 
module processing_system_top_0_0_top
   (led_out,
    adc_clk_p_in,
    adc_clk_n_in,
    adc_dat_a_in);
  output [7:0]led_out;
  input adc_clk_p_in;
  input adc_clk_n_in;
  input [7:0]adc_dat_a_in;

  wire adc_clk;
  wire adc_clk_buffered;
  wire adc_clk_n_in;
  wire adc_clk_p_in;
  wire [7:0]adc_dat_a_in;
  wire [7:0]led_out;

  (* box_type = "PRIMITIVE" *) 
  BUFG BUFG_inst
       (.I(adc_clk),
        .O(adc_clk_buffered));
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
  processing_system_top_0_0_adc UUT0
       (.CLK(adc_clk_buffered),
        .adc_dat_a_in(adc_dat_a_in),
        .led_out(led_out));
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
