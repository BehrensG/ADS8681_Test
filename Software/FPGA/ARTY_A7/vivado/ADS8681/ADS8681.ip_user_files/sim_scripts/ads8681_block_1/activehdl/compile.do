transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/microblaze_v11_0_13
vlib activehdl/xil_defaultlib
vlib activehdl/lmb_v10_v3_0_14
vlib activehdl/lmb_bram_if_cntlr_v4_0_24
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_crossbar_v2_1_32
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_intc_v4_1_19
vlib activehdl/xlconcat_v2_1_6
vlib activehdl/mdm_v3_2_26
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/lib_srl_fifo_v1_0_4
vlib activehdl/axi_uartlite_v2_0_35
vlib activehdl/dist_mem_gen_v8_0_15
vlib activehdl/lib_fifo_v1_0_19
vlib activehdl/interrupt_control_v3_1_5
vlib activehdl/axi_quad_spi_v3_2_30
vlib activehdl/axi_gpio_v2_0_33

vmap xpm activehdl/xpm
vmap microblaze_v11_0_13 activehdl/microblaze_v11_0_13
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lmb_v10_v3_0_14 activehdl/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 activehdl/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 activehdl/axi_crossbar_v2_1_32
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_19 activehdl/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 activehdl/xlconcat_v2_1_6
vmap mdm_v3_2_26 activehdl/mdm_v3_2_26
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 activehdl/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_35 activehdl/axi_uartlite_v2_0_35
vmap dist_mem_gen_v8_0_15 activehdl/dist_mem_gen_v8_0_15
vmap lib_fifo_v1_0_19 activehdl/lib_fifo_v1_0_19
vmap interrupt_control_v3_1_5 activehdl/interrupt_control_v3_1_5
vmap axi_quad_spi_v3_2_30 activehdl/axi_quad_spi_v3_2_30
vmap axi_gpio_v2_0_33 activehdl/axi_gpio_v2_0_33

vlog -work xpm  -sv2k12 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -  \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_microblaze_0_0/sim/ads8681_block_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_dlmb_v10_0/sim/ads8681_block_1_dlmb_v10_0.vhd" \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_ilmb_v10_0/sim/ads8681_block_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_dlmb_bram_if_cntlr_0/sim/ads8681_block_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_ilmb_bram_if_cntlr_0/sim/ads8681_block_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_lmb_bram_0/sim/ads8681_block_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_xbar_0/sim/ads8681_block_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_19 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_microblaze_0_axi_intc_0/sim/ads8681_block_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_microblaze_0_xlconcat_0/sim/ads8681_block_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_26 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/feb7/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_mdm_1_0/sim/ads8681_block_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_clk_wiz_1_0/ads8681_block_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_clk_wiz_1_0/ads8681_block_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_rst_clk_wiz_1_100M_0/sim/ads8681_block_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_4 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_axi_uartlite_0_0/sim/ads8681_block_1_axi_uartlite_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_15  -v2k5 "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/ec67/hdl" "+incdir+../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/3242" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_lite_ipif_v3_0_4 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l mdm_v3_2_26 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l dist_mem_gen_v8_0_15 -l lib_fifo_v1_0_19 -l interrupt_control_v3_1_5 -l axi_quad_spi_v3_2_30 -l axi_gpio_v2_0_33 \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/fa7e/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_fifo_v1_0_19 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_30 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/2538/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_axi_quad_spi_0_0/sim/ads8681_block_1_axi_quad_spi_0_0.vhd" \
"../../../bd/ads8681_block_1/sim/ads8681_block_1.vhd" \

vcom -work axi_gpio_v2_0_33 -  \
"../../../../ADS8681.gen/sources_1/bd/ads8681_block_1/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -  \
"../../../bd/ads8681_block_1/ip/ads8681_block_1_axi_gpio_0_0/sim/ads8681_block_1_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

