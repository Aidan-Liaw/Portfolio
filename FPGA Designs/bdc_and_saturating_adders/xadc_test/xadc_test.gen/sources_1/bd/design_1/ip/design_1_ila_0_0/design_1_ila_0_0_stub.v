// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Jan 28 21:50:38 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/aidan/Portfolio/FPGA
//               Designs/bdc_and_saturating_adders/xadc_test/xadc_test.gen/sources_1/bd/design_1/ip/design_1_ila_0_0/design_1_ila_0_0_stub.v}
// Design      : design_1_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ila,Vivado 2023.2" *)
module design_1_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="probe0[11:0],probe1[4:0],probe2[0:0],probe3[0:0],probe4[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [11:0]probe0;
  input [4:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
endmodule
