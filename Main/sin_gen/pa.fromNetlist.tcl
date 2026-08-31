
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name sin_gen -dir "C:/Xilinx/Project/sin_gen/planAhead_run_2" -part xc6slx45tfgg484-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Xilinx/Project/sin_gen/sin_gen.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Xilinx/Project/sin_gen} {ipcore_dir} }
add_files "ipcore_dir/sine_lut.ncf" -fileset [get_property constrset [current_run]]
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "C:/Users/msemakin/Desktop/takt_gen/takt_gen_connection (2).ucf"
add_files "C:/Users/msemakin/Desktop/takt_gen/takt_gen_connection (2).ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
