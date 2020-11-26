`timescale 1ns / 1ps

module aluTest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [1:0] op;
	reg [5:0] cmd;

	// Outputs
	wire [31:0] result;
	wire [3:0] flag;

	// Instantiate the Unit Under Test (UUT)
	aluModule uut (
		.A(A), 
		.B(B), 
		.op(op), 
		.cmd(cmd), 
		.result(result), 
		.flag(flag)
	);

	initial begin
		// Initialize Inputs
		A = 14;
		B = 45;
		op = 0;
		cmd = 0;

		// Wait 100 ns for global reset to finish
		#10;
		A = 87;
		B = 51;
		op = 0;
		cmd = 1;
		#10;
		A = 26;
		B = 35;
		op = 0;
		cmd = 2; 
		#10;
		A = 67;
		B = 35;
		op = 0;
		cmd = 4;
		
        
		// Add stimulus here

	end
      
endmodule

