
# Set pre-defined placement for the PLLs and CLKMUL macros

set_attribute [all_macro_cells] is_fixed false
remove_placement -object_type all

set obj [get_cells {"I_CLOCK_GEN/I_CLKMUL"} -all]
set_attribute -quiet $obj orientation FN
set_attribute -quiet $obj origin {1568.995 1677.765}
set_attribute -quiet $obj is_placed true
set_attribute -quiet $obj is_fixed true
set_attribute -quiet $obj is_soft_fixed false
set_attribute -quiet $obj eco_status eco_reset

set obj [get_cells {"I_CLOCK_GEN/I_PLL_PCI"} -all]
set_attribute -quiet $obj orientation N
set_attribute -quiet $obj origin {375.565 1677.765}
set_attribute -quiet $obj is_placed true
set_attribute -quiet $obj is_fixed true
set_attribute -quiet $obj is_soft_fixed false
set_attribute -quiet $obj eco_status eco_reset

set obj [get_cells {"I_CLOCK_GEN/I_PLL_SD"} -all]
set_attribute -quiet $obj orientation S
set_attribute -quiet $obj origin {1778.995 1777.765}
set_attribute -quiet $obj is_placed true
set_attribute -quiet $obj is_fixed true
set_attribute -quiet $obj is_soft_fixed false
set_attribute -quiet $obj eco_status eco_reset
