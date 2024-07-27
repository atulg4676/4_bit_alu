To run **Qflow** opensource tool in Ubuntu.
1. Open Terminal:
   
    ![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/open%20terminal.jpg?raw=true)

2. Change Directory to vsdflow: **cd vsdflow**
   
      ![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/inside%20vsd%20flow.jpg?raw=true)

3. Now we can see the items in vsdflow directory.
4. List of Tools installed: a) Yosys - RTL Synthesis b) blifFanout - High fanout net (HFN) synthesis c) graywolf - Placement d) qrouter - Detailed routing e) magic - VLSI Layout tool f) netgen - LVS g) OpenTimer and OpenSTA - Static timing analysis tool
   
   ![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/tools.jpg?raw=true)
5. now run qflow :  **qflow gui**
   
   ![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/gui.jpg?raw=true)
6. choose technoly library: **osu035**
7. choose verilog source file : **ALU.v**
8. select **clear stop**, now whole flow will run one after another.
    
  ![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/whole%20flow.jpg?raw=true)
  
9. For checking the layout, click on **Edit layout**

![image alt](https://github.com/atulg4676/4_bit_alu/blob/main/qflow%20opensource%20tool/img/final%20gds.jpg?raw=true)
