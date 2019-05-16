# IC Compiler run script for ORCA_floorplanned

open_mw_lib orca_lib.mw
open_mw_cel ORCA_floorplanned

source scripts/opt_ctrl.tcl

set_dont_touch_placement [all_macro_cells]

report_ignored_layers
report_pnet_options

printvar physopt_hard_keepout_distance
printvar placer_soft_keepout_channel_width

source scripts/ndr.tcl

check_physical_design -stage pre_place_opt
check_physical_constraints

report_scan_chain
read_def design_data/ORCA_TOP.scandef
v report_scan_chain

report_saif
source scripts/inputs_toggle_rate.tcl
report_saif

report_power_options
set_power_options -low_power_placement true
report_power_options

save_mw_cel -as ORCA_preplace_setup

place_opt -area_recovery -optimize_dft -power 

save_mw_cel -as ORCA_place_opt

report_congestion -grc_based -by_layer -routing_stage global

report_design -physical
report_qor
report_power

set_power_options -dynamic true
psynopt -area_recovery -power

report_congestion -grc_based -by_layer -routing_stage global
report_design -physical
report_qor
report_power

save_mw_cel -as ORCA_placed
