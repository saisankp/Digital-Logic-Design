	`timescale 1ns/100ps
    	`default_nettype none
     	
     	module Circuit_1(A,B,C,F1,F2);
     	output   F1,F2;
     	input    A,B,C;
     	wire     T1,T2,T3,w1,w2,w3,w4;
     	
   	and      a1(T2,A,B,C); // The first AND gate at the top left
    	or       o1(T1,A,B,C); // The OR gate at the top left
    	and      a2(w1,A,B); // The second AND gate at the middle left
    	and      a3(w2,A,C); // The third AND gate on the left
    	and      a4(w3,B,C); // The fourth AND gate at the bottom left
    	or       o2(F2,w1,w2,w3); // The OR gate with inputs w1,w2,w3
    	not      n1(w4,F2); // The NOT gate in the middle
    	and      a5(T3,T1,w4); // The AND gate in the middle
    	or       o3(F1,T2,T3); // The OR gate at the top right
    	
    	endmodule // circuit_1
