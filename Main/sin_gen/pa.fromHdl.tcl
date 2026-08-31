
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name sin_gen -dir "C:/Xilinx/Project/sin_gen/planAhead_run_1" -part xc6slx45tfgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top sin_gen $srcset
set_param project.paUcfFile  "C:/Users/msemakin/Desktop/takt_gen/takt_gen_connection (2).ucf"
set hdlfile [add_files [list {ipcore_dir/sine_lut.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../Users/msemakin/Desktop/takt_gen/sin_gen.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "C:/Users/msemakin/Desktop/takt_gen/takt_gen_connection (2).ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45tfgg484-3
