`timescale 1ns / 1ps


module pcTest;

	// Inputs
	reg select;
	reg clk;
	reg [7:0] jump_adress;

	// Outputs
	wire [7:0] pc_out;
	wire [7:0] pc_out2;

	// Instantiate the Unit Under Test (UUT)
	pcModule uut (
		.select(select), 
		.clk(clk), 
		.jump_adress(jump_adress), 
		.pc_out(pc_out), 
		.pc_out2(pc_out2)
	);
	always #10 clk=~clk;

	initial begin
		// Initialize Inputs
		select = 0;
		clk = 0;
		jump_adress = 56;

		#100;
		select = 1;
		#100;
		select=0;
        
		// Add stimulus here

	end
      
endmodule

