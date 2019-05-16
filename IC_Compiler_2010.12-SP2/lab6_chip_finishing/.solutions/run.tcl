########################################
#      LOAD AND ANALYZE DESIGN         #
########################################
open_mw_lib orca_lib.mw
copy_mw_cel -from route_opt_final -to chip_finish
open_mw_cel chip_finish

# Check for DRC violations
verify_zrt_route

# Check for LVS violations
verify_lvs 

# Check for constraint violations
report_constraints -all

########################################
#      CRITICAL AREA REDUCTION         #
########################################

start_gui

report_critical_area -fault_type short
sh mv output_heatmap cca.short.before.rpt

spread_zrt_wires
report_critical_area -fault_type short
sh mv output_heatmap cca.short.after.rpt

report_critical_area -fault_type open
sh mv output_heatmap cca.open.before.rpt
widen_zrt_wires
report_critical_area -fault_type open
sh mv output_heatmap cca.open.after.rpt

verify_zrt_route
verify_lvs
rc

save_mw_cel -as chip_finish_ca

##############################################
# FIXING ANTENNA RULE VIOLATIONS WITH DIODES  #
##############################################

source -echo scripts/cb13_6m_antenna.tcl

report_antenna_rules	
verify_zrt_route

set_route_zrt_detail_options -insert_diodes_during_routing true
route_zrt_detail -incremental true

verify_lvs

derive_pg_connection -power_net VDD -power_pin VDD -ground_net VSS -ground_pin VSS 
derive_pg_connection -power_net VDD -ground_net VSS -tie

verify_zrt_route
verify_lvs
rc

#If there were any timing or logical DRC violations use below commands
route_opt incremental
derive_pg_connection -power_net VDD -power_pin VDD \
                     -ground_net VSS -ground_pin VSS
derive_pg_connection -power_net VDD \
                     -ground_net VSS -tie
verify_zrt_route
verify_lvs
rc 

save_mw_cel -as chip_finish_antenna

########################################
# INSERT STANDARD CELL FILLERS         #
########################################
  
insert_stdcell_filler -cell_with_metal "feedth9 feedth3" -connect_to_power VDD -connect_to_ground VSS -between_std_cells_only
insert_stdcell_filler -cell_without_metal "feedth" -connect_to_power VDD -connect_to_ground VSS -between_std_cells_only

verify_zrt_route
verify_lvs
rc

########################################
# INSERT REDUNDANT VIAS                #
########################################
 
report_design_physical -route
insert_zrt_redundant_vias -list_only
insert_zrt_redundant_vias -effort medium

report_design_physical -route
verify_zrt_route
verify_lvs
rc

########################################
#     INSERT METAL FILL                #
########################################

insert_metal_filler -routing_space 2 -timing_driven

########################################
#           CONNECT P/G                #
########################################

derive_pg_connection -power_net VDD -power_pin VDD -ground_net VSS -ground_pin VSS 
derive_pg_connection -power_net VDD -ground_net VSS -tie

########################################
#            FINAL DESIGN CHECKS       #
########################################
verify_zrt_route
verify_lvs
rc

########################################
#       SAVE DESIGN AND STREAM OUT     #
########################################
save_mw_cel -as chip_finish_final
close_mw_cel
write_stream -cells chip_finish_final orca.gdsii
close_mw_lib

exit
