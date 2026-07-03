* SPICE NETLIST
***************************************

.SUBCKT nor2 A Y VDD GND B
** N=6 EP=5 IP=0 FDC=4
M0 Y A GND GND N L=1.8e-07 W=2.2e-07 AD=1.256e-13 AS=2.138e-13 PD=1.18e-06 PS=2.02e-06 postlayout="1" $X=2340 $Y=970 $D=24
M1 GND B Y GND N L=1.8e-07 W=2.2e-07 AD=2.138e-13 AS=1.256e-13 PD=2.02e-06 PS=1.18e-06 postlayout="1" $X=3280 $Y=970 $D=24
M2 6 B Y VDD P L=1.8e-07 W=3.76e-06 AD=4.7e-13 AS=1.8048e-12 PD=4.01e-06 PS=8.48e-06 postlayout="1" $X=1190 $Y=3600 $D=36
M3 VDD A 6 VDD P L=1.8e-07 W=3.76e-06 AD=1.8048e-12 AS=4.7e-13 PD=8.48e-06 PS=4.01e-06 postlayout="1" $X=1190 $Y=4030 $D=36
.ENDS
***************************************
