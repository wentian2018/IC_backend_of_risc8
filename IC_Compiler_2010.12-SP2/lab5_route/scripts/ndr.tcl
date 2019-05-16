suppress_message {RT-065 RT-104 TIM-134}
define_routing_rule 2X_SPACING -widths {METAL2 0.4 METAL3 0.4 METAL4 0.4 METAL5 0.8  METAL6 0.88} -spacings {METAL2 0.42 METAL3 0.4 METAL4 0.63 METAL5 0.82  METAL6 1.06}
set CLK_NETS [get_nets -of [all_fanout -flat -clock_tree]]
set_net_routing_rule -rule 2X_SPACING $CLK_NETS
set_net_routing_layer_constraint -min_layer METAL3 -max_layer METAL6 $CLK_NETS

#M1	0.32		0.50		
#M2	0.40		0.42
#M3	0.40		0.42
#M4	0.40		0.63
#M5	0.80		0.82
#M6	0.88		1.06

