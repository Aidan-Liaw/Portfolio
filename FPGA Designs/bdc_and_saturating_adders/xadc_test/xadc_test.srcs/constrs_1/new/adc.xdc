### ADC

# data

set_property IOSTANDARD LVCMOS18 [get_ports {adc_dat_a_i[*]}]
set_property IOB TRUE [get_ports {adc_dat_a_i[*]}]

set_property PACKAGE_PIN Y17 [get_ports {adc_dat_a_i[0]}]
set_property PACKAGE_PIN W16 [get_ports {adc_dat_a_i[1]}]
set_property PACKAGE_PIN Y16 [get_ports {adc_dat_a_i[2]}]
set_property PACKAGE_PIN W15 [get_ports {adc_dat_a_i[3]}]
set_property PACKAGE_PIN W14 [get_ports {adc_dat_a_i[4]}]
set_property PACKAGE_PIN Y14 [get_ports {adc_dat_a_i[5]}]
set_property PACKAGE_PIN W13 [get_ports {adc_dat_a_i[6]}]
set_property PACKAGE_PIN V12 [get_ports {adc_dat_a_i[7]}]
set_property PACKAGE_PIN V13 [get_ports {adc_dat_a_i[8]}]
set_property PACKAGE_PIN T14 [get_ports {adc_dat_a_i[9]}]
set_property PACKAGE_PIN T15 [get_ports {adc_dat_a_i[10]}]
set_property PACKAGE_PIN V15 [get_ports {adc_dat_a_i[11]}]
set_property PACKAGE_PIN T16 [get_ports {adc_dat_a_i[12]}]
set_property PACKAGE_PIN V16 [get_ports {adc_dat_a_i[13]}]

set_property IOSTANDARD LVCMOS18 [get_ports {adc_dat_b_i[*]}]
set_property IOB TRUE [get_ports {adc_dat_b_i[*]}]

set_property PACKAGE_PIN R18 [get_ports {adc_dat_b_i[0]}]
set_property PACKAGE_PIN P16 [get_ports {adc_dat_b_i[1]}]
set_property PACKAGE_PIN P18 [get_ports {adc_dat_b_i[2]}]
set_property PACKAGE_PIN N17 [get_ports {adc_dat_b_i[3]}]
set_property PACKAGE_PIN R19 [get_ports {adc_dat_b_i[4]}]
set_property PACKAGE_PIN T20 [get_ports {adc_dat_b_i[5]}]
set_property PACKAGE_PIN T19 [get_ports {adc_dat_b_i[6]}]
set_property PACKAGE_PIN U20 [get_ports {adc_dat_b_i[7]}]
set_property PACKAGE_PIN V20 [get_ports {adc_dat_b_i[8]}]
set_property PACKAGE_PIN W20 [get_ports {adc_dat_b_i[9]}]
set_property PACKAGE_PIN W19 [get_ports {adc_dat_b_i[10]}]
set_property PACKAGE_PIN Y19 [get_ports {adc_dat_b_i[11]}]
set_property PACKAGE_PIN W18 [get_ports {adc_dat_b_i[12]}]
set_property PACKAGE_PIN Y18 [get_ports {adc_dat_b_i[13]}]

# clock input

set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_p_i]
set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports adc_clk_n_i]
set_property PACKAGE_PIN U18 [get_ports adc_clk_p_i]
set_property PACKAGE_PIN U19 [get_ports adc_clk_n_i]

# clock output

set_property IOSTANDARD LVCMOS18 [get_ports adc_enc_p_o]
set_property IOSTANDARD LVCMOS18 [get_ports adc_enc_n_o]

set_property SLEW FAST [get_ports adc_enc_p_o]
set_property SLEW FAST [get_ports adc_enc_n_o]

set_property DRIVE 8 [get_ports adc_enc_p_o]
set_property DRIVE 8 [get_ports adc_enc_n_o]

set_property PACKAGE_PIN N20 [get_ports adc_enc_p_o]
set_property PACKAGE_PIN P20 [get_ports adc_enc_n_o]

# clock duty cycle stabilizer (CSn)

set_property IOSTANDARD LVCMOS18 [get_ports adc_csn_o]
set_property PACKAGE_PIN V18 [get_ports adc_csn_o]
set_property SLEW FAST [get_ports adc_csn_o]
set_property DRIVE 8 [get_ports adc_csn_o]