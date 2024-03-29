transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+system_wrapper  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_15 -L processing_system7_vip_v1_0_17 -L xil_defaultlib -L axi_bram_ctrl_v4_1_9 -L xlconstant_v1_1_8 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L smartconnect_v1_0 -L axi_register_slice_v2_1_29 -L blk_mem_gen_v8_4_7 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.system_wrapper xil_defaultlib.glbl

do {system_wrapper.udo}

run 1000ns

endsim

quit -force
