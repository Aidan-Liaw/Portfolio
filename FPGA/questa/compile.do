vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_15
vlib questa_lib/msim/processing_system7_vip_v1_0_17
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_31
vlib questa_lib/msim/proc_sys_reset_v5_0_14
vlib questa_lib/msim/generic_baseblocks_v2_1_1
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/axi_data_fifo_v2_1_28
vlib questa_lib/msim/axi_register_slice_v2_1_29
vlib questa_lib/msim/axi_protocol_converter_v2_1_29
vlib questa_lib/msim/blk_mem_gen_v8_4_7
vlib questa_lib/msim/xlconstant_v1_1_8

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_15 questa_lib/msim/axi_vip_v1_1_15
vmap processing_system7_vip_v1_0_17 questa_lib/msim/processing_system7_vip_v1_0_17
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_31 questa_lib/msim/axi_gpio_v2_0_31
vmap proc_sys_reset_v5_0_14 questa_lib/msim/proc_sys_reset_v5_0_14
vmap generic_baseblocks_v2_1_1 questa_lib/msim/generic_baseblocks_v2_1_1
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 questa_lib/msim/axi_data_fifo_v2_1_28
vmap axi_register_slice_v2_1_29 questa_lib/msim/axi_register_slice_v2_1_29
vmap axi_protocol_converter_v2_1_29 questa_lib/msim/axi_protocol_converter_v2_1_29
vmap blk_mem_gen_v8_4_7 questa_lib/msim/blk_mem_gen_v8_4_7
vmap xlconstant_v1_1_8 questa_lib/msim/xlconstant_v1_1_8

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.srcs/sources_1/new/adc_to_bram.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_15  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/5753/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xilinx_vip "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_31  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6fbe/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_rst_ps7_0_125M_0/sim/system_rst_ps7_0_125M_0.vhd" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_29  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_blk_mem_gen_1_0/sim/system_blk_mem_gen_1_0.v" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ipshared/6b2b/hdl" "+incdir+C:/Xilinx/Vivado/2023.2/data/xilinx_vip/include" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/ip/system_adc_to_bram_0_0/sim/system_adc_to_bram_0_0.v" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/sim/system.v" \
"../../FPGA Designs/BRAM_Test_2/BRAM_Test_2.gen/sources_1/bd/system/hdl/system_wrapper.v" \

vlog -work xil_defaultlib \
"glbl.v"

