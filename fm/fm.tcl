set search_path "$search_path ../rtl"

set synopsys_auto_setup true

set_svf ../dc/outputs/risc8.svf
set hdlin_dwroot /opt/synopsys/syn201506 
########read RTL ###########
read_verilog -r -vcs "-f ../rtl/syn.vf"
set_top cpu
read_db -i ../ref/db/GF21LB004-FB-00000-r5p0-03rel0/arm/cp/cmos28lp/sc9_base_hvt/r5p0/db/sc9_cmos28lp_base_hvt_ff_nominal_min_1p10v_m40c.db

########read implementation model########
read_verilog -i ../dc/run/netlist/risc8.v
set_top cpu
verify


if { [info exists ::env(STARTGUI)] } {
	start_gui
} else {
	quit
}

