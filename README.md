# msvsdaa

## Week-0 :

|S.No.|Task |
|---|---|
|1 |	 Install Oracle virtual box with Ubuntu 20.04 |
|2 |	 Install Magic, ngspice and SKY130 PDKs |
|3	|  Install ALIGN tool |
|4	|  Create inverter and perform pre-layout using xschem or ngspice|
|5	|  Inverter Post-layout characterization using 2)
|6	|  Inverter post-layout characterization using 3)
|7	|  Compare the results obtained in 5) and 6)
|8	|  Enroll in FREE VSD-custom layout course
|9	|  Create the design shown in section 7 of the course and perform pre-layout using xschem or ngspice
|10 |	 Post layout characterization using 2) and 3)
|11 |  Update your findings on your GitHub repo with the title “Week 0”



## To start with Lab1:

```
$ mkdir work
$ cd work

$ mkdir inverter
$ cd inverter
$ mkdir mag
$ mkdir netgen
$ mkdir xschem

$ cd xschem
$ cp /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc .
$ cp /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
$ cd ../mag
$ cp /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
$ cd ../netgen
$ cp /usr/local/share/pdk/sky130A/libs.tech/netgen//sky130A_setup.tcl .
```

This is the schematic of inverter which we can create using the Tools > Insert Symbol > select <home_dir>/pdk/sky130A/libs.tech/xschem > sky130_fd_pr > from the drop down options, can select necessary cells and use to generate the required schematic as below (here we generated a FinFet Inverter) - 
![image](https://user-images.githubusercontent.com/38167491/218320019-16f5b24c-fdb5-4c09-90e6-b81ca9f13c46.png)

After creating the schematic, manually created below symbol for Inverter - 
![image](https://user-images.githubusercontent.com/38167491/218323982-9282dcaa-49ed-4581-8d6b-3f223413e523.png)

After creating the schematic, got to:: Symbol > Make symbol from schematic  --> below symbol in generated.
![image](https://user-images.githubusercontent.com/38167491/218323990-b0afba69-54dd-4208-9c0e-563723b2cd9b.png)

Now need to add testbench for simulation of below inverter along with Voltage sources,
![image](https://user-images.githubusercontent.com/38167491/218333014-b702f0b1-1592-4b84-9b3d-8ea8faa60e89.png)

<img width="779" alt="image" src="https://user-images.githubusercontent.com/38167491/218333066-73c46e40-d8fe-4a18-943b-e20b2e8ef82e.png">


Pre-layout Simulation using Xschem and Ngspice::

Here we do DC analysis of the inverter schematic we created by giving below lines of code in the "code_shown.sym" from the components tab,
```
name=SPICE only_toplevel=false 
value="
.lib /home/paavani/vsdflow/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt


.dc Vin 0 1.8 0.01
.save all
"
```
Once we simulate the netlist from above schematic created, we get the voltage-transfer characteristic(VTC) for the inverter as shown in below snap,
<img width="923" alt="image" src="https://user-images.githubusercontent.com/38167491/218334080-c5d131e6-8f76-42fc-8d6f-01812ac8d60b.png">





 	 



 	 
 	 



