
module DataOutputRegister(
		input controlClock,
		input 				parityDetected,
		input 				strobeDetected,
		input [7:0]	scanCodeForBuffering,
		output [7:0] interfaceDataOut
    );

	reg [7:0] bufferRegister;
	
	always@(posedge controlClock)
		if(parityDetected && strobeDetected)
			bufferRegister <= scanCodeForBuffering;
			
	assign interfaceDataOut = bufferRegister;

endmodule
