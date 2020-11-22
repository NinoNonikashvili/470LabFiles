`timescale 1ns / 1ps

module pcModule(
	input select, clk,
	input[7:0] jump_adress,
	output reg[7:0] pc_out, pc_out2	
    );
	 
	
	reg [7:0]next_instruction=1, pc=0;
	
	 
	 always @(*)
	 begin
	 case(select)
	 0: begin pc=next_instruction;
		       next_instruction=pc+1;
		 end
	 1: pc=jump_adress;
	endcase
	 end
	 
	always @(posedge clk)
	begin
	pc_out=pc;
	pc_out2=pc+2;
	end

endmodule
