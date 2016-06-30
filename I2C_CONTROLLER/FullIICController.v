
module FullIICController(
		input 											  data,
		input 							 					clk,
		input 									  		  fclk,
		output reg	[7 : 0] 				 circuitOutData
    );
	 
	 wire slowClock ;
	 wire fastClock = fclk;
	 wire confirmSendSlow;
	 wire slowCounterOutput;
	 wire CounterThreshholdTriggered;
	 wire bitForParityCheck;
	 wire commInitBits;
	 wire scanCodeForChecking;
	 wire strobeEnable;
	 wire enableCheck;
	 wire parityDetected;
	 wire DATAOUT;
	 
	 assign slowClock = clk;
	 assign fastClock = fclk;
	
	 Counter #(4) SlowCounter(
			.controlClock		  	 (slowClock),
			.counterOutput(slowCounterOutput)
		);
	 
	 ThresholdTrigger sendData(
			.in(slowCounterOutput),
			.isGood(CounterThresholdTriggered),
		);
		
	 FastThresholdTrigger enableStrobe(
		.in(slowCounterOutput),
		.controlClock(fastClock),
		.isValid(strobeEnable)
    );
	
	 StrobeGeneratorWhenFull whatever(
		.controlClock(fastClock),
		.strobeEnable(strobeEnable),
		.validationStrobe(enableCheck)
		);
		
	 ParityChecker smhelse(
		.scanCodeForCheck(scanCodeForChecking),
		.parityCheckBit(bitForParityCheck),
		.validationSignal(parityDetected)
		);
		
	AsyncDebounceWithShiftRegister smh(
			.data(data),
			.clk(slowClock),
			.fclk(fastClock),
			.confirmSendData(CounterTresholdTriggered),
			.parityCheckBit(bitForParityCheck),
			.commInitBitsforChecking(commInitBits),
			.scanCode(scanCodeForChecking)
		);

	DataOutputRegister wtf(
			.controlClock(fastClock),
			.parityDetected(parityDetected),
			.strobeDetected(enableCheck),
			.scanCodeForBuffering(scanCodeForChecking),
			.interfaceDataOut(DATAOUT)
			);

endmodule 