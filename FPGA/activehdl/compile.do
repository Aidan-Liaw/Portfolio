transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_15
vlib activehdl/processing_system7_vip_v1_0_17
vlib activehdl/xil_defaultlib
vlib activehdl/axi_bram_ctrl_v4_1_9
vlib activehdl/xlconstant_v1_1_8
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_14
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_register_slice_v2_1_29
vlib activehdl/blk_mem_gen_v8_4_7

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 activehdl/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 activehdl/processing_system7_vip_v1_0_17
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_bram_ctrl_v4_1_9 activehdl/axi_bram_ctrl_v4_1_9
vmap xlconstant_v1_1_8 activehdl/xlconstant_v1_1_8
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 activehdl/proc_sys_reset_v5_0_14
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_register_slice_v2_1_29 activehdl/axi_register_slice_v2_1_29
vmap blk_mem_gen_v8_4_7 activehdl/blk_mem_gen_v8_4_7

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_processing_system7_0_1/sim/system_processing_system7_0_1.v" \

vcom -work axi_bram_ctrl_v4_1_9 -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/5ed7/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/bd53/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/c6b2/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/abb8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/7827/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/79ce/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_sawn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_swn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_sbn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_s01mmu_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_s01tr_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_s01sic_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_s01a2s_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_sarn_1.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_srn_1.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_sawn_1.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_swn_1.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_sbn_1.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ebf7/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m00s2a_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m00arn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/sim/bd_44e3_m00rn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/sim/bd_44e3_m00awn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/sim/bd_44e3_m00wn_0.sv" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/sim/bd_44e3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6eea/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/ip/ip_31/sim/bd_44e3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \

vlog -work axi_register_slice_v2_1_29  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \

vcom -work xil_defaultlib -93  \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_7  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ipshared/35de/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_15 -l processing_system7_vip_v1_0_17 -l xil_defaultlib -l axi_bram_ctrl_v4_1_9 -l xlconstant_v1_1_8 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_14 -l smartconnect_v1_0 -l axi_register_slice_v2_1_29 -l blk_mem_gen_v8_4_7 \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/sim/system.v" \
"../../FPGA Designs/BRAM_Test/BRAM_Test.gen/sources_1/bd/system/hdl/system_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

