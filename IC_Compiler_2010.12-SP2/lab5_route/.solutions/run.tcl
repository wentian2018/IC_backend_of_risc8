open_mw_lib orca_lib.mw
copy_mw_cel -from clock_opt_route -to signal_route
open_mw_cel signal_route
start_gui

list_libs

source scripts/common_optimization_settings_icc.tcl
source scripts/common_placement_settings.tcl
source scripts/common_post_cts_timing_settings.tcl
source scripts/common_route_si_settings_zrt_icc.tcl

report_constraint -all
all_ideal_nets
all_high_fanout -nets -threshold 501

report_preferred_routing_direction
report_tlu_plus_files

check_legality
verify_pg_nets
preroute_standard_cells -remove_floating_pieces
verify_pg_nets

set_route_zrt_common_options   -post_detail_route_redundant_via_insertion medium
set_route_zrt_detail_options   -optimize_wire_via_effort_level medium

report_routing_rules; # report routing rules
report_route_opt_strategy; # report route_opt_stretegy
report_route_zrt_common_options; # Reports zrt common route options
report_route_zrt_global_options; # Reports zrt global route options
report_route_zrt_track_options; # Reports zrt route track assignment options
report_route_zrt_detail_options; # Reports zrt detail route options

route_opt -initial_route_only

view report_clock_tree -summary
view report_clock_timing -type skew
view report_qor
view report_constraint -all

route_opt -skip_initial_route  -power

derive_pg_connection -power_net VDD -power_pin VDD -ground_net VSS -ground_pin VSS 
derive_pg_connection -power_net VDD -ground_net VSS -tie

verify_zrt_route
verify_lvs

route_zrt_eco

report_design_physical -route

save_mw_cel -as route_opt_final

#exit
