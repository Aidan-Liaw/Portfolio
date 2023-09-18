set_property -dict {PACKAGE_PIN P4 IOSTANDARD LVCMOS33} [get_ports {switches_A[0]}]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports {switches_A[1]}]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports {switches_A[2]}]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {switches_A[3]}]

set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {switches_B[0]}]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {switches_B[1]}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {switches_B[2]}]
set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {switches_B[3]}]

set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports button_1]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports button_2]
set_property -dict {PACKAGE_PIN R10 IOSTANDARD LVCMOS33} [get_ports button_reset]

set_property -dict {PACKAGE_PIN P2 IOSTANDARD LVCMOS33} [get_ports lock]
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports unlock]

set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports {ssd_out[6]}]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports {ssd_out[5]}]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD LVCMOS33} [get_ports {ssd_out[4]}]
set_property -dict {PACKAGE_PIN L4 IOSTANDARD LVCMOS33} [get_ports {ssd_out[3]}]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports {ssd_out[2]}]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports {ssd_out[1]}]
set_property -dict {PACKAGE_PIN L6 IOSTANDARD LVCMOS33} [get_ports {ssd_out[0]}]
set_property -dict {PACKAGE_PIN M4 IOSTANDARD LVCMOS33} [get_ports {ssd_out[7]}]

set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS33} [get_ports {anode_select[3]}]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD LVCMOS33} [get_ports {anode_select[2]}]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {anode_select[1]}]
set_property -dict {PACKAGE_PIN N5 IOSTANDARD LVCMOS33} [get_ports {anode_select[0]}]

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports CLK100MHZ]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK100MHZ]

#set_property -dict { PACKAGE_PIN <PIN> IOSTANDARD <STANDARD> } [get_ports { <NAME_IN_VHDL> }];

#set_property INIT 16'h0080 [get_cells Switch1/is_same_i_1]
