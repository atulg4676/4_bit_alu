module alu_tb;
  reg  [7:0] A;
  reg  [7:0] B;
  reg  [3:0] operation;
  reg enable, input_sel, reset;
  wire [7:0] out;
  integer i;
  
  alu t1 ( .in_a(A),
          .in_b(B),
          .opcode(operation),
          .enable(enable),
          .in_sel(input_sel),
          .reset(reset),
          .out(out) );
  
  initial
    begin
      $dumpfile("alu.vcd");
      $dumpvars(0,alu_tb);
      
     A = 8'd11; B = 8'd2; // data
      operation = 4'd0;
      input_sel = 1'b0; //(1 for A) and (0 for B)
      reset = 1'b1; enable =1'b0;
      
      #1 reset = 1'b0; enable =1'b1;
      
      for(i=1; i<=15;i=i+1)
        begin
          #2 operation = i; // for  different operation after delay of 2
        end 
      #2 reset = 1'b1;
      #2 $finish;
    end
endmodule