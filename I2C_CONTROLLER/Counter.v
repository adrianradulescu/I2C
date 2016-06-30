module Counter
	#(parameter COUNTER_SIZE = 4)(
		input 									  controlClock,
		output [COUNTER_SIZE - 1 : 0] 	 counterOutput
    );
	 
		reg 	 [COUNTER_SIZE - 1 : 0] 			   count;
	 
	 always@(posedge controlClock)
		count <= count + 1;
		
	 assign counterSize = count;

endmodule
