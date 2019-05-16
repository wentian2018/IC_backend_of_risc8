# Script for Lab 1 steps - Data Setup and Basic Flow
#
file delete -force $my_mw_lib
#
############################################################
# Create Milkyway Design Library
############################################################
create_mw_lib $my_mw_lib -open -technology $tech_file \
	-mw_reference_library "$mw_path/sc $mw_path/io $mw_path/ram16x128"

############################################################
# Load the netlist, constraints and controls.
############################################################
import_designs $verilog_file \
	-format verilog \
	-top $top_design

############################################################
# Load TLU+ files
############################################################
set_tlu_plus_files \
	-max_tluplus $tlup_max \
	-min_tluplus $tlup_min \
	-tech2itf_map  $tlup_map

check_library
check_tlu_plus_files
list_libs

source $derive_pg_file
check_mv_design -power_nets

read_sdc $sdc_file
check_timing
report_timing_requirements
report_disable_timing
report_case_analysis
report_clock
report_clock -skew

source $ctrl_file

source scripts/zic_timing.tcl
exec cat zic.timing

remove_ideal_network [get_ports scan_en]

save_mw_cel -as RISC_CHIP_data_setup

############################################################
# Load a design plan from a DEF file and link
############################################################
read_def $def_file
set_pnet_options -complete {METAL3 METAL4}
save_mw_cel -as RISC_CHIP_floorplanned

############################################################
# Perfom placement and check congestion
############################################################
place_opt
redirect -tee place_opt.timing {report_timing}
report_congestion -grc_based -by_layer -routing_stage global
save_mw_cel -as RISC_CHIP_placed

############################################################
# Perfom clock tree synthesis
############################################################
remove_clock_uncertainty [all_clocks]
set_fix_hold [all_clocks]
clock_opt
redirect -tee clock_opt.timing {report_timing}
# GUI action only: "Color By Clock Trees"
save_mw_cel -as RISC_CHIP_cts

exit

############################################################
# Perfom routing
############################################################
# Re-invoke IC Compiler
open_mw_lib risc_chip.mw
open_mw_cel RISC_CHIP_cts
source $ctrl_file
route_opt
v rt
v rt -delay min
report_design -physical
save_mw_cel -as RISC_CHIP_routed

exit
