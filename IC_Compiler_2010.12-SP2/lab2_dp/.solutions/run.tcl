################################################################################
### Lab 2
################################################################################

start_gui

######################################################################
# Open the initial design setup cell
######################################################################
open_mw_cel -library orca_lib.mw orca_setup

source -echo scripts/opt_ctrl.tcl

gui_set_current_task -name {Design Planning}

######################################################################
# Initialize Floorplan
######################################################################
# Create corners and P/G pads and define all pad cell locations:
source -echo scripts/pad_cell_cons.tcl

initialize_floorplan -core_utilization 0.8 -left_io2core 30.0 -bottom_io2core 30.0 -right_io2core 30.0 -top_io2core 30.0

insert_pad_filler -cell "pfeed10000 pfeed05000 pfeed02000 pfeed01000 pfeed00500 pfeed00200 pfeed00100 pfeed00050 pfeed00010 pfeed00005"

source -echo scripts/connect_pg.tcl

create_pad_rings

save_mw_cel -as floorplan_init

# Use the following script to set the macro placement after using the GUI to manually place PLLs and CLK_MUL.
source -echo scripts/preplace_macros.tcl

report_fp_placement_strategy

set_fp_placement_strategy -sliver_size 10

# First VF Placement
create_fp_placement -timing_driven -no_hierarchy_gravity

report_congestion -grc_based -by_layer -routing_stage global

### Define vf placement options and re-run initial placement
source -echo scripts/macro_place_cons.tcl
report_fp_placement_strategy
report_fp_macro_options

source -echo scripts/keepout.tcl

create_fp_placement -timing_driven -no_hierarchy_gravity

report_congestion -grc_based -by_layer -routing_stage global

set_dont_touch_placement [all_macro_cells]

save_mw_cel -as floorplan_placed

### Build the power plan structure

source -echo scripts/macro_pg_rings.tcl

source -echo scripts/pns.tcl

commit_fp_rail

preroute_instances
preroute_standard_cells -fill_empty_rows -remove_floating_pieces

#Analyze IR drop
analyze_fp_rail  -nets {VDD VSS} -voltage_supply 1.32 -power_budget 350 -pad_masters { pv0i pvdi }

save_mw_cel -as floorplan_pns

set_pnet_options -complete "METAL4 METAL5"
create_fp_placement -timing_driven -no_hierarchy_gravity

route_zrt_global
#Perform global route congestion map analysis from the GUI

#Perform timing analysis
v report_timing

# Optional steps if there were timing violations:
#
# optimize_fp_timing -fix_design_rule
# route_zrt_global
# report_timing

save_mw_cel -as floorplan_complete

remove_placement -object_type standard_cell
write_def -version 5.6 -placed -all_vias -blockages  -routed_nets -specialnets -rows_tracks_gcells -output design_data/ORCA.def

close_mw_lib

source -echo scripts/2nd_pass_setup.tcl

read_def design_data/ORCA.def

set_pnet_options -complete "METAL4 METAL5"

save_mw_cel -as ready_for_placement
