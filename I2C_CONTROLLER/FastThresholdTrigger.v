`timescale 1ns / 1ps

module FastThresholdTrigger(
		input [3:0] in,
		input controlClock,
		output isValid
    );
	 
		always@(posedge controlClock)
			isValid <= (in == 3'b1011)?1:0;
	 
endmodule
