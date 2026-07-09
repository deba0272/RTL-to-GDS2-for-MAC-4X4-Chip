* SPICE NETLIST
***************************************

.SUBCKT dff D clk RST_N GND VDD out
** N=12 EP=6 IP=0 FDC=12
M0 GND D 3 GND N L=1.8e-07 W=4.2e-07 AD=1.134e-13 AS=2.016e-13 PD=9.6e-07 PS=1.8e-06 postlayout="1" $X=1650 $Y=1645 $D=24
M1 10 clk GND GND N L=1.8e-07 W=4.2e-07 AD=5.25e-14 AS=1.134e-13 PD=6.7e-07 PS=9.6e-07 postlayout="1" $X=2370 $Y=1645 $D=24
M2 5 3 10 GND N L=1.8e-07 W=4.2e-07 AD=1.134e-13 AS=5.25e-14 PD=9.6e-07 PS=6.7e-07 postlayout="1" $X=2800 $Y=1645 $D=24
M3 GND RST_N 5 GND N L=1.8e-07 W=4.2e-07 AD=2.016e-13 AS=1.134e-13 PD=1.8e-06 PS=9.6e-07 postlayout="1" $X=3520 $Y=1645 $D=24
M4 11 clk 6 GND N L=1.8e-07 W=4.2e-07 AD=5.25e-14 AS=2.016e-13 PD=6.7e-07 PS=1.8e-06 postlayout="1" $X=5710 $Y=1845 $D=24
M5 GND 5 11 GND N L=1.8e-07 W=4.2e-07 AD=1.47988e-13 AS=5.25e-14 PD=1.02941e-06 PS=6.7e-07 postlayout="1" $X=6140 $Y=1845 $D=24
M6 out 6 GND GND N L=1.8e-07 W=6e-07 AD=2.88e-13 AS=2.11412e-13 PD=2.16e-06 PS=1.47059e-06 postlayout="1" $X=6970 $Y=1755 $D=24
M7 12 clk 3 VDD P L=1.8e-07 W=4.2e-07 AD=5.25e-14 AS=2.016e-13 PD=6.7e-07 PS=1.8e-06 postlayout="1" $X=2095 $Y=3850 $D=36
M8 VDD D 12 VDD P L=1.8e-07 W=4.2e-07 AD=1.134e-13 AS=5.25e-14 PD=9.6e-07 PS=6.7e-07 postlayout="1" $X=2525 $Y=3850 $D=36
M9 5 clk VDD VDD P L=1.8e-07 W=4.2e-07 AD=2.016e-13 AS=1.134e-13 PD=1.8e-06 PS=9.6e-07 postlayout="1" $X=3245 $Y=3850 $D=36
M10 VDD 5 6 VDD P L=1.8e-07 W=4.2e-07 AD=1.47988e-13 AS=2.016e-13 PD=1.02941e-06 PS=1.8e-06 postlayout="1" $X=6140 $Y=3635 $D=36
M11 out 6 VDD VDD P L=1.8e-07 W=6e-07 AD=2.88e-13 AS=2.11412e-13 PD=2.16e-06 PS=1.47059e-06 postlayout="1" $X=6970 $Y=3545 $D=36
.ENDS
***************************************
