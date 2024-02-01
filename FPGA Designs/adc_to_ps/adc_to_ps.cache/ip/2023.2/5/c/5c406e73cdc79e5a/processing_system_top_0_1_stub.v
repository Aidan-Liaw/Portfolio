// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 23:06:41 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_top_0_1_stub.v
// Design      : processing_system_top_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_dat_a_in, adc_dat_b_in, adc_clk_p_in, 
  adc_clk_n_in, adc_rst_in, adc_clk_source, adc_cdcs_out, led_out, adc_dat_a_out, 
  adc_dat_b_out, adc_clk_out)
/* synthesis syn_black_box black_box_pad_pin="adc_dat_a_in[13:0],adc_dat_b_in[13:0],adc_clk_p_in,adc_clk_n_in,adc_rst_in,adc_clk_source[1:0],adc_cdcs_out,led_out[7:0],adc_dat_a_out[13:0],adc_dat_b_out[13:0]" */
/* synthesis syn_force_seq_prim="adc_clk_out" */;
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  input adc_clk_p_in;
  input adc_clk_n_in;
  input adc_rst_in;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  output [7:0]led_out;
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
  output adc_clk_out /* synthesis syn_isclock = 1 */;
endmodule
