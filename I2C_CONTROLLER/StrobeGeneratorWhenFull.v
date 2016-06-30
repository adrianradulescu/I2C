module StrobeGeneratorWhenFull(
		input controlClock,
		input strobeEnable,
		output validationStrobe
    );

	always@(posedge controlClock)
		if(strobeEnable)
			validationStrobe <= 1;
		else 
			validationStrobe <= 0;
endmodule
