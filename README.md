# 4 Bit ALU
Implementation of ALU using RTL to GDSII flow.

Here we are doing implementation of 4-bit ALU(Arthematic logical unit) using RTL (Register
transfer level) to GDSII (Graphic design system II) stream. we are usign the fully automated QFlow VSD Open Source EDA Tools.

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

**(A) Front-End Design:** This part involves creating the solution to a problem and designing the circuit at the Register-Transfer Level (RTL). The steps include:<br>
                          1. Designing the architecture at the block level <br>
                          2. Writing the RTL code <br>
                          3. Performing functional verification of the design <br>                     
**(B)Back-End Design:** This part involves taking the netlist (a structural description of the circuit) from the front-end and transforming it into a physical layout. This                           layout includes geometric design information for all physical layers used for interconnection. The final output is a GDSII file, which is the                                 standard format for IC layout data.

**The following are the steps for RTL to GDSII flow:**

**1. Architecture** :
At this stage, the functions, features, and specifications of the chip are defined based on the customer's requirements. This is the initial step where requirements are gathered and the design is created at the block level.

**2. RTL Level** :
Based on the chip specifications, RTL (Register-Transfer Level) code is written in Verilog HDL (Hardware Description Language). This code is then verified through behavior simulation to ensure it meets the design requirements.

**3. Synthesis** :
In this step, the RTL code and its testbench are converted into a gate-level netlist using a logical synthesis tool. This netlist describes the logic cells and their interconnections. The synthesis tool ensures the netlist meets specifications for timing, area, and power.

**4. Static Timing Analysis (STA)** :
STA is used to verify the timing constraints of the digital design. It checks the design for timing performance by analyzing all possible paths for timing violations. STA breaks the design into different timing paths, calculates signal propagation delays, and checks for any timing issues.

**5. Physical Design** :
This stage involves several steps, including:

**Floor Planning:** Arranging the different blocks on the chip. <br>
**Power Planning:** Designing the power distribution network. <br>
**Placement:** Deciding the positions of cells within the blocks. <br>
**Clock Tree Synthesis:** Ensuring the clock signal reaches every flip-flop in the chip. <br>
**Routing:** Connecting the cells and blocks. <br>

After these steps, physical verification is performed to ensure the layout works as intended. The Design Exchange Format (DEF) file of the layout is then generated and optimized using the Library Exchange Format (LEF) files.

**6. GDSII**
After verification, the final design is saved in a GDSII file. This binary file format represents the geometric shapes, text labels, and other information about the chip layout, which is then used for manufacturing.
