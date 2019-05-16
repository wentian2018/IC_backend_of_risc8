### Build rings around six groups of macros:

set_fp_rail_region_constraints  -polygon {{366 1304} {366 1680} {763 1680} {763 1304}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints  -polygon {{366 940} {366 1300} {625 1300} {625 940}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints  -polygon {{926 1193} {926 1807} {1454 1807} {1454 1193}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints  -polygon {{1436 1660} {1436 1794} {1807 1794} {1807 1660}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints  -polygon {{1500 1300} {1500 1663} {1807 1663} {1807 1300}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints  -polygon {{1366 366} {1366 776} {1794 776} {1794 366}}
create_fp_group_block_ring  -nets  {VDD VSS}  -horizontal_ring_layer METAL5 -horizontal_ring_offset 0.78 -horizontal_ring_width 3 -vertical_ring_layer METAL4 -vertical_ring_offset 0.73 -vertical_ring_width 3 -horizontal_strap_layer METAL5 -horizontal_strap_width 3 -vertical_strap_layer METAL4 -vertical_strap_width 3
commit_fp_group_block_ring

set_fp_rail_region_constraints -remove    
