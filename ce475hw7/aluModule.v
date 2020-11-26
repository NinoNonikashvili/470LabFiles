`timescale 1ns / 1ps

module aluModule(
	input[31:0] A, B,
	input [1:0] op,
	input [5:0] cmd,
	output reg[31:0] result=0,
	output  [3:0] flag // N3 Z2 C1 O0
    );
	 	 reg[1:0] carry_overflow; 
	 always @(*)
	 begin
	 case (op)
	 0: begin //data
		case(cmd)//AND, XOR, ORR, SUB, RSB, ADD, CMP
		0: begin //and 
			result=A&B;	
			carry_overflow=0;
			end
		1: begin //xor
			result=A^B;
			carry_overflow=0;
			end
		2: begin //sub
			result=A-B;
			if(A<B)
			carry_overflow[1]=1; //carry
			else
			carry_overflow[1]=0;
			if(A[31]!=B[31]&&result[31] !=A[31])
			carry_overflow[0]=1; //overflow
			else
			carry_overflow[0]=0; 
			end
		3: begin //rsb
			result=B-A;
			if(A>B)
			carry_overflow[1]=1;
			else
			carry_overflow[1]=0;
			if(A[31]!=B[31]&&result[31] !=B[31])
			carry_overflow[0]=1;
			else
			carry_overflow[0]=0;
			end
		4: begin //add
			result=A+B;
			if((A>result)||(B>result))
			carry_overflow[1]=1;  //carry when unsigned
			else
			carry_overflow[1]=0;
			if(A[31]==B[31] &&A[31]!=result[31])
			carry_overflow[0]=1;
			else
			carry_overflow[0]=0; //overflow when signed
			end
		10:begin //cmp
			result=A-B;
			if(A<B)
			carry_overflow[1]=1;
			else
			carry_overflow[1]=0;
			if(A[31]!=B[31]&&result[31] !=A[31])
			carry_overflow[0]=1;
			else
			carry_overflow[0]=0;
			
		   end	
		12:begin //orr
			result=A|B;
			carry_overflow=0;			
			end 
 	default: begin result=0;
							end 
		endcase
		end
	 1: begin //memory
			if(cmd[3]==1)
				result=A+B;//B offset, A base adress
			else
				result=A;
		 if((A>result)||(B>result))
			carry_overflow[1]=1;  //carry when unsigned
			else
			carry_overflow[1]=0;
			if(A[31]==B[31] &&A[31]!=result[31])
			carry_overflow[0]=1;
			else
			carry_overflow[0]=0; //overflow when signed
		 end
	 2: begin //branch
		 result=A+B; //A next instruction, B how many steps to jump over
		 if((A>result)||(B>result))
			carry_overflow[1]=1;  //carry when unsigned
			else
			carry_overflow[1]=0; 
			if(A[31]==B[31] &&A[31]!=result[31])
			carry_overflow[0]=1;
			else
			carry_overflow[0]=0; //overflow when signed
		 end 
	 default: begin result=0;
				end  
	endcase
	end 
	
	assign  flag[3]= (result[31]==1) ? 1:0;
	assign  flag[2]= (result==0) ? 1:0; 
	assign  flag[1:0] = carry_overflow;
	

endmodule
