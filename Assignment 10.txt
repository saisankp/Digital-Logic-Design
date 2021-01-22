        module Serial_Twos_Comp (output y, input [7: 0] data, input load, shift_control, Clock, reset_b);
     	reg [7: 0] SReg; reg Q; wire SO = SReg [0];
     	assign y = SO ^ Q;
     	always @ (posedge Clock, negedge reset_b) if (reset_b == 0) begin SReg <= 0;
     	Q <= 0; end else begin if (load) SReg = data;
    	else if (shift_control) begin Q <= Q | SO; 
     	SReg <= {y, SReg[7: 1]};
     	end 
    	end 
    	endmodule
