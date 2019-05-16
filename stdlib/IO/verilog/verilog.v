

`timescale 1ns/1ps



`celldefine
module PB8( C, I, IE, OEN, PAD, PG );
input I, IE, OEN, PG;
output C;
inout PAD;

   `ifdef FUNCTIONAL  //  functional //

	PB8_func PB8_behav_inst(.C(C),.I(I),.IE(IE),.OEN(OEN),.PAD(PAD),.PG(PG));

   `else

	PB8_func PB8_inst(.C(C),.I(I),.IE(IE),.OEN(OEN),.PAD(PAD),.PG(PG));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(IE===1'b1 && OEN===1'b0)
	// comb arc I --> C
	 (I => C) = (1.0,1.0);

	ifnone
	// comb arc I --> C
	 (I => C) = (1.0,1.0);

	if(I===1'b0 && OEN===1'b1 && PAD===1'b1)
	// comb arc IE --> C
	 (IE => C) = (1.0,1.0);

	if(I===1'b1 && OEN===1'b0)
	// comb arc IE --> C
	 (IE => C) = (1.0,1.0);

	if(I===1'b1 && OEN===1'b1 && PAD===1'b1)
	// comb arc IE --> C
	 (IE => C) = (1.0,1.0);

	ifnone
	// comb arc IE --> C
	 (IE => C) = (1.0,1.0);

	if(I===1'b0 && IE===1'b1 && OEN===1'b1)
	// comb arc PAD --> C
	 (PAD => C) = (1.0,1.0);

	if(I===1'b1 && IE===1'b1 && OEN===1'b1)
	// comb arc PAD --> C
	 (PAD => C) = (1.0,1.0);

	ifnone
	// comb arc PAD --> C
	 (PAD => C) = (1.0,1.0);

	if(IE===1'b0 && OEN===1'b0)
	// comb arc I --> PAD
	 (I => PAD) = (1.0,1.0);

	if(IE===1'b1 && OEN===1'b0)
	// comb arc I --> PAD
	 (I => PAD) = (1.0,1.0);

	ifnone
	// comb arc I --> PAD
	 (I => PAD) = (1.0,1.0);

	if(I===1'b0 && IE===1'b0)
	// comb arc OEN --> PAD
	 (OEN => PAD) = (1.0,1.0);

	if(I===1'b0 && IE===1'b1)
	// comb arc OEN --> PAD
	 (OEN => PAD) = (1.0,1.0);

	if(I===1'b1 && IE===1'b0)
	// comb arc OEN --> PAD
	 (OEN => PAD) = (1.0,1.0);

	if(I===1'b1 && IE===1'b1)
	// comb arc OEN --> PAD
	 (OEN => PAD) = (1.0,1.0);

	ifnone
	// comb arc OEN --> PAD
	 (OEN => PAD) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine
