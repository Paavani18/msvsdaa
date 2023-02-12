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

## DC Analysis:
Here we do DC analysis of the inverter schematic we created by giving below lines of code in the "code_shown.sym" from the components tab,
```
#TT_models:
name=SPICE only_toplevel=false 
value="
.lib /home/paavani/vsdflow/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

#DC_analysis:
.dc Vin 0 1.8 0.01
.save all
"
```
Once we simulate the netlist from above schematic created, we get the voltage-transfer characteristic(VTC) for the inverter as shown in below snap,
<img width="923" alt="image" src="https://user-images.githubusercontent.com/38167491/218334080-c5d131e6-8f76-42fc-8d6f-01812ac8d60b.png">


## Transient Analysis:

Similar to above analysis, here we do tran analysis using below lines of code,

*Example 1*:
```
#TT_models:
name=SPICE_tran only_toplevel=false 
value="
.lib /home/paavani/vsdflow/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

#Simulation_analysis:
.tran 0.01n 60n
.save all
"
```
<img width="925" alt="image" src="https://user-images.githubusercontent.com/38167491/218336392-4e70d11b-dceb-4989-81f5-fcadc2cefd50.png">


*Example 2*:
```
#TT_models:
name=SPICE_tran only_toplevel=false 
value="
.lib /home/paavani/vsdflow/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

#Simulation_analysis:
.tran 1n 1u
.save all
"
```
<img width="922" alt="image" src="https://user-images.githubusercontent.com/38167491/218336235-f95a0d3e-ab06-4d03-8001-cc88201938f8.png">

## The timing parameters are calculated as
*Rise time = time(@80 % of Vout) - time(@20% of Vout)* => 6.61577e-09 - 6.54225e-09 = 0.07352e-09

*Fall time = time(@20 % of Vout) - time(@80% of Vout)* => 1.53209e-09 - 1.47056e-09 = 0.06153e-09

*Cell Rise Delay =time taken by output to rise to its 50% value - time taken by the input to fall to its 50% value* => 6.5812e-09 - 6.50256e-09 = 0.07864e-09

*Cell Fall Delay =time taken by output to fall to its 50% value - time taken by the input to rise to its 50% value* => 1.50409e-09 - 1.50003e-09 = 0.00406e-09


#Creating inverter layout in Magic and exporting its netlist:







 	 



 	 
 	 



