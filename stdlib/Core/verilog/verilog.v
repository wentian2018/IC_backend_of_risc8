

`timescale 1ns/1ps



`celldefine
module AND2X2( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	AND2X2_func AND2X2_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	AND2X2_func AND2X2_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module AOI21X1( A0, A1, B0, Y );
input A0, A1, B0;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	AOI21X1_func AOI21X1_behav_inst(.A0(A0),.A1(A1),.B0(B0),.Y(Y));

   `else

	AOI21X1_func AOI21X1_inst(.A0(A0),.A1(A1),.B0(B0),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(A1===1'b1 && B0===1'b0)
	// comb arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	ifnone
	// comb arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(A0===1'b1 && B0===1'b0)
	// comb arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b0)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	ifnone
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DFFDRX1( CK, D, Q, QN, RN );
input CK, D, RN;
output Q, QN;

   `ifdef FUNCTIONAL  //  functional //

	DFFDRX1_func DFFDRX1_behav_inst(.CK(CK),.D(D),.Q(Q),.QN(QN),.RN(RN));

   `else

	wire CK_delay ;

	wire D_delay ;

	wire RN_delay ;

	DFFDRX1_func DFFDRX1_inst(.CK(CK_delay),.D(D_delay),.Q(Q),.QN(QN),.RN(RN_delay));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D_delay);


	and MGM_G1(ENABLE_NOT_D_AND_RN,RN_delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RN,RN_delay,D_delay);


	buf MGM_G3(ENABLE_RN,RN_delay);


	buf MGM_G4(ENABLE_D,D_delay);


	not MGM_G5(MGM_W1,CK_delay);


	not MGM_G6(MGM_W2,D_delay);


	and MGM_G7(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G8(MGM_W3,CK_delay);


	and MGM_G9(ENABLE_NOT_CK_AND_D,D_delay,MGM_W3);


	not MGM_G10(MGM_W4,D_delay);


	and MGM_G11(ENABLE_CK_AND_NOT_D,MGM_W4,CK_delay);


	and MGM_G12(ENABLE_CK_AND_D,D_delay,CK_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(D===1'b0 && RN===1'b1)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(D===1'b1 && RN===1'b1)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	ifnone
	// seq arc RN --> Q
	(RN => Q)  = (1.0,1.0);

	if(D===1'b1 && RN===1'b1)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(D===1'b0 && RN===1'b1)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(CK===1'b0 && D===1'b0)
	// seq arc RN --> QN
	(RN => QN)  = (1.0,1.0);

	if(CK===1'b0 && D===1'b1)
	// seq arc RN --> QN
	(RN => QN)  = (1.0,1.0);

	if(CK===1'b1 && D===1'b0)
	// seq arc RN --> QN
	(RN => QN)  = (1.0,1.0);

	if(CK===1'b1 && D===1'b1)
	// seq arc RN --> QN
	(RN => QN)  = (1.0,1.0);

	ifnone
	// seq arc RN --> QN
	(RN => QN)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RN === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RN === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_D_AND_RN === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_D_AND_RN === 1'b1)
		,1.0,0);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
		posedge D &&& (ENABLE_RN === 1'b1),
		1.0,1.0,,,,CK_delay,D_delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RN === 1'b1),
		negedge D &&& (ENABLE_RN === 1'b1),
		1.0,1.0,,,,CK_delay,D_delay);

	// recrem RN-CK-posedge
	$recrem(posedge RN &&& (ENABLE_D === 1'b1),
		posedge CK &&& (ENABLE_D === 1'b1),
		1.0,1.0,,,,RN_delay,CK_delay);

	$width(negedge RN &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge RN &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0);

	$width(negedge RN &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge RN &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0);

	// mpw CK_lh 
	$width(posedge CK,1.0,0);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// mpw RN_hl 
	$width(negedge RN,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DFFDX1( CK, D, Q, QN );
input CK, D;
output Q, QN;

   `ifdef FUNCTIONAL  //  functional //

	DFFDX1_func DFFDX1_behav_inst(.CK(CK),.D(D),.Q(Q),.QN(QN));

   `else

	wire CK_delay ;

	wire D_delay ;

	DFFDX1_func DFFDX1_inst(.CK(CK_delay),.D(D_delay),.Q(Q),.QN(QN));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D_delay);


	buf MGM_G1(ENABLE_D,D_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(D===1'b0)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(D===1'b1)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(D===1'b1)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(D===1'b0)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,,,,CK_delay,D_delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,,,,CK_delay,D_delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DFFNX1( CK, D, QN );
input CK, D;
output QN;

   `ifdef FUNCTIONAL  //  functional //

	DFFNX1_func DFFNX1_behav_inst(.CK(CK),.D(D),.QN(QN));

   `else

	wire CK_delay ;

	wire D_delay ;

	DFFNX1_func DFFNX1_inst(.CK(CK_delay),.D(D_delay),.QN(QN));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D_delay);


	buf MGM_G1(ENABLE_D,D_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(D===1'b1)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	if(D===1'b0)
	// seq arc CK --> QN
	(posedge CK => (QN : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,,,,CK_delay,D_delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,,,,CK_delay,D_delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DFFX1( CK, D, Q );
input CK, D;
output Q;

   `ifdef FUNCTIONAL  //  functional //

	DFFX1_func DFFX1_behav_inst(.CK(CK),.D(D),.Q(Q));

   `else

	wire CK_delay ;

	wire D_delay ;

	DFFX1_func DFFX1_inst(.CK(CK_delay),.D(D_delay),.Q(Q));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D_delay);


	buf MGM_G1(ENABLE_D,D_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(D===1'b0)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(D===1'b1)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,,,,CK_delay,D_delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,,,,CK_delay,D_delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DFFX2( CK, D, Q );
input CK, D;
output Q;

   `ifdef FUNCTIONAL  //  functional //

	DFFX2_func DFFX2_behav_inst(.CK(CK),.D(D),.Q(Q));

   `else

	wire CK_delay ;

	wire D_delay ;

	DFFX2_func DFFX2_inst(.CK(CK_delay),.D(D_delay),.Q(Q));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D_delay);


	buf MGM_G1(ENABLE_D,D_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(D===1'b0)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	ifnone
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	if(D===1'b1)
	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,,,,CK_delay,D_delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,,,,CK_delay,D_delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DLYX0P2( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	DLYX0P2_func DLYX0P2_behav_inst(.A(A),.Y(Y));

   `else

	DLYX0P2_func DLYX0P2_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module DLYX1( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	DLYX1_func DLYX1_behav_inst(.A(A),.Y(Y));

   `else

	DLYX1_func DLYX1_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP12(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP12_func FDCAP12_behav_inst();

   `else

	FDCAP12_func FDCAP12_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP24(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP24_func FDCAP24_behav_inst();

   `else

	FDCAP24_func FDCAP24_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP48(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP48_func FDCAP48_behav_inst();

   `else

	FDCAP48_func FDCAP48_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP6(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP6_func FDCAP6_behav_inst();

   `else

	FDCAP6_func FDCAP6_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP9(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP9_func FDCAP9_behav_inst();

   `else

	FDCAP9_func FDCAP9_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module FDCAP96(  );

   `ifdef FUNCTIONAL  //  functional //

	FDCAP96_func FDCAP96_behav_inst();

   `else

	FDCAP96_func FDCAP96_inst();


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module INVX1( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX1_func INVX1_behav_inst(.A(A),.Y(Y));

   `else

	INVX1_func INVX1_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module INVX16( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX16_func INVX16_behav_inst(.A(A),.Y(Y));

   `else

	INVX16_func INVX16_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module INVX2( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX2_func INVX2_behav_inst(.A(A),.Y(Y));

   `else

	INVX2_func INVX2_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module INVX4( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX4_func INVX4_behav_inst(.A(A),.Y(Y));

   `else

	INVX4_func INVX4_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module INVX8( A, Y );
input A;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	INVX8_func INVX8_behav_inst(.A(A),.Y(Y));

   `else

	INVX8_func INVX8_inst(.A(A),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module MAJ3X1( A, B, C, Y );
input A, B, C;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	MAJ3X1_func MAJ3X1_behav_inst(.A(A),.B(B),.C(C),.Y(Y));

   `else

	MAJ3X1_func MAJ3X1_inst(.A(A),.B(B),.C(C),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module MUXN2X1( A, B, S0, Y );
input A, B, S0;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	MUXN2X1_func MUXN2X1_behav_inst(.A(A),.B(B),.S0(S0),.Y(Y));

   `else

	MUXN2X1_func MUXN2X1_inst(.A(A),.B(B),.S0(S0),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && S0===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && S0===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0 && S0===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && S0===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Y:S0)
	 (posedge S0 => (Y:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Y:S0)
	 (negedge S0 => (Y:S0)) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc S0 --> Y
	 (S0 => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NAND2X1( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NAND2X1_func NAND2X1_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	NAND2X1_func NAND2X1_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NAND2X2( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NAND2X2_func NAND2X2_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	NAND2X2_func NAND2X2_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NAND3X1( A, B, C, Y );
input A, B, C;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NAND3X1_func NAND3X1_behav_inst(.A(A),.B(B),.C(C),.Y(Y));

   `else

	NAND3X1_func NAND3X1_inst(.A(A),.B(B),.C(C),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NAND4X1( A, B, C, D, Y );
input A, B, C, D;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NAND4X1_func NAND4X1_behav_inst(.A(A),.B(B),.C(C),.D(D),.Y(Y));

   `else

	NAND4X1_func NAND4X1_inst(.A(A),.B(B),.C(C),.D(D),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Y
	 (D => Y) = (1.0,1.0);

	ifnone
	// comb arc D --> Y
	 (D => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NMAJ3X1( A, B, C, Y );
input A, B, C;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NMAJ3X1_func NMAJ3X1_behav_inst(.A(A),.B(B),.C(C),.Y(Y));

   `else

	NMAJ3X1_func NMAJ3X1_inst(.A(A),.B(B),.C(C),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NOR2X1( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NOR2X1_func NOR2X1_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	NOR2X1_func NOR2X1_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NOR2X2( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NOR2X2_func NOR2X2_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	NOR2X2_func NOR2X2_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module NOR3X1( A, B, C, Y );
input A, B, C;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	NOR3X1_func NOR3X1_behav_inst(.A(A),.B(B),.C(C),.Y(Y));

   `else

	NOR3X1_func NOR3X1_inst(.A(A),.B(B),.C(C),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	ifnone
	// comb arc C --> Y
	 (C => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module OAI21X1( A0, A1, B0, Y );
input A0, A1, B0;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	OAI21X1_func OAI21X1_behav_inst(.A0(A0),.A1(A1),.B0(B0),.Y(Y));

   `else

	OAI21X1_func OAI21X1_inst(.A0(A0),.A1(A1),.B0(B0),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(A1===1'b0 && B0===1'b1)
	// comb arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	ifnone
	// comb arc A0 --> Y
	 (A0 => Y) = (1.0,1.0);

	if(A0===1'b0 && B0===1'b1)
	// comb arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Y
	 (A1 => Y) = (1.0,1.0);

	if(A0===1'b0 && A1===1'b1)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b0)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	if(A0===1'b1 && A1===1'b1)
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	ifnone
	// comb arc B0 --> Y
	 (B0 => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module OR2X2( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	OR2X2_func OR2X2_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	OR2X2_func OR2X2_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module TLATNCAX2( CK, E, ECK );
input CK, E;
output ECK;

   `ifdef FUNCTIONAL  //  functional //

	TLATNCAX2_func TLATNCAX2_behav_inst(.CK(CK),.E(E),.ECK(ECK));

   `else

	wire CK_delay ;

	wire E_delay ;

	TLATNCAX2_func TLATNCAX2_inst(.CK(CK_delay),.E(E_delay),.ECK(ECK));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_E,E_delay);


	buf MGM_G1(ENABLE_E,E_delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	if(E===1'b1)
	// comb arc CK --> ECK
	 (CK => ECK) = (1.0,1.0);

	ifnone
	// comb arc CK --> ECK
	 (CK => ECK) = (1.0,1.0);

	if(E===1'b0)
	// comb arc CK --> ECK
	 (CK => ECK) = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0);

	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,,,,CK_delay,E_delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,,,,CK_delay,E_delay);

	// mpw CK_hl 
	$width(negedge CK,1.0,0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine





`celldefine
module XNOR2X1( A, B, Y );
input A, B;
output Y;

   `ifdef FUNCTIONAL  //  functional //

	XNOR2X1_func XNOR2X1_behav_inst(.A(A),.B(B),.Y(Y));

   `else

	XNOR2X1_func XNOR2X1_inst(.A(A),.B(B),.Y(Y));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (Y:A)
	 (posedge A => (Y:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Y:A)
	 (negedge A => (Y:A)) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Y
	 (A => Y) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Y:B)
	 (posedge B => (Y:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Y:B)
	 (negedge B => (Y:B)) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Y
	 (B => Y) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine
