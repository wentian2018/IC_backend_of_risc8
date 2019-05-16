### Apply macro placement constraints:

set_fp_placement_strategy \
    -auto_grouping high \
    -macros_on_edge on \
    -sliver_size 10 \
    -virtual_IPO on

set_fp_macro_options -legal_orientation {W E} [get_cells I_ORCA_TOP/I_PCI_TOP/I_PCI_WRITE_FIFO/PCI_FIFO_RAM_*]
