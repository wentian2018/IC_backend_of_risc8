

`timescale 1ns/1ps

// udp_data_begin


`celldefine
module AND2X2_func( A, B, Y );
input A, B;
output Y;

	and MGM_BG_0( Y, A, B );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module AOI21X1_func( A0, A1, B0, Y );
input A0, A1, B0;
output Y;

	wire A0_inv_for_AOI21X1;

	not MGM_BG_0( A0_inv_for_AOI21X1, A0 );

	wire B0_inv_for_AOI21X1;

	not MGM_BG_1( B0_inv_for_AOI21X1, B0 );

	wire Y_row1;

	and MGM_BG_2( Y_row1, A0_inv_for_AOI21X1, B0_inv_for_AOI21X1 );

	wire A1_inv_for_AOI21X1;

	not MGM_BG_3( A1_inv_for_AOI21X1, A1 );

	wire Y_row2;

	and MGM_BG_4( Y_row2, A1_inv_for_AOI21X1, B0_inv_for_AOI21X1 );

	or MGM_BG_5( Y, Y_row1, Y_row2 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQ_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  0;
  ?  0  p  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  r  1  :  ?  :  1;
  0  ?  p  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


primitive UDP_tt_5v_25c_MGM_IQN_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  1;
  ?  0  p  0  :  1  :  1;
  1  0  ?  ?  :  ?  :  1;
  0  ?  r  1  :  ?  :  0;
  0  ?  p  1  :  0  :  0;
  0  1  ?  ?  :  ?  :  0;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


`celldefine
module DFFDRX1_func( CK, D, Q, QN, RN );
input CK, D, RN;
output Q, QN;

	not MGM_BG_0( MGM_C0, RN );

	UDP_tt_5v_25c_MGM_IQ_FF_UDP( IQ, MGM_C0, 1'b0, CK, D );

	UDP_tt_5v_25c_MGM_IQN_FF_UDP( IQN, MGM_C0, 1'b0, CK, D );

	buf MGM_BG_1( Q, IQ );

	buf MGM_BG_2( QN, IQN );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQ_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  0;
  ?  0  p  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  r  1  :  ?  :  1;
  0  ?  p  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


primitive UDP_tt_5v_25c_MGM_IQN_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  1;
  ?  0  p  0  :  1  :  1;
  1  0  ?  ?  :  ?  :  1;
  0  ?  r  1  :  ?  :  0;
  0  ?  p  1  :  0  :  0;
  0  1  ?  ?  :  ?  :  0;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


`celldefine
module DFFDX1_func( CK, D, Q, QN );
input CK, D;
output Q, QN;

	UDP_tt_5v_25c_MGM_IQ_FF_UDP( IQ, 1'b0, 1'b0, CK, D );

	UDP_tt_5v_25c_MGM_IQN_FF_UDP( IQN, 1'b0, 1'b0, CK, D );

	buf MGM_BG_0( Q, IQ );

	buf MGM_BG_1( QN, IQN );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQN_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  1;
  ?  0  p  0  :  1  :  1;
  1  0  ?  ?  :  ?  :  1;
  0  ?  r  1  :  ?  :  0;
  0  ?  p  1  :  0  :  0;
  0  1  ?  ?  :  ?  :  0;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


`celldefine
module DFFNX1_func( CK, D, QN );
input CK, D;
output QN;

	UDP_tt_5v_25c_MGM_IQN_FF_UDP( IQN, 1'b0, 1'b0, CK, D );

	buf MGM_BG_0( QN, IQN );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQ_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  0;
  ?  0  p  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  r  1  :  ?  :  1;
  0  ?  p  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


`celldefine
module DFFX1_func( CK, D, Q );
input CK, D;
output Q;

	UDP_tt_5v_25c_MGM_IQ_FF_UDP( IQ, 1'b0, 1'b0, CK, D );

	buf MGM_BG_0( Q, IQ );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQ_FF_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  n  ?  :  ?  :  -;
  ?  0  r  0  :  ?  :  0;
  ?  0  p  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  r  1  :  ?  :  1;
  0  ?  p  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
  0  0  ?  *  :  ?  :  -;
  0  n  ?  ?  :  ?  :  -;
  n  0  ?  ?  :  ?  :  -;
  0  p  ?  ?  :  ?  :  -;
                
endtable
endprimitive


`celldefine
module DFFX2_func( CK, D, Q );
input CK, D;
output Q;

	UDP_tt_5v_25c_MGM_IQ_FF_UDP( IQ, 1'b0, 1'b0, CK, D );

	buf MGM_BG_0( Q, IQ );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module DLYX0P2_func( A, Y );
input A;
output Y;

	buf MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module DLYX1_func( A, Y );
input A;
output Y;

	buf MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP12_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP24_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP48_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP6_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP9_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module FDCAP96_func(  );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module INVX1_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module INVX16_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module INVX2_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module INVX4_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module INVX8_func( A, Y );
input A;
output Y;

	not MGM_BG_0( Y, A );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module MAJ3X1_func( A, B, C, Y );
input A, B, C;
output Y;

	wire Y_row1;

	and MGM_BG_0( Y_row1, A, B );

	wire Y_row2;

	and MGM_BG_1( Y_row2, A, C );

	wire Y_row3;

	and MGM_BG_2( Y_row3, B, C );

	or MGM_BG_3( Y, Y_row1, Y_row2, Y_row3 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module MUXN2X1_func( A, B, S0, Y );
input A, B, S0;
output Y;

	wire A_inv_for_MUXN2X1;

	not MGM_BG_0( A_inv_for_MUXN2X1, A );

	wire B_inv_for_MUXN2X1;

	not MGM_BG_1( B_inv_for_MUXN2X1, B );

	wire Y_row1;

	and MGM_BG_2( Y_row1, A_inv_for_MUXN2X1, B_inv_for_MUXN2X1 );

	wire S0_inv_for_MUXN2X1;

	not MGM_BG_3( S0_inv_for_MUXN2X1, S0 );

	wire Y_row2;

	and MGM_BG_4( Y_row2, A_inv_for_MUXN2X1, S0_inv_for_MUXN2X1 );

	wire Y_row3;

	and MGM_BG_5( Y_row3, B_inv_for_MUXN2X1, S0 );

	or MGM_BG_6( Y, Y_row1, Y_row2, Y_row3 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NAND2X1_func( A, B, Y );
input A, B;
output Y;

	wire A_inv_for_NAND2X1;

	not MGM_BG_0( A_inv_for_NAND2X1, A );

	wire B_inv_for_NAND2X1;

	not MGM_BG_1( B_inv_for_NAND2X1, B );

	or MGM_BG_2( Y, A_inv_for_NAND2X1, B_inv_for_NAND2X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NAND2X2_func( A, B, Y );
input A, B;
output Y;

	wire A_inv_for_NAND2X2;

	not MGM_BG_0( A_inv_for_NAND2X2, A );

	wire B_inv_for_NAND2X2;

	not MGM_BG_1( B_inv_for_NAND2X2, B );

	or MGM_BG_2( Y, A_inv_for_NAND2X2, B_inv_for_NAND2X2 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NAND3X1_func( A, B, C, Y );
input A, B, C;
output Y;

	wire A_inv_for_NAND3X1;

	not MGM_BG_0( A_inv_for_NAND3X1, A );

	wire B_inv_for_NAND3X1;

	not MGM_BG_1( B_inv_for_NAND3X1, B );

	wire C_inv_for_NAND3X1;

	not MGM_BG_2( C_inv_for_NAND3X1, C );

	or MGM_BG_3( Y, A_inv_for_NAND3X1, B_inv_for_NAND3X1, C_inv_for_NAND3X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NAND4X1_func( A, B, C, D, Y );
input A, B, C, D;
output Y;

	wire A_inv_for_NAND4X1;

	not MGM_BG_0( A_inv_for_NAND4X1, A );

	wire B_inv_for_NAND4X1;

	not MGM_BG_1( B_inv_for_NAND4X1, B );

	wire C_inv_for_NAND4X1;

	not MGM_BG_2( C_inv_for_NAND4X1, C );

	wire D_inv_for_NAND4X1;

	not MGM_BG_3( D_inv_for_NAND4X1, D );

	or MGM_BG_4( Y, A_inv_for_NAND4X1, B_inv_for_NAND4X1, C_inv_for_NAND4X1, D_inv_for_NAND4X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NMAJ3X1_func( A, B, C, Y );
input A, B, C;
output Y;

	wire A_inv_for_NMAJ3X1;

	not MGM_BG_0( A_inv_for_NMAJ3X1, A );

	wire B_inv_for_NMAJ3X1;

	not MGM_BG_1( B_inv_for_NMAJ3X1, B );

	wire Y_row1;

	and MGM_BG_2( Y_row1, A_inv_for_NMAJ3X1, B_inv_for_NMAJ3X1 );

	wire C_inv_for_NMAJ3X1;

	not MGM_BG_3( C_inv_for_NMAJ3X1, C );

	wire Y_row2;

	and MGM_BG_4( Y_row2, A_inv_for_NMAJ3X1, C_inv_for_NMAJ3X1 );

	wire Y_row3;

	and MGM_BG_5( Y_row3, B_inv_for_NMAJ3X1, C_inv_for_NMAJ3X1 );

	or MGM_BG_6( Y, Y_row1, Y_row2, Y_row3 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NOR2X1_func( A, B, Y );
input A, B;
output Y;

	wire A_inv_for_NOR2X1;

	not MGM_BG_0( A_inv_for_NOR2X1, A );

	wire B_inv_for_NOR2X1;

	not MGM_BG_1( B_inv_for_NOR2X1, B );

	and MGM_BG_2( Y, A_inv_for_NOR2X1, B_inv_for_NOR2X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NOR2X2_func( A, B, Y );
input A, B;
output Y;

	wire A_inv_for_NOR2X2;

	not MGM_BG_0( A_inv_for_NOR2X2, A );

	wire B_inv_for_NOR2X2;

	not MGM_BG_1( B_inv_for_NOR2X2, B );

	and MGM_BG_2( Y, A_inv_for_NOR2X2, B_inv_for_NOR2X2 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module NOR3X1_func( A, B, C, Y );
input A, B, C;
output Y;

	wire A_inv_for_NOR3X1;

	not MGM_BG_0( A_inv_for_NOR3X1, A );

	wire B_inv_for_NOR3X1;

	not MGM_BG_1( B_inv_for_NOR3X1, B );

	wire C_inv_for_NOR3X1;

	not MGM_BG_2( C_inv_for_NOR3X1, C );

	and MGM_BG_3( Y, A_inv_for_NOR3X1, B_inv_for_NOR3X1, C_inv_for_NOR3X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module OAI21X1_func( A0, A1, B0, Y );
input A0, A1, B0;
output Y;

	wire A0_inv_for_OAI21X1;

	not MGM_BG_0( A0_inv_for_OAI21X1, A0 );

	wire A1_inv_for_OAI21X1;

	not MGM_BG_1( A1_inv_for_OAI21X1, A1 );

	wire Y_row1;

	and MGM_BG_2( Y_row1, A0_inv_for_OAI21X1, A1_inv_for_OAI21X1 );

	wire B0_inv_for_OAI21X1;

	not MGM_BG_3( B0_inv_for_OAI21X1, B0 );

	or MGM_BG_4( Y, Y_row1, B0_inv_for_OAI21X1 );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module OR2X2_func( A, B, Y );
input A, B;
output Y;

	or MGM_BG_0( Y, A, B );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


primitive UDP_tt_5v_25c_MGM_IQ_LATCH_UDP( Q, C, P, CK, D );
output Q;
reg Q;
input C, P, CK, D; 
table 
//C  P  CK  D   : Q : Q 
  0  0  0  *  :  ?  :  -;
  0  0  (?0)  ?  :  ?  :  -;
  0  (?0)  0  ?  :  ?  :  -;
  (?0)  0  0  ?  :  ?  :  -;
  ?  0  1  0  :  ?  :  0;
  ?  0  ?  (?0)  :  0  :  0;
  ?  (?0)  ?  0  :  0  :  0;
  1  0  ?  ?  :  ?  :  0;
  0  ?  1  1  :  ?  :  1;
  0  ?  ?  (?1)  :  1  :  1;
  (?0)  ?  ?  1  :  1  :  1;
  0  1  ?  ?  :  ?  :  1;
                
endtable
endprimitive


`celldefine
module TLATNCAX2_func( CK, E, ECK );
input CK, E;
output ECK;

	not MGM_BG_0( MGM_EN0, CK );

	UDP_tt_5v_25c_MGM_IQ_LATCH_UDP( IQ, 1'b0, 1'b0, MGM_EN0, E );

	and MGM_BG_1( ECK, CK, IQ );

endmodule
`endcelldefine
// udp_data_end



// udp_data_begin


`celldefine
module XNOR2X1_func( A, B, Y );
input A, B;
output Y;

	wire Y_row1;

	and MGM_BG_0( Y_row1, A, B );

	wire A_inv_for_XNOR2X1;

	not MGM_BG_1( A_inv_for_XNOR2X1, A );

	wire B_inv_for_XNOR2X1;

	not MGM_BG_2( B_inv_for_XNOR2X1, B );

	wire Y_row2;

	and MGM_BG_3( Y_row2, A_inv_for_XNOR2X1, B_inv_for_XNOR2X1 );

	or MGM_BG_4( Y, Y_row1, Y_row2 );

endmodule
`endcelldefine
// udp_data_end
