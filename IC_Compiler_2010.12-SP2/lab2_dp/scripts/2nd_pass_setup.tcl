create_mw_lib orca_lib_2.mw \
	-technology $tech_file \
	-mw_reference_library $mw_ref_libs \
	-open

import_designs design_data/ORCA_2.v \
	-format verilog -cel ORCA -top ORCA
        
set_tlu_plus_files \
	-max_tluplus $tlup_max \
	-min_tluplus $tlup_min \
	-tech2itf_map  $tlup_map

source scripts/connect_pg.tcl
read_def design_data/ORCA_2.scandef
read_sdc design_data/ORCA_2.sdc
source scripts/opt_ctrl.tcl

