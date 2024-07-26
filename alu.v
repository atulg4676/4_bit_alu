module alu ( in_a, in_b, opcode, enable, in_sel, reset, out );
  
  input  [7:0] in_a; // input variable A
  input  [7:0] in_b; // input variable B
  input  [3:0] opcode; // defines the operation type
  input enable;      // to start the alu operation
  input reset;		 // for resetting the alu
  input in_sel; // in_sel, is used to select either of input A or B for single operand operation (1 for input A) and (0 for input B)
  output reg [7:0] out; // output variable out
  
  reg [7:0] reg1,reg2;
  
  assign reg1 = in_a;
  assign reg2 = in_b;
  
  always @(*)
    begin
		if(reset)
         out = 8'h00; // as reset goes high output goes to zero
      else if(~enable)
        out = out; // if enable is low (not high) out holds the previous value
      else
        begin

          case (opcode)

          4'b0000 : out = (reg1 + reg2) ;       // addition operation
          4'b0001 : out = (reg1 - reg2) ;       // subtraction operation
          4'b0010 : out = (reg1 * reg2) ;       // direct multiplication
          4'b0011 : begin 
            			if(in_sel) out = (reg1 + 1) ;
            			else       out = (reg2 + 1) ;
          			end							// increment operation
          4'b0100 : begin 
            			if(in_sel) out = (reg1 - 1) ;
            			else       out = (reg2 - 1) ;
          			end          				// decrement operation
          4'b0101 : out = (reg1 & reg2) ;       // bitwise and operation
          4'b0110 : out = (reg1 | reg2) ;       // bitwise or operation
          4'b0111 : begin 
            			if(in_sel) out = (~reg1) ;
            			else       out = (~reg2) ;
          			end 	        			// NOT operation
          4'b1000 : out = (reg1 ^ reg2) ;       // bitwise xor operation
          4'b1001 : out = (reg1 ^~ reg2) ;      // bitwise xnor operation
          4'b1010 : out = (~reg1 | ~reg2) ;     // bitwise nand operation
          4'b1011 : out = (~reg1 & ~reg2) ;     // bitwise nor operation
          4'b1100 : begin
            			if(in_sel) 
                          out = {reg1[6:0],1'b0} ;    // logical left shift operation
            			else
              			  out = {reg2[6:0],1'b0} ;
          			end
          4'b1101 : begin
            			if(in_sel) 
                          out = {1'b0,reg1[7:1]} ;    // logical right shift operation
            			else
              			  out = {1'b0,reg2[7:1]} ;
          			end 
          4'b1110 : begin
            			if(in_sel) 
                          out = {reg1[6:0],reg1[7]} ;    // rotate left operation
            			else
                          out = {reg2[6:0],reg2[7]} ;
          			end
          4'b1111 : begin
            			if(in_sel) 
                          out = {reg1[0],reg1[7:1]} ;    // rotate right operation
            			else
              			  out = {reg2[0],reg2[7:1]} ;
          			end 

        endcase
          end
    end
  
endmodule
  
