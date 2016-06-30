module ThresholdTrigger(
		input [3:0] in,
		output isValid
    );
	 
	 assign isValid = (in == 4'b1011)?(1):(0);

endmodule
