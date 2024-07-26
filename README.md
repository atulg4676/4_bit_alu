# 4 Bit ALU
Implementation of ALU using RTL to GDSII flow.

Here we are doing implementation of 4-bit ALU(Arthematic logical unit) using RTL (Register
transfer level) to GDSII (Graphic design system II) stream. we are usign the QFlow VSD Open Source EDA Tools.

The arithmetic logic unit is a combination of digital circuits used to perform various arithmetic operations and bitwise logical operations on integer binary numbers. The input of the ALU is the data to be operated on which is called the operand and a opcode that selects the operation to be performed. The output of the ALU is the result of the operation performed. The block diagram of implementedn ALU is shown in figure. 

![alu](https://github.com/user-attachments/assets/fb1c06f8-7145-41d2-86a0-e75ded416650)

In this design, the Op1 and Op2 represents the 8-bit inputs which are first given to the registers. output of the registers acts as the input to the ALU circuit which are given with the opcode that selects the operation of the ALU that is to be performed. The implemented ALU is of 8-bits and performs 16 operations, among which the arithmetic operations are addition, subtraction, multiplication, increment and decrement, and the bitwise logical operations are AND, OR, NOT, XOR, XNOR, NAND, NOR. Shifting operations performed are logical and arithmetic , left and right shift operations.

Here is the complete list of operations and their respective opcodes:

4'b0000 :0 // addition operation  <br>
4'b0001 :1 // subtraction operation <br>
4'b0010 :2 // direct multiplication <br>
4'b0011 :3 // increment operation <br>
4'b0100 :4 // decrement operation <br>
4'b0101 :5 // bitwise and operation <br>
4'b0110 :6 // bitwise or operation <br>
4'b0111 :7 // NOT operation <br>
4'b1000 :8 // bitwise xor operation <br>
4'b1001 :9 // bitwise xnor operation <br>
4'b1010 :10 // bitwise nand operation <br>
4'b1011 :11 // bitwise nor operation <br>
4'b1100 :12 // logical left shift operation <br>
4'b1101 :13 // logical right shift operation <br>
4'b1110 :14 // rotate left operation <br>
4'b1111 :15 // rotate right operation <br>
                                                    RTL to GDSII flow
The design process in VLSI (Very Large Scale Integration) is split into two main parts: front-end design and back-end design.

    (A) Front-End Design: This part involves creating the solution to a problem and designing the circuit at the Register-Transfer Level (RTL). The steps include:
                          Designing the architecture at the block level <br>
                          Writing the RTL code <br>
                          Performing functional verification of the design <br>
                          
    (B)Back-End Design: This part involves taking the netlist (a structural description of the circuit) from the front-end and transforming it into a physical layout. This                           layout includes geometric design information for all physical layers used for interconnection. The final output is a GDSII file, which is the                                 standard format for IC layout data.
