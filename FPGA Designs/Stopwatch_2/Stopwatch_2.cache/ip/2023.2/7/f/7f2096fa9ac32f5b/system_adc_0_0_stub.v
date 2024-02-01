// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 17:15:08 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_0_0_stub.v
// Design      : system_adc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_dat_a_in, adc_dat_b_in, adc_clk_p_in, 
  adc_clk_n_in, adc_clk_source, adc_cdcs_out, adc_dat_a_out, adc_dat_b_out)
/* synthesis syn_black_box black_box_pad_pin="adc_dat_a_in[13:0],adc_dat_b_in[13:0],adc_clk_p_in,adc_clk_n_in,adc_clk_source[1:0],adc_cdcs_out,adc_dat_a_out[13:0],adc_dat_b_out[13:0]" */;
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  input adc_clk_p_in;
  input adc_clk_n_in;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  output [13:0]adc_dat_a_out;
  output [13:0]adc_dat_b_out;
endmodule
