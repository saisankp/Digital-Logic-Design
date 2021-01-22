	module binary_adder(
     	output [3:0] Sum, output C_out,
     	input [3:0] A,B
     	); 
     	assign{C_out,Sum} = A + B; 
     	endmodule 	 	
     	
     	module binary_substactor(
     	output [3:0] res, output C_out, 
    	input [3:0] A,B
    	); 		 
    	assign{C_out,res}= A - B; 	
    	endmodule 	 	
    	
  	module AdderSub(
    	output [3:0] sum_diff ,output carry, 
    	input [3:0] A, 
    	input[3:0] B, 
    	input select
    	); 	 	
   	wire [3:0] sum; 		
    	wire [3:0] dif; 	
    	wire carryout1 ; 		
    	wire carryout2 ; 	 	
   	binary_adder binary_adder(sum, carryout1,A,B);
    	binary_substactor binary_substactor(dif,carryout2,A,B); 	 		
	assign sum_diff = select? dif:sum; 	
   	assign carry = select?carryout2:carryout1; 
    	endmodule
