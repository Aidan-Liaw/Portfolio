`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2024 10:13:30
// Design Name: 
// Module Name: modified_adc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module modified_adc #
(
  parameter integer ADC_DATA_WIDTH = 14
)
(
  // System signals
  output wire                        adc_clk,

  // ADC signals
  output wire                        adc_csn,
  input  wire                        adc_clk_p,
  input  wire                        adc_clk_n,
  input  wire [ADC_DATA_WIDTH-1:0]   adc_dat_a,
  input  wire [ADC_DATA_WIDTH-1:0]   adc_dat_b,

  // Master side
  output wire [7:0]   led_o
);

  reg  [ADC_DATA_WIDTH-1:0] int_dat_a_reg;
  reg  [ADC_DATA_WIDTH-1:0] int_dat_b_reg;
  wire                      int_clk0;
  wire 						int_clk;

  IBUFGDS adc_clk_inst0 (.I(adc_clk_p), .IB(adc_clk_n), .O(int_clk0));
  BUFG adc_clk_inst (.I(int_clk0), .O(int_clk));

  always @(posedge int_clk)
  begin
    int_dat_a_reg <= {adc_dat_a[13], ~adc_dat_a[12:0]};
    int_dat_b_reg <= {adc_dat_b[13], ~adc_dat_b[12:0]};
  end

  assign adc_clk = int_clk;

  assign adc_csn = 1'b1;

  assign led_o = int_dat_a_reg[ADC_DATA_WIDTH-1:6];

endmodule

