* SPICE NETLIST
***************************************

.SUBCKT nand2x1 A Y GND B VDD
** N=6 EP=5 IP=0 FDC=4
M0 6 A Y GND N L=1.8e-07 W=4.05e-07 AD=5.0625e-14 AS=2.4525e-13 PD=6.55e-07 PS=2.02e-06 postlayout="1" $X=1220 $Y=840 $D=24
M1 GND B 6 GND N L=1.8e-07 W=4.05e-07 AD=2.4525e-13 AS=5.0625e-14 PD=2.02e-06 PS=6.55e-07 postlayout="1" $X=1650 $Y=840 $D=24
M2 Y A VDD VDD P L=1.8e-07 W=3.6e-07 AD=1.494e-13 AS=2.376e-13 PD=1.18e-06 PS=2.02e-06 postlayout="1" $X=1220 $Y=4020 $D=36
M3 VDD B Y VDD P L=1.8e-07 W=3.6e-07 AD=2.376e-13 AS=1.494e-13 PD=2.02e-06 PS=1.18e-06 postlayout="1" $X=2160 $Y=4020 $D=36
.ENDS
***************************************
