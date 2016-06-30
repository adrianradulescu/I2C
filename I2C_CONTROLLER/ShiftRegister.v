`timescale 1ns / 1ps
module ShiftRegister	
  #(parameter REGISTER_SIZE = 11)
<<<<<<< HEAD
	(	input 							  controlClock,
		input							  confirmSendData,
		input 							 debouncedData,
		output reg [7 : 0]	  parallelDataOutput,
		output reg					   parityCheckBit,
		output reg [1 : 0]			  commInitBits
=======
	(	input                                FCLK,
		input 							 CONTROL_CLOCK,
		input 							DEBOUNCED_DATA,
		output reg [7 : 0]	PARALLEL_DATA_OUTPUT,
		output	  [3 : 0]OUTPUT_COUNTER_REGISTER,
		output reg					 PARITY_CHECK_BIT
>>>>>>> a23024b6dd3298260bb29c551e9c1fd91fcf8772
    );

		reg [REGISTER_SIZE - 1 : 0] shiftRegister;
		
		always@(posedge controlClock) 
			shiftRegister <= {shiftRegister[REGISTER_SIZE - 1 : 0], 
									debouncedData};
		always@(posedge controlClock) begin
			if(confirmSendData) begin
				parallelDataOutput <= shiftRegister[9:2];
				parityCheckBit 	 <= shiftRegister	 [1];
				commInitBit			 <= {shiftRegister[0],
											  shiftRegister[10]};
			end
		end
		
<<<<<<< HEAD
=======
		reg [3:0] COUNTER_REGISTER = 4'b0000;
		reg [3:0] dummy = 4'b0000;
		
		always@(posedge CONTROL_CLOCK) begin
			if(COUNTER_REGISTER == 4'b1011) begin 
				PARALLEL_DATA_OUTPUT <= SHIFT_REGISTER[8:1];
				PARITY_CHECK_BIT		<= SHIFT_REGISTER[9]	 ;
				COUNTER_REGISTER     <= dummy;
			end
			else
				COUNTER_REGISTER 		<= dummy + 1;
		end
		
		
		always @ (posedge FCLK) begin
			if (COUNTER_REGISTER == 4'b1011)
				dummy <= 0;
			else
				dummy <= COUNTER_REGISTER;
		end
		
		assign OUTPUT_COUNTER_REGISTER = COUNTER_REGISTER;
		
>>>>>>> a23024b6dd3298260bb29c551e9c1fd91fcf8772
endmodule
