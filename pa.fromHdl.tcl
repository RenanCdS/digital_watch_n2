
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name digital_watch_n2 -dir "/home/ise/ISE_Projects/digital_watch_n2/planAhead_run_1" -part xc3s100ecp132-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "digital_system_n2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {two_bits_regs.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {regs.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {conversor_bin_to_hex.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk_division.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {data_flow_n2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {control_unit_n2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {digital_system_n2.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top digital_system_n2 $srcset
add_files [list {digital_system_n2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100ecp132-4
