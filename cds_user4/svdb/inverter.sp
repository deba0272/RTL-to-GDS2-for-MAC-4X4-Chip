* SPICE NETLIST
***************************************

.SUBCKT inverter IN VDD GND OUT
** N=4 EP=4 IP=0 FDC=2
M0 OUT IN GND GND N L=1.8e-07 W=1e-06 AD=4.8e-13 AS=4.8e-13 PD=2.96e-06 PS=2.96e-06 postlayout="1" $X=1190 $Y=1150 $D=24
M1 VDD IN OUT VDD P L=1.8e-07 W=2e-06 AD=9.6e-13 AS=9.6e-13 PD=4.96e-06 PS=4.96e-06 postlayout="1" $X=630 $Y=3955 $D=36
.ENDS
***************************************
