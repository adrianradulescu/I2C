module StrobeGeneratorWhenFull(
		input controlClock,
		input  strobeGeneratorEnable,
		output validationStrobe
    );

	always@(posedge controlClock)
		if(strobeGeneratorEnable)
			validationStrobe <= 1;
		else 
			validationStrobe <= 0;
			
endmodule
