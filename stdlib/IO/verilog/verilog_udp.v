

`timescale 1ns/1ps

// udp_data_begin


`celldefine
module PB8_func( C, I, IE, OEN, PAD, PG );
input I, IE, OEN, PG;
output C;
inout PAD;

	and MGM_BG_0( C, IE, PAD );

	wire MGM_WB_0;

	wire MGM_WB_1;

	wire OEN_inv_for_PB8;

	not MGM_BG_1( OEN_inv_for_PB8, OEN );

	and MGM_BG_2( MGM_WB_0, OEN_inv_for_PB8, I );

	buf MGM_BG_3( MGM_WB_1, OEN );

	bufif0 MGM_BG_4( PAD, MGM_WB_0,MGM_WB_1 );

endmodule
`endcelldefine
// udp_data_end
