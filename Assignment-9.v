    		module StateDiagram (output reg y_out, input x_in, clk, reset_b);
     		reg [2:0] state, next_state;
     		parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100, S5 = 3'b101;
     		
     			always @(posedge clk, negedge reset_b)
    			begin 	
     					if(reset_b == 0)
     						state <= S0;
     					else
    						state <= next_state;
   						
   			end
   			
   			always @(state, x_in, y_out)
   			begin
   			case(state)
  				S0: if(x_in == 1'b1) next_state <= S1;else next_state <= S0;
  				S1: next_state <= S2;
  				S2: next_state <= S3;
  				S3: next_state <= S4;
  				S4: next_state <= S5;
   				S5: next_state <= S0;
   			endcase
    		
   			if(state == S1 || state == S2 || state == S3)
   				begin
   				y_out = 1'b1;
   				end
   			else if(state == S4 || state == S5 || state == S0)
   				begin
   				y_out = 1'b0;
   				end
   			end
   		endmodule
