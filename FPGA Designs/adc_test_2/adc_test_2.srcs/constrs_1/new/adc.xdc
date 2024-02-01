set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

### ADC

# data

set_property IOSTANDARD LVCMOS18 [get_ports {adc_dat_a_in[*]}]
set_property IOB TRUE [get_ports {adc_dat_a_in[*]}]

set_property PACKAGE_PIN Y17 [get_ports {adc_dat_a_in[0]}]
set_property PACKAGE_PIN W16 [get_ports {adc_dat_a_in[1]}]
set_property PACKAGE_PIN Y16 [get_ports {adc_dat_a_in[2]}]
set_property PACKAGE_PIN W15 [get_ports {adc_dat_a_in[3]}]
set_property PACKAGE_PIN W14 [get_ports {adc_dat_a_in[4]}]
set_property PACKAGE_PIN Y14 [get_ports {adc_dat_a_in[5]}]
set_property PACKAGE_PIN W13 [get_ports {adc_dat_a_in[6]}]
set_property PACKAGE_PIN V12 [get_ports {adc_dat_a_in[7]}]
set_property PACKAGE_PIN V13 [get_ports {adc_dat_a_in[8]}]
set_property PACKAGE_PIN T14 [get_ports {adc_dat_a_in[9]}]
set_property PACKAGE_PIN T15 [get_ports {adc_dat_a_in[10]}]
set_property PACKAGE_PIN V15 [get_ports {adc_dat_a_in[11]}]
set_property PACKAGE_PIN T16 [get_ports {adc_dat_a_in[12]}]
set_property PACKAGE_PIN V16 [get_ports {adc_dat_a_in[13]}]

set_property IOSTANDARD LVCMOS18 [get_ports {adc_dat_b_in[*]}]
set_property IOB TRUE [get_ports {adc_dat_b_in[*]}]

set_property PACKAGE_PIN R18 [get_ports {adc_dat_b_in[0]}]
set_property PACKAGE_PIN P16 [get_ports {adc_dat_b_in[1]}]
set_property PACKAGE_PIN P18 [get_ports {adc_dat_b_in[2]}]
set_property PACKAGE_PIN N17 [get_ports {adc_dat_b_in[3]}]
set_property PACKAGE_PIN R19 [get_ports {adc_dat_b_in[4]}]
set_property PACKAGE_PIN T20 [get_ports {adc_dat_b_in[5]}]
set_property PACKAGE_PIN T19 [get_ports {adc_dat_b_in[6]}]
set_property PACKAGE_PIN U20 [get_ports {adc_dat_b_in[7]}]
set_property PACKAGE_PIN V20 [get_ports {adc_dat_b_in[8]}]
set_property PACKAGE_PIN W20 [get_ports {adc_dat_b_in[9]}]
set_property PACKAGE_PIN W19 [get_ports {adc_dat_b_in[10]}]
set_property PACKAGE_PIN Y19 [get_ports {adc_dat_b_in[11]}]
set_property PACKAGE_PIN W18 [get_ports {adc_dat_b_in[12]}]
set_property PACKAGE_PIN Y18 [get_ports {adc_dat_b_in[13]}]

# clock input
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_p_in]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_n_in]
set_property PACKAGE_PIN U18 [get_ports adc_clk_p_in]
set_property PACKAGE_PIN U19 [get_ports adc_clk_n_in]

create_clock -period 8.000 -name adc_clk [get_ports adc_clk_p_in]

set_input_delay -max 3.400 -clock adc_clk [get_ports adc_dat_a_in[*]]
set_input_delay -max 3.400 -clock adc_clk [get_ports adc_dat_b_in[*]]

# clock output

set_property IOSTANDARD LVCMOS18 [get_ports {adc_clk_source[*]}]
set_property SLEW FAST [get_ports {adc_clk_source[*]}]
set_property DRIVE 8 [get_ports {adc_clk_source[*]}]

set_property PACKAGE_PIN N20 [get_ports {adc_clk_source[0]}]
set_property PACKAGE_PIN P20 [get_ports {adc_clk_source[1]}]

# clock duty cycle stabilizer (CSn)

set_property IOSTANDARD LVCMOS18 [get_ports adc_cdcs_out]
set_property PACKAGE_PIN V18 [get_ports adc_cdcs_out]
set_property SLEW FAST [get_ports adc_cdcs_out]
set_property DRIVE 8 [get_ports adc_cdcs_out]