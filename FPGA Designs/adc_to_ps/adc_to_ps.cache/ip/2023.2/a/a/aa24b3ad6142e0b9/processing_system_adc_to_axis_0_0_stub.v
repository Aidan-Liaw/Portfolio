// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jan 30 23:06:38 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ processing_system_adc_to_axis_0_0_stub.v
// Design      : processing_system_adc_to_axis_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "adc_to_axis,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_a_dat, adc_b_dat, m_axis_tvalid, 
  m_axis_tdata, adc_clk)
/* synthesis syn_black_box black_box_pad_pin="adc_a_dat[13:0],adc_b_dat[13:0],m_axis_tvalid,m_axis_tdata[31:0]" */
/* synthesis syn_force_seq_prim="adc_clk" */;
  input [13:0]adc_a_dat;
  input [13:0]adc_b_dat;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  input adc_clk /* synthesis syn_isclock = 1 */;
endmodule
