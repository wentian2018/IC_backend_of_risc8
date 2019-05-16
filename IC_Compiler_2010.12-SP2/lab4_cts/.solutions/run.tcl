
##################################
# Copy and Load the Working CEL  #
##################################

open_mw_lib orca_lib.mw
copy_mw_cel -from place_opt -to clock_opt
open_mw_cel clock_opt

#######################
# Examine Clock Tree  #
#######################

report_clock -skew -attributes
report_clock_tree -summary
report_port sd_CK

view report_constraint -all

#######################################
# Preparing for Clock Tree Synthesis  #
#######################################

set_clock_tree_exceptions -stop_pins {I_SDRAM_TOP/I_SDRAM_IF/sd_mux_*/S}

set_clock_tree_options -target_skew 0.1

set_clock_uncertainty 0.1 [all_clocks]

set_clock_tree_references -references {bufbd1 bufbd2 bufbd4 bufbd7 bufbdf}

define_routing_rule  CLOCK_DOUBLE_SPACING \
	-spacings {METAL3 0.42 METAL4 0.63 METAL5 0.82}

report_routing_rule CLOCK_DOUBLE_SPACING

set_clock_tree_options -routing_rule CLOCK_DOUBLE_SPACING \
	-layer_list {METAL3 METAL5} -use_default_routing_for_sinks 1

v report_clock_tree -settings

check_physical_design -stage pre_clock_opt -display

set_delay_calculation -clock_arnoldi

check_clock_tree

#################################
# Perform Clock Tree Synthesis  #
#################################

clock_opt -only_cts -no_clock_route

report_clock_tree -summary
report_clock_timing -type skew -significant_digits 3

v report_timing
v report_constraint -all

save_mw_cel -as clock_opt_cts

###################################
# Perform Hold Time Optimization  #
###################################

set_fix_hold [all_clocks]

report_qor

set_max_area 0
## Set Area Critical Range
## Typical value: 5 percent of critical clock period
set physopt_area_critical_range 0.2

extract_rc 
clock_opt -only_psyn -area_recovery -optimize_dft -no_clock_route 

report_qor
report_constraint -all

save_mw_cel -as clock_opt_psyn

#####################
# Route the Clocks  #
#####################

route_zrt_group -all_clock_nets -reuse_existing_global_route true
report_constraint -all

save_mw_cel -as clock_opt_route

report_design -physical

exit
