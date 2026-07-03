* SPICE NETLIST
***************************************

.SUBCKT inverter IN GND VDD OUT
** N=4 EP=4 IP=0 FDC=2
M0 OUT IN GND GND N L=1.8e-07 W=1e-06 $X=3375 $Y=725 $D=26
M1 OUT IN VDD VDD P L=1.8e-07 W=2e-06 $X=3375 $Y=3005 $D=38
.ENDS
***************************************
