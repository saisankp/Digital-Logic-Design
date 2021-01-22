                        module Compare (A, B, Y);
     			input [0:3] A, B; 
     			output reg [5:0] Y;
     			integer i;
    	
     	
     	always@ (A, B, Y) begin
     	
     	for(i = 0; i <= 5 ; i = i +1 ) Y[i] = 0;
   	
    	if(A == B)
    	Y[5] = 1;
    	
    	if( A != B)
    	Y[4] = 1;
    	
    	if (A > B)
    	Y[3] = 1;
   	
   	if (A < B)
   	Y[2] = 1;
   	
   	if ( A >= B )
   	Y[1] = 1;
   	
   	if ( A <= B)
   	Y[0] = 1;
   	
   	end
  	
    	endmodule
