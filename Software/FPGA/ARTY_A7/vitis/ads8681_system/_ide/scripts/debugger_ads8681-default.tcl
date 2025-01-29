# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/grzegorz/git/ADS8681_Test/Software/FPGA/ARTY_A7/vitis/ads8681_system/_ide/scripts/debugger_ads8681-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/grzegorz/git/ADS8681_Test/Software/FPGA/ARTY_A7/vitis/ads8681_system/_ide/scripts/debugger_ads8681-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Arty A7-100T 210319BCC513A" && level==0 && jtag_device_ctx=="jsn-Arty A7-100T-210319BCC513A-13631093-0"}
fpga -file /home/grzegorz/git/ADS8681_Test/Software/FPGA/ARTY_A7/vitis/ads8681/_ide/bitstream/ads8681_block_1_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw /home/grzegorz/git/ADS8681_Test/Software/FPGA/ARTY_A7/vitis/ads8681_platform/export/ads8681_platform/hw/ads8681_block_1_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow /home/grzegorz/git/ADS8681_Test/Software/FPGA/ARTY_A7/vitis/ads8681/Debug/ads8681.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
