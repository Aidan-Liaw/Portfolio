// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Feb  1 11:50:23 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_to_bram_0_0_sim_netlist.v
// Design      : system_adc_to_bram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram
   (bram_data,
    bram_address,
    D,
    adc_clk,
    adc_rst_in);
  output [19:0]bram_data;
  output [31:0]bram_address;
  input [19:0]D;
  input adc_clk;
  input adc_rst_in;

  wire [19:0]D;
  wire adc_clk;
  wire adc_rst_in;
  wire \address[3]_i_2_n_0 ;
  wire \address_reg[11]_i_1_n_0 ;
  wire \address_reg[11]_i_1_n_1 ;
  wire \address_reg[11]_i_1_n_2 ;
  wire \address_reg[11]_i_1_n_3 ;
  wire \address_reg[11]_i_1_n_4 ;
  wire \address_reg[11]_i_1_n_5 ;
  wire \address_reg[11]_i_1_n_6 ;
  wire \address_reg[11]_i_1_n_7 ;
  wire \address_reg[15]_i_1_n_0 ;
  wire \address_reg[15]_i_1_n_1 ;
  wire \address_reg[15]_i_1_n_2 ;
  wire \address_reg[15]_i_1_n_3 ;
  wire \address_reg[15]_i_1_n_4 ;
  wire \address_reg[15]_i_1_n_5 ;
  wire \address_reg[15]_i_1_n_6 ;
  wire \address_reg[15]_i_1_n_7 ;
  wire \address_reg[19]_i_1_n_0 ;
  wire \address_reg[19]_i_1_n_1 ;
  wire \address_reg[19]_i_1_n_2 ;
  wire \address_reg[19]_i_1_n_3 ;
  wire \address_reg[19]_i_1_n_4 ;
  wire \address_reg[19]_i_1_n_5 ;
  wire \address_reg[19]_i_1_n_6 ;
  wire \address_reg[19]_i_1_n_7 ;
  wire \address_reg[23]_i_1_n_0 ;
  wire \address_reg[23]_i_1_n_1 ;
  wire \address_reg[23]_i_1_n_2 ;
  wire \address_reg[23]_i_1_n_3 ;
  wire \address_reg[23]_i_1_n_4 ;
  wire \address_reg[23]_i_1_n_5 ;
  wire \address_reg[23]_i_1_n_6 ;
  wire \address_reg[23]_i_1_n_7 ;
  wire \address_reg[27]_i_1_n_0 ;
  wire \address_reg[27]_i_1_n_1 ;
  wire \address_reg[27]_i_1_n_2 ;
  wire \address_reg[27]_i_1_n_3 ;
  wire \address_reg[27]_i_1_n_4 ;
  wire \address_reg[27]_i_1_n_5 ;
  wire \address_reg[27]_i_1_n_6 ;
  wire \address_reg[27]_i_1_n_7 ;
  wire \address_reg[31]_i_2_n_1 ;
  wire \address_reg[31]_i_2_n_2 ;
  wire \address_reg[31]_i_2_n_3 ;
  wire \address_reg[31]_i_2_n_4 ;
  wire \address_reg[31]_i_2_n_5 ;
  wire \address_reg[31]_i_2_n_6 ;
  wire \address_reg[31]_i_2_n_7 ;
  wire \address_reg[3]_i_1_n_0 ;
  wire \address_reg[3]_i_1_n_1 ;
  wire \address_reg[3]_i_1_n_2 ;
  wire \address_reg[3]_i_1_n_3 ;
  wire \address_reg[3]_i_1_n_4 ;
  wire \address_reg[3]_i_1_n_5 ;
  wire \address_reg[3]_i_1_n_6 ;
  wire \address_reg[3]_i_1_n_7 ;
  wire \address_reg[7]_i_1_n_0 ;
  wire \address_reg[7]_i_1_n_1 ;
  wire \address_reg[7]_i_1_n_2 ;
  wire \address_reg[7]_i_1_n_3 ;
  wire \address_reg[7]_i_1_n_4 ;
  wire \address_reg[7]_i_1_n_5 ;
  wire \address_reg[7]_i_1_n_6 ;
  wire \address_reg[7]_i_1_n_7 ;
  wire [31:0]bram_address;
  wire [19:0]bram_data;
  wire clear;
  wire [3:3]\NLW_address_reg[31]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \address[31]_i_1 
       (.I0(adc_rst_in),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \address[3]_i_2 
       (.I0(bram_address[0]),
        .O(\address[3]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[3]_i_1_n_7 ),
        .Q(bram_address[0]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[11]_i_1_n_5 ),
        .Q(bram_address[10]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[11]_i_1_n_4 ),
        .Q(bram_address[11]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[11]_i_1 
       (.CI(\address_reg[7]_i_1_n_0 ),
        .CO({\address_reg[11]_i_1_n_0 ,\address_reg[11]_i_1_n_1 ,\address_reg[11]_i_1_n_2 ,\address_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[11]_i_1_n_4 ,\address_reg[11]_i_1_n_5 ,\address_reg[11]_i_1_n_6 ,\address_reg[11]_i_1_n_7 }),
        .S(bram_address[11:8]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[12] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[15]_i_1_n_7 ),
        .Q(bram_address[12]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[13] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[15]_i_1_n_6 ),
        .Q(bram_address[13]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[14] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[15]_i_1_n_5 ),
        .Q(bram_address[14]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[15] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[15]_i_1_n_4 ),
        .Q(bram_address[15]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[15]_i_1 
       (.CI(\address_reg[11]_i_1_n_0 ),
        .CO({\address_reg[15]_i_1_n_0 ,\address_reg[15]_i_1_n_1 ,\address_reg[15]_i_1_n_2 ,\address_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[15]_i_1_n_4 ,\address_reg[15]_i_1_n_5 ,\address_reg[15]_i_1_n_6 ,\address_reg[15]_i_1_n_7 }),
        .S(bram_address[15:12]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[16] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[19]_i_1_n_7 ),
        .Q(bram_address[16]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[17] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[19]_i_1_n_6 ),
        .Q(bram_address[17]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[18] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[19]_i_1_n_5 ),
        .Q(bram_address[18]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[19] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[19]_i_1_n_4 ),
        .Q(bram_address[19]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[19]_i_1 
       (.CI(\address_reg[15]_i_1_n_0 ),
        .CO({\address_reg[19]_i_1_n_0 ,\address_reg[19]_i_1_n_1 ,\address_reg[19]_i_1_n_2 ,\address_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[19]_i_1_n_4 ,\address_reg[19]_i_1_n_5 ,\address_reg[19]_i_1_n_6 ,\address_reg[19]_i_1_n_7 }),
        .S(bram_address[19:16]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[3]_i_1_n_6 ),
        .Q(bram_address[1]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[20] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[23]_i_1_n_7 ),
        .Q(bram_address[20]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[21] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[23]_i_1_n_6 ),
        .Q(bram_address[21]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[22] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[23]_i_1_n_5 ),
        .Q(bram_address[22]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[23] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[23]_i_1_n_4 ),
        .Q(bram_address[23]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[23]_i_1 
       (.CI(\address_reg[19]_i_1_n_0 ),
        .CO({\address_reg[23]_i_1_n_0 ,\address_reg[23]_i_1_n_1 ,\address_reg[23]_i_1_n_2 ,\address_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[23]_i_1_n_4 ,\address_reg[23]_i_1_n_5 ,\address_reg[23]_i_1_n_6 ,\address_reg[23]_i_1_n_7 }),
        .S(bram_address[23:20]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[24] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[27]_i_1_n_7 ),
        .Q(bram_address[24]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[27]_i_1_n_6 ),
        .Q(bram_address[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[27]_i_1_n_5 ),
        .Q(bram_address[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[27] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[27]_i_1_n_4 ),
        .Q(bram_address[27]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[27]_i_1 
       (.CI(\address_reg[23]_i_1_n_0 ),
        .CO({\address_reg[27]_i_1_n_0 ,\address_reg[27]_i_1_n_1 ,\address_reg[27]_i_1_n_2 ,\address_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[27]_i_1_n_4 ,\address_reg[27]_i_1_n_5 ,\address_reg[27]_i_1_n_6 ,\address_reg[27]_i_1_n_7 }),
        .S(bram_address[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[28] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[31]_i_2_n_7 ),
        .Q(bram_address[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[29] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[31]_i_2_n_6 ),
        .Q(bram_address[29]),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[3]_i_1_n_5 ),
        .Q(bram_address[2]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[30] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[31]_i_2_n_5 ),
        .Q(bram_address[30]),
        .S(clear));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[31] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[31]_i_2_n_4 ),
        .Q(bram_address[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[31]_i_2 
       (.CI(\address_reg[27]_i_1_n_0 ),
        .CO({\NLW_address_reg[31]_i_2_CO_UNCONNECTED [3],\address_reg[31]_i_2_n_1 ,\address_reg[31]_i_2_n_2 ,\address_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[31]_i_2_n_4 ,\address_reg[31]_i_2_n_5 ,\address_reg[31]_i_2_n_6 ,\address_reg[31]_i_2_n_7 }),
        .S(bram_address[31:28]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[3]_i_1_n_4 ),
        .Q(bram_address[3]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\address_reg[3]_i_1_n_0 ,\address_reg[3]_i_1_n_1 ,\address_reg[3]_i_1_n_2 ,\address_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\address_reg[3]_i_1_n_4 ,\address_reg[3]_i_1_n_5 ,\address_reg[3]_i_1_n_6 ,\address_reg[3]_i_1_n_7 }),
        .S({bram_address[3:1],\address[3]_i_2_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[7]_i_1_n_7 ),
        .Q(bram_address[4]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[7]_i_1_n_6 ),
        .Q(bram_address[5]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[7]_i_1_n_5 ),
        .Q(bram_address[6]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[7]_i_1_n_4 ),
        .Q(bram_address[7]),
        .S(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \address_reg[7]_i_1 
       (.CI(\address_reg[3]_i_1_n_0 ),
        .CO({\address_reg[7]_i_1_n_0 ,\address_reg[7]_i_1_n_1 ,\address_reg[7]_i_1_n_2 ,\address_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[7]_i_1_n_4 ,\address_reg[7]_i_1_n_5 ,\address_reg[7]_i_1_n_6 ,\address_reg[7]_i_1_n_7 }),
        .S(bram_address[7:4]));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[11]_i_1_n_7 ),
        .Q(bram_address[8]),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \address_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(\address_reg[11]_i_1_n_6 ),
        .Q(bram_address[9]),
        .S(clear));
  FDRE \bram_data_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(bram_data[0]),
        .R(clear));
  FDRE \bram_data_reg[16] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(bram_data[10]),
        .R(clear));
  FDRE \bram_data_reg[17] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(bram_data[11]),
        .R(clear));
  FDRE \bram_data_reg[18] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(bram_data[12]),
        .R(clear));
  FDRE \bram_data_reg[19] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(bram_data[13]),
        .R(clear));
  FDRE \bram_data_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(bram_data[1]),
        .R(clear));
  FDRE \bram_data_reg[20] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(bram_data[14]),
        .R(clear));
  FDRE \bram_data_reg[21] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(bram_data[15]),
        .R(clear));
  FDRE \bram_data_reg[22] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(bram_data[16]),
        .R(clear));
  FDRE \bram_data_reg[23] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(bram_data[17]),
        .R(clear));
  FDRE \bram_data_reg[24] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(bram_data[18]),
        .R(clear));
  FDRE \bram_data_reg[25] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(bram_data[19]),
        .R(clear));
  FDRE \bram_data_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(bram_data[2]),
        .R(clear));
  FDRE \bram_data_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(bram_data[3]),
        .R(clear));
  FDRE \bram_data_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(bram_data[4]),
        .R(clear));
  FDRE \bram_data_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(bram_data[5]),
        .R(clear));
  FDRE \bram_data_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(bram_data[6]),
        .R(clear));
  FDRE \bram_data_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(bram_data[7]),
        .R(clear));
  FDRE \bram_data_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(bram_data[8]),
        .R(clear));
  FDRE \bram_data_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(bram_data[9]),
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "system_adc_to_bram_0_0,adc_to_bram,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_to_bram,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_dat_a_in,
    adc_dat_b_in,
    adc_clk,
    adc_clk_source,
    adc_cdcs_out,
    adc_rst_in,
    bram_address,
    bram_data);
  input [13:0]adc_dat_a_in;
  input [13:0]adc_dat_b_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input adc_clk;
  output [1:0]adc_clk_source;
  output adc_cdcs_out;
  (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *) input adc_rst_in;
  output [31:0]bram_address;
  output [31:0]bram_data;

  wire \<const0> ;
  wire \<const1> ;
  wire adc_clk;
  wire [13:0]adc_dat_a_in;
  wire [13:0]adc_dat_b_in;
  wire adc_rst_in;
  wire [31:0]bram_address;
  wire [25:0]\^bram_data ;

  assign adc_cdcs_out = \<const1> ;
  assign adc_clk_source[1] = \<const1> ;
  assign adc_clk_source[0] = \<const0> ;
  assign bram_data[31] = \<const0> ;
  assign bram_data[30] = \<const0> ;
  assign bram_data[29] = \<const0> ;
  assign bram_data[28] = \<const0> ;
  assign bram_data[27] = \<const0> ;
  assign bram_data[26] = \<const0> ;
  assign bram_data[25:16] = \^bram_data [25:16];
  assign bram_data[15] = \<const0> ;
  assign bram_data[14] = \<const0> ;
  assign bram_data[13] = \<const0> ;
  assign bram_data[12] = \<const0> ;
  assign bram_data[11] = \<const0> ;
  assign bram_data[10] = \<const0> ;
  assign bram_data[9:0] = \^bram_data [9:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_to_bram inst
       (.D({adc_dat_a_in[13:4],adc_dat_b_in[13:4]}),
        .adc_clk(adc_clk),
        .adc_rst_in(adc_rst_in),
        .bram_address(bram_address),
        .bram_data({\^bram_data [25:16],\^bram_data [9:0]}));
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
