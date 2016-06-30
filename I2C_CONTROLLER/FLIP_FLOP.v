module FlipFlop(
		input 			  inputData,
		input 	  		  fastClock,
		output reg		 outputData,
    );
	 
	 always@(posedge fastClock)
		outputData <= inputData;

endmodule
