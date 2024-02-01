// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Feb  1 14:54:56 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/aidan/Portfolio/FPGA
//               Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_adc_to_bram_0_0/system_adc_to_bram_0_0_stub.v}
// Design      : system_adc_to_bram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adc_to_bram,Vivado 2023.2" *)
module system_adc_to_bram_0_0(adc_dat_a_in, adc_dat_b_in, adc_clk, 
  adc_clk_source, adc_cdcs_out, adc_rst_in, bram_address, bram_data)
/* synthesis syn_black_box black_box_pad_pin="adc_dat_a_in[13:0],adc_dat_b_in[13:0],adc_clk_source[1:0],adc_cdcs_out,adc_rst_in,bram_address[31:0],bram_data[31:0]" */
/* synthesis syn_force_seq_prim="adc_clk" */;
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  input adc_clk /* synthesis syn_isclock = 1 */;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  input adc_rst_in;
  output [31:0]bram_address;
  output [31:0]bram_data;
endmodule
