define_routing_rule 2X_SPACING -spacings {METAL2 0.6 METAL3 0.6 METAL4 0.8 METAL5 1.2 METAL6 1.4}
set_clock_tree_options -clock_tree [all_clocks] -routing_rule 2X_SPACING -layer_list "METAL3 METAL6"


