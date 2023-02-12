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

![image](https://user-images.githubusercontent.com/38167491/218320019-16f5b24c-fdb5-4c09-90e6-b81ca9f13c46.png)


