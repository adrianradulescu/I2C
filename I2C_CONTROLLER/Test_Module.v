module Test_Module();

			parameter FAST_PERIOD  				  	=  2;
			parameter SLOW_PERIOD 				  	= 20;

			reg		 			 	  			FAST_CLOCK;
			reg					 	  			SLOW_CLOCK;
			reg 		  							  	   DATA;
			wire	[7 : 0]		   	CIRCUIT_OUT_DATA;
		
		FullI2CController UUT(
			.DATA										 (DATA),
			.CLK								 (SLOW_CLOCK),
			.FCLK								 (FAST_CLOCK),
			.CIRCUIT_OUT_DATA		 (CIRCUIT_OUT_DATA)
		);

		initial begin
			FAST_CLOCK = 1'b0;
			#(FAST_PERIOD/2);
			forever
				#(FAST_PERIOD/2) FAST_CLOCK = ~FAST_CLOCK;
		end
		
		initial begin
			SLOW_CLOCK = 1'b0;
			#(SLOW_PERIOD/2);
			forever
				#(SLOW_PERIOD/2) SLOW_CLOCK = ~SLOW_CLOCK;
		end
		
		initial begin
					DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#2		DATA = 0;
			#2		DATA = 1;
			#2		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
			#20		DATA = 0;
			#20		DATA = 1;
		end

endmodule
