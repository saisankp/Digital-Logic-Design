    		module FiniteStateMachine (output reg out_z, input in_x, in_y, clk, reset_b);
     		reg [1:0] state, next_state;
     		always @(posedge clk, negedge reset_b) begin
     			if(reset_b == 1'b0)
     				state = 2'b00;
     			else
    				state <= next_state;
   		end
   		
    		always @ (state, in_x, in_y) begin 
    			if ({in_x, in_y} == 2'b00||{in_x, in_y} == 2'b01) begin
    					next_state = 2'b00;
   			end
   			else if ({in_x, in_y} == 2'b11 && state == 2'b00) begin
   					next_state = 2'b01;
   			end
  			else if (({in_x, in_y} == 2'b10||{in_x, in_y} == 2'b11) && state == 2'b01) begin
 					next_state = 2'b10;
    			end
   			else if (({in_x, in_y} == 2'b10 && state == 2'b00)||((state == 2'b10 ||state==2'b11)&&({in_x, in_y} == 2'b10||{in_x, in_y} == 2'b11))) begin
   					next_state = 2'b11;
   			end
  		
  			if(state==2'b00||state==2'b01) begin
   				out_z = 1'b0;
   			end
   			else begin 
   				out_z = 1'b1;
   			end
   		end
   	endmodule
