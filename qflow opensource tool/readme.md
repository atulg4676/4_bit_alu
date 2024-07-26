To run **Qflow** opensource tool in Ubuntu.
1. Open Terminal:
   
    ![open terminal](https://github.com/user-attachments/assets/9389b7dd-eca1-44f3-b266-372f71a8540b)

2. Change Directory to vsdflow: **cd vsdflow**
   
   ![inside vsd flow](https://github.com/user-attachments/assets/c730d9b4-77b6-4c32-bb19-a565efb5b3a7)
  
3. Now we can see the items in vsdflow directory.
4. List of Tools installed: a) Yosys - RTL Synthesis b) blifFanout - High fanout net (HFN) synthesis c) graywolf - Placement d) qrouter - Detailed routing e) magic - VLSI Layout tool f) netgen - LVS g) OpenTimer and OpenSTA - Static timing analysis tool
   
   ![tools](https://github.com/user-attachments/assets/727134e3-8a41-4530-8337-25bdea82b262)
5. now run qflow :  **qflow gui**
   
   ![gui](https://github.com/user-attachments/assets/b2666b61-d27d-48ef-ba1f-43eca4e40c3a)
6. choose technoly library: **osu035**
7. choose verilog source file : **ALU.v**
8. select **clear stop**, now whole flow will run one after another.
    
  ![whole flow](https://github.com/user-attachments/assets/87bf0dad-4de3-4699-a977-8f63d68988f1)
  
9. For checking the layout, click on **Edit layout**

![final gds](https://github.com/user-attachments/assets/309eb7e2-e650-4f37-b01b-56d1344cc25d)
