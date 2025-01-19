# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/grzegorz/git/Workbench/FPGA/vitis/ads8681_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/grzegorz/git/Workbench/FPGA/vitis/ads8681_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ads8681_platform}\
-hw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -out {/home/grzegorz/git/Workbench/FPGA/vitis}

platform write
platform generate -domains 
platform active {ads8681_platform}
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform clean
platform generate
platform clean
platform active {ads8681_platform}
bsp reload
platform generate
platform clean
platform clean
platform clean
platform generate
platform clean
platform generate
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform clean
platform clean
platform active {ads8681_platform}
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate
platform active {ads8681_platform}
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {/home/grzegorz/git/Workbench/FPGA/vivado/ADS8681/ads8681_block_1_wrapper.xsa}
platform generate -domains 
platform active {ads8681_platform}
bsp reload
platform generate -domains 
platform clean
platform clean
platform generate
platform clean
platform clean
