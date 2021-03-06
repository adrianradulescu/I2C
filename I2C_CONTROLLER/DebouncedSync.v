`timescale 1ns / 1ps

module DebouncedSync(
		input 						inputData,
		input 						fastClock,
		output			  	  	  outputData
    );
	 
		wire 						  	syncData;
		
	 FlipFlop 			  myFlipFlop(
		.inputData			 	 (inputData),
		.fastClock			 	 (fastClock),
		.outputData				  (syncData)
	 );

	Debouncer #(3) 	 myDebouncer(
		.syncedSignal			(syncedData),
		.fastClock				 (fastClock),
		.debounced			 	(outputData)
	 );
	 
endmodule 
