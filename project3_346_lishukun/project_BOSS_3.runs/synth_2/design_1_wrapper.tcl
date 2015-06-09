# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]

add_files D:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_xbar_1/design_1_xbar_1_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_4/design_1_axi_gpio_0_4_board.xdc]
set_property used_in_implementation false [get_files -all d:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all D:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files D:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/design_1.bd]

read_vhdl -library xil_defaultlib D:/study/embled/project_boss2/project_2/project_2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
read_xdc D:/study/embled/project_boss2/project_2/project_2.srcs/constrs_1/imports/lab2/lab2.xdc
set_property used_in_implementation false [get_files D:/study/embled/project_boss2/project_2/project_2.srcs/constrs_1/imports/lab2/lab2.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/study/embled/project_boss2/project_2/project_2.cache/wt [current_project]
set_property parent.project_dir D:/study/embled/project_boss2/project_2 [current_project]
catch { write_hwdef -file design_1_wrapper.hwdef }
synth_design -top design_1_wrapper -part xc7z010clg400-1
write_checkpoint design_1_wrapper.dcp
report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb
