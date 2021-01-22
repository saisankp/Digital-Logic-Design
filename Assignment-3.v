	// Verilog model: User-defined Primitive
     	
     	primitive UDP_Majority_4 (Z,A,B,C,D);
     	 output Z;
     	 input  A,B,C,D;
     	
     	// Truth table for a four-bit majority function.
     	 table 
     	//	A	B	C	D	:	Z //Column header comment
    		0	0	0	0	:	0;
    		0	0	0	1	:	0;
    		0	0	1	0	:	0;
    		0	0	1	1	:	0;
   		0	1	0	0	:	0;
    		0	1	0	1	:	0;
    		0	1	1	0	: 	0;
    		0	1	1	1	: 	1;
    		1	0	0	0	:	0;
    		1	0	0	1	:	0;
    		1	0	1	0	:	0;
   		1	0	1	1	: 	1;
    		1	1	0	0	:	0;
    		1	1	0	1	:	1;
   		1	1	1	0	: 	1;
   		1	1	1	1	: 	1;
    	 endtable
    	endprimitive //UDP_Majority_4
