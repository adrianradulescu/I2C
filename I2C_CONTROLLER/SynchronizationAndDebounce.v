
module SynchronizationAndDebounce(
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

<<<<<<< HEAD
	Debouncer #(3) 	 myDebouncer(
		.syncedSignal			(syncedData),
		.fastClock				 (fastClock),
		.debounced			 	(outputData)
=======
	Debouncer #(4) 	 myDebouncer(
		.SYNCED_SIGNAL			(SYNCED_DATA),
		.FAST_CLOCK				 (FAST_CLOCK),
		.DEBOUNCED			 	(OUTPUT_DATA)
>>>>>>> a23024b6dd3298260bb29c551e9c1fd91fcf8772
	 );
	 
endmodule
