* SPICE NETLIST
***************************************

.SUBCKT M5_M4_LD_CDNS_7822207103920
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_6
** N=8 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00010
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00040
** N=5 EP=0 IP=20 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00540
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed00120
** N=5 EP=0 IP=60 FDC=0
.ENDS
***************************************
.SUBCKT pfeed10000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfeed30000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_preside
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_CDNS_7822207103951
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7822207103949
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7822207103950
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT rpmpoly2t$$44660780 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 1180.05 L=6.455e-06 W=2e-06 $[RD] $X=0 $Y=540 $D=65
.ENDS
***************************************
.SUBCKT subil_vddring
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_podrive01 2 4 5 6 7 8 9
** N=15 EP=7 IP=20 FDC=23
M0 4 11 8 2 NH L=3.6e-07 W=1e-05 $X=26380 $Y=9530 $D=22
M1 8 11 4 2 NH L=3.6e-07 W=1e-05 $X=27560 $Y=9530 $D=22
M2 4 12 6 2 NH L=3.6e-07 W=1e-05 $X=31460 $Y=9730 $D=22
M3 6 12 4 2 NH L=3.6e-07 W=1e-05 $X=32640 $Y=9730 $D=22
M4 4 12 6 2 NH L=3.6e-07 W=1e-05 $X=33820 $Y=9730 $D=22
M5 14 15 7 2 NH L=3.6e-07 W=5e-06 $X=46220 $Y=5700 $D=22
M6 8 5 14 2 NH L=3.6e-07 W=1e-05 $X=46270 $Y=9480 $D=22
M7 14 5 8 2 NH L=3.6e-07 W=1e-05 $X=47450 $Y=9480 $D=22
M8 8 15 11 2 NH L=3.6e-07 W=1e-05 $X=49970 $Y=9530 $D=22
M9 11 15 8 2 NH L=3.6e-07 W=1e-05 $X=51150 $Y=9530 $D=22
M10 2 5 15 2 N L=1.8e-07 W=5e-06 $X=59410 $Y=11640 $D=26
M11 7 11 6 7 PH L=3.6e-07 W=2e-05 $X=26550 $Y=38440 $D=41
M12 6 11 7 7 PH L=3.6e-07 W=2e-05 $X=27730 $Y=38440 $D=41
M13 4 13 6 7 PH L=3.6e-07 W=1e-05 $X=31560 $Y=48370 $D=41
M14 6 13 4 7 PH L=3.6e-07 W=1e-05 $X=32740 $Y=48370 $D=41
M15 4 13 6 7 PH L=3.6e-07 W=1e-05 $X=33920 $Y=48370 $D=41
M16 7 11 14 7 PH L=3.6e-07 W=7.2e-06 $X=45390 $Y=37110 $D=41
M17 11 14 7 7 PH L=3.6e-07 W=7.2e-06 $X=46570 $Y=37110 $D=41
M18 15 5 9 9 P L=1.8e-07 W=5e-06 $X=72980 $Y=50100 $D=38
M19 9 5 15 9 P L=1.8e-07 W=5e-06 $X=73720 $Y=50100 $D=38
D20 2 5 DN AREA=2.5e-13 PJ=2e-06 $X=60885 $Y=10080 $D=94
X27 12 7 rpmpoly2t$$44660780 $T=30895 6880 0 270 $X=30715 $Y=4660
X28 13 8 rpmpoly2t$$44660780 $T=33810 45745 0 180 $X=31590 $Y=38030
.ENDS
***************************************
.SUBCKT subil_pngatering
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff 2 3 4
** N=6 EP=3 IP=0 FDC=1
M0 2 3 4 2 NH L=5e-07 W=3e-05 $X=26020 $Y=5150 $D=22
.ENDS
***************************************
.SUBCKT subil_pngate2buff 2 3 4 5
** N=7 EP=4 IP=12 FDC=2
X0 2 3 4 subil_pngatebuff $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 5 4 subil_pngatebuff $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_7822207103944
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnbuff 1 3 4 5
** N=7 EP=4 IP=60 FDC=12
X2 1 3 5 3 subil_pngate2buff $T=28580 125970 1 270 $X=17650 $Y=61860
X3 1 3 5 3 subil_pngate2buff $T=38020 125970 1 270 $X=27090 $Y=61860
X4 1 3 5 3 subil_pngate2buff $T=47460 125970 1 270 $X=36530 $Y=61860
X5 1 3 5 3 subil_pngate2buff $T=56900 125970 1 270 $X=45970 $Y=61860
X6 1 4 5 3 subil_pngate2buff $T=66340 125970 1 270 $X=55410 $Y=61860
X7 1 3 5 4 subil_pngate2buff $T=75780 125970 1 270 $X=64850 $Y=61860
.ENDS
***************************************
.SUBCKT subil_ppgatebuff 2 3 4
** N=4 EP=3 IP=0 FDC=1
M0 2 3 4 2 PH L=4e-07 W=5.2e-05 $X=10090 $Y=4110 $D=41
.ENDS
***************************************
.SUBCKT subil_ppgate2buff 2 3 4
** N=4 EP=3 IP=8 FDC=2
X0 2 3 4 subil_ppgatebuff $T=1480 3020 1 0 $X=4750 $Y=-4550
X1 2 3 4 subil_ppgatebuff $T=1480 -560 0 0 $X=4750 $Y=-1860
.ENDS
***************************************
.SUBCKT subil_ppbuff 1 2 3 4
** N=5 EP=4 IP=16 FDC=12
M0 4 1 3 3 PH L=4e-07 W=5.2e-05 $X=10500 $Y=-460 $D=41
M1 3 1 4 3 PH L=4e-07 W=5.2e-05 $X=10500 $Y=4580 $D=41
M2 4 2 3 3 PH L=4e-07 W=5.2e-05 $X=10500 $Y=35840 $D=41
M3 3 2 4 3 PH L=4e-07 W=5.2e-05 $X=10500 $Y=40880 $D=41
X4 3 1 4 subil_ppgate2buff $T=-1070 8290 0 0 $X=3680 $Y=3740
X5 3 1 4 subil_ppgate2buff $T=-1070 15550 0 0 $X=3680 $Y=11000
X6 3 1 4 subil_ppgate2buff $T=-1070 22810 0 0 $X=3680 $Y=18260
X7 3 1 4 subil_ppgate2buff $T=-1070 30070 0 0 $X=3680 $Y=25520
.ENDS
***************************************
.SUBCKT subil_psegment
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_via1array
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_via2array
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_cornerarray
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pad
** N=3 EP=0 IP=18 FDC=0
.ENDS
***************************************
.SUBCKT subil_iorule
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppolyres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 2 1 302.279 L=2.5e-06 W=4e-06 $[RE] $X=140 $Y=5120 $D=70
.ENDS
***************************************
.SUBCKT subil_nwellres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 4891.48 L=8.65e-06 W=2.1e-06 $[RW] $X=2060 $Y=720 $D=79
.ENDS
***************************************
.SUBCKT pc3o01 VSSO VSS VDD VDDO I
** N=12 EP=5 IP=40 FDC=51
X0 VSS 12 I 9 VDDO VSSO VDD subil_podrive01 $T=-15430 134970 0 0 $X=-920 $Y=92510
X2 VSSO 11 12 PAD subil_pnbuff $T=-15240 25720 0 0 $X=-870 $Y=87580
X3 8 9 VDDO PAD subil_ppbuff $T=-4000 203800 0 0 $X=-350 $Y=196990
X6 10 7 subil_ppolyres $T=18405 135660 0 270 $X=21975 $Y=131300
X7 PAD 10 subil_ppolyres $T=35220 135670 0 270 $X=38790 $Y=131310
X8 VSSO 11 subil_nwellres $T=51125 154185 0 270 $X=51665 $Y=142555
X9 8 VDDO subil_nwellres $T=59985 154235 0 270 $X=60525 $Y=142605
.ENDS
***************************************
.SUBCKT subil_midconer2
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pfrelr
** N=4 EP=0 IP=8 FDC=0
*.CALIBRE ISOLATED NETS: VDDO VDD VSSO VSS
.ENDS
***************************************
.SUBCKT M2_M1_S_CDNS_782220710392
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pddrive01 1 2 4 5 6 7 8 9
** N=17 EP=8 IP=32 FDC=25
M0 6 13 6 1 NH L=3.6e-07 W=1.667e-05 $X=20320 $Y=3530 $D=22
M1 6 13 6 1 NH L=3.6e-07 W=1.667e-05 $X=21500 $Y=3530 $D=22
M2 6 13 6 1 NH L=3.6e-07 W=1.667e-05 $X=22680 $Y=3530 $D=22
M3 7 12 6 1 NH L=3.6e-07 W=1e-05 $X=24690 $Y=9600 $D=22
M4 8 16 5 1 NH L=3.6e-07 W=1e-05 $X=29880 $Y=9440 $D=22
M5 5 16 8 1 NH L=3.6e-07 W=1e-05 $X=31060 $Y=9440 $D=22
M6 2 5 8 1 NH L=3.6e-07 W=6e-06 $X=33180 $Y=12350 $D=22
M7 4 2 1 1 NH L=3.6e-07 W=6e-06 $X=35210 $Y=9420 $D=22
M8 6 11 6 7 PH L=3.6e-07 W=1.667e-05 $X=18780 $Y=42620 $D=41
M9 6 11 6 7 PH L=3.6e-07 W=1.667e-05 $X=19960 $Y=42620 $D=41
M10 6 11 6 7 PH L=3.6e-07 W=1.667e-05 $X=21140 $Y=42620 $D=41
M11 7 14 6 7 PH L=3.6e-07 W=2e-05 $X=23240 $Y=40340 $D=41
M12 7 15 5 7 PH L=3.6e-07 W=2e-05 $X=29970 $Y=39200 $D=41
M13 17 5 7 7 PH L=3.6e-07 W=2e-05 $X=32580 $Y=39250 $D=41
M14 2 5 17 7 PH L=3.6e-07 W=2e-05 $X=33340 $Y=39250 $D=41
M15 9 2 4 9 PH L=3.6e-07 W=8e-06 $X=65900 $Y=48020 $D=41
M16 4 2 9 9 PH L=3.6e-07 W=8e-06 $X=67080 $Y=48020 $D=41
M17 9 2 4 9 PH L=3.6e-07 W=8e-06 $X=68260 $Y=48020 $D=41
M18 4 2 9 9 PH L=3.6e-07 W=8e-06 $X=69440 $Y=48020 $D=41
X25 15 7 rpmpoly2t$$44660780 $T=27675 59970 0 180 $X=25455 $Y=52255
X26 8 11 rpmpoly2t$$44660780 $T=28390 50475 0 180 $X=26170 $Y=42760
X27 7 13 rpmpoly2t$$44660780 $T=35785 3175 0 90 $X=28070 $Y=2955
X28 7 12 rpmpoly2t$$44660780 $T=35785 5530 0 90 $X=28070 $Y=5310
X29 14 8 rpmpoly2t$$44660780 $T=28535 37840 0 270 $X=28355 $Y=35620
X30 8 16 rpmpoly2t$$44660780 $T=47880 3175 0 90 $X=40165 $Y=2955
.ENDS
***************************************
.SUBCKT pc3d01 VSSO VSS VDD VDDO CIN
** N=11 EP=5 IP=37 FDC=52
X1 VSSO 11 11 PAD subil_pnbuff $T=-15240 25720 0 0 $X=-870 $Y=87580
X2 7 7 VDDO PAD subil_ppbuff $T=-4000 203800 0 0 $X=-350 $Y=196990
X5 PAD 8 subil_ppolyres $T=30480 136210 1 270 $X=21200 $Y=131850
X6 9 8 subil_ppolyres $T=35960 136210 0 270 $X=39530 $Y=131850
X7 VSSO 11 subil_nwellres $T=59660 149815 0 270 $X=60200 $Y=138185
X8 VSS 10 CIN 9 7 VDDO VSSO VDD subil_pddrive01 $T=-15430 134970 0 0 $X=-920 $Y=92510
.ENDS
***************************************
.SUBCKT M3_M2_S_CDNS_782220710391
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_presistorpower 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 8253.06 L=1.46e-05 W=2.1e-06 $[RW] $X=-20 $Y=10560 $D=79
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD 1 2 3
** N=4 EP=3 IP=0 FDC=1
M0 2 3 1 2 NH L=4e-07 W=3e-05 $X=26020 $Y=5250 $D=22
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD 1 2 3
** N=4 EP=3 IP=8 FDC=2
X0 1 2 3 subil_pngatebuff_ESD $T=0 6220 1 0 $X=16000 $Y=-2070
X1 1 2 3 subil_pngatebuff_ESD $T=0 2640 0 0 $X=16000 $Y=1330
.ENDS
***************************************
.SUBCKT ICV_7 1 2 3
** N=4 EP=3 IP=8 FDC=4
X0 1 2 3 subil_pngate2buff_ESD $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 1 2 3 subil_pngate2buff_ESD $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_iorulepower
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_4via_ESD
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pv0acon_ESD
** N=4 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_pdiodepower
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_powerbase_1 1 2 3 4
** N=9 EP=4 IP=6 FDC=19
D0 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=14620 $Y=11030 $D=99
D1 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=17420 $Y=11030 $D=99
D2 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=20220 $Y=11030 $D=99
D3 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=23020 $Y=11030 $D=99
D4 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=25820 $Y=11030 $D=99
D5 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=28620 $Y=11030 $D=99
D6 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=31420 $Y=11030 $D=99
D7 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=34220 $Y=11030 $D=99
D8 4 3 P3 AREA=1.331e-11 PJ=2.862e-05 $X=37020 $Y=11030 $D=99
D9 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=43960 $Y=11030 $D=99
D10 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=46760 $Y=11030 $D=99
D11 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=49560 $Y=11030 $D=99
D12 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=52360 $Y=11030 $D=99
D13 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=55160 $Y=11030 $D=99
D14 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=57960 $Y=11030 $D=99
D15 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=60760 $Y=11030 $D=99
D16 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=63560 $Y=11030 $D=99
D17 3 4 P3 AREA=1.331e-11 PJ=2.862e-05 $X=66360 $Y=11030 $D=99
C18 1 2 L=1.513e-05 W=1.513e-05 $[CH] $X=51860 $Y=41355 $D=112
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower 2 3 4
** N=6 EP=3 IP=0 FDC=1
M0 2 3 4 2 PH L=4e-07 W=4e-05 $X=9010 $Y=4110 $D=41
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower 2 3 4
** N=6 EP=3 IP=12 FDC=2
X0 2 3 4 subil_ppgatebuffpower $T=0 3020 1 0 $X=-3870 $Y=-4910
X1 2 3 4 subil_ppgatebuffpower $T=0 -560 0 0 $X=-3870 $Y=-1870
.ENDS
***************************************
.SUBCKT subil_ppbuffpower 1 3 4
** N=6 EP=3 IP=36 FDC=12
X0 1 3 4 subil_ppgate2buffpower $T=0 1030 0 0 $X=-3870 $Y=-3880
X1 1 3 4 subil_ppgate2buffpower $T=0 8290 0 0 $X=-3870 $Y=3380
X2 1 3 4 subil_ppgate2buffpower $T=0 15550 0 0 $X=-3870 $Y=10640
X3 1 3 4 subil_ppgate2buffpower $T=0 22810 0 0 $X=-3870 $Y=17900
X4 1 3 4 subil_ppgate2buffpower $T=0 30070 0 0 $X=-3870 $Y=25160
X5 1 3 4 subil_ppgate2buffpower $T=0 37330 0 0 $X=-3870 $Y=32420
.ENDS
***************************************
.SUBCKT pv0a VSSO VSS VDDO
** N=8 EP=3 IP=61 FDC=47
*.CALIBRE ISOLATED NETS: VDD
X3 VDDO 5 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X4 5 7 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X5 6 8 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X6 8 VSSO subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X7 VDDO VSSO 6 subil_pngate2buff_ESD $T=13340 151690 1 270 $X=2410 $Y=87580
X8 VDDO VSSO 6 subil_pngate2buff_ESD $T=60540 151690 1 270 $X=49610 $Y=87580
X9 VDDO VSSO 6 ICV_7 $T=22780 151690 1 270 $X=11850 $Y=87580
X10 VDDO VSSO 6 ICV_7 $T=41660 151690 1 270 $X=30730 $Y=87580
X13 VDDO 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X14 VDDO 7 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD1 1 2 3
** N=4 EP=3 IP=0 FDC=1
M0 2 3 1 2 NH L=4e-07 W=3e-05 $X=26020 $Y=5250 $D=22
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD1 1 2 3
** N=4 EP=3 IP=8 FDC=2
X0 1 2 3 subil_pngatebuff_ESD1 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 1 2 3 subil_pngatebuff_ESD1 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT subil_pvdacon_ESD
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_powerbasecon_ESD 1 2 3 4
** N=10 EP=4 IP=12 FDC=4
X0 3 9 subil_presistorpower $T=1110 -9670 0 0 $X=910 $Y=-180
X1 9 2 subil_presistorpower $T=1110 10390 0 0 $X=910 $Y=19880
X2 1 10 subil_presistorpower $T=56330 -9550 0 0 $X=56130 $Y=-60
X3 10 4 subil_presistorpower $T=56330 10510 0 0 $X=56130 $Y=20000
.ENDS
***************************************
.SUBCKT pvda VSSO VSS VDDO
** N=7 EP=3 IP=65 FDC=47
*.CALIBRE ISOLATED NETS: VDD
X4 VDDO 5 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X5 VDDO 6 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
X6 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=13340 151690 1 270 $X=2410 $Y=87580
X7 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=22780 151690 1 270 $X=11850 $Y=87580
X8 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=32220 151690 1 270 $X=21290 $Y=87580
X9 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=41660 151690 1 270 $X=30730 $Y=87580
X10 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=51100 151690 1 270 $X=40170 $Y=87580
X11 VDDO VSSO 5 subil_pngate2buff_ESD1 $T=60540 151690 1 270 $X=49610 $Y=87580
X13 5 6 VDDO VSSO subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
.ENDS
***************************************
.SUBCKT subil_pngatering_ESD22
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD22 2 3 4
** N=4 EP=3 IP=0 FDC=1
M0 2 3 4 2 N L=2.5e-07 W=3e-05 $X=26020 $Y=5400 $D=26
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD22 2 3 4
** N=4 EP=3 IP=8 FDC=2
X0 2 3 4 subil_pngatebuff_ESD22 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuff_ESD22 $T=0 2640 0 0 $X=16000 $Y=1430
.ENDS
***************************************
.SUBCKT ICV_8 2 3 4
** N=4 EP=3 IP=8 FDC=4
X0 2 3 4 subil_pngate2buff_ESD22 $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 2 3 4 subil_pngate2buff_ESD22 $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_pv0icon_ESD
** N=5 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppgatebuffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=0 FDC=1
M0 2 3 1 2 P L=2.5e-07 W=4e-05 $X=9010 $Y=4310 $D=38
.ENDS
***************************************
.SUBCKT subil_ppgate2buffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=10 FDC=2
X0 1 2 3 subil_ppgatebuffpower_0di_ESD22 $T=0 3020 1 0 $X=3710 $Y=-4550
X1 1 2 3 subil_ppgatebuffpower_0di_ESD22 $T=0 -560 0 0 $X=3710 $Y=-1860
.ENDS
***************************************
.SUBCKT subil_ppbuffpower_0di_ESD22 1 2 3
** N=5 EP=3 IP=30 FDC=12
X0 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 1030 0 0 $X=3710 $Y=-3520
X1 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 8290 0 0 $X=3710 $Y=3740
X2 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 15550 0 0 $X=3710 $Y=11000
X3 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 22810 0 0 $X=3710 $Y=18260
X4 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 30070 0 0 $X=3710 $Y=25520
X5 2 1 3 subil_ppgate2buffpower_0di_ESD22 $T=0 37330 0 0 $X=3710 $Y=32780
.ENDS
***************************************
.SUBCKT pv0i VSSO VSS VDD
** N=9 EP=3 IP=55 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
X1 VDD 5 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X2 5 7 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X3 6 8 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X4 8 VSS subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X6 VDD 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X9 VSS 6 VDD subil_pngate2buff_ESD22 $T=13340 151690 1 270 $X=2410 $Y=87580
X10 VSS 6 VDD subil_pngate2buff_ESD22 $T=60540 151690 1 270 $X=49610 $Y=87580
X11 VSS 6 VDD ICV_8 $T=22780 151690 1 270 $X=11850 $Y=87580
X12 VSS 6 VDD ICV_8 $T=41660 151690 1 270 $X=30730 $Y=87580
X14 VDD VSS 7 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
.ENDS
***************************************
.SUBCKT subil_pngatering22
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pvdicon_ESD
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuff_ESD122 2 3 4
** N=5 EP=3 IP=0 FDC=1
M0 2 3 4 2 N L=2.5e-07 W=3e-05 $X=26020 $Y=5400 $D=26
.ENDS
***************************************
.SUBCKT subil_pngate2buff_ESD122 2 3 4
** N=5 EP=3 IP=10 FDC=2
X0 2 3 4 subil_pngatebuff_ESD122 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuff_ESD122 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT pvdi VSSO VSS VDD
** N=7 EP=3 IP=69 FDC=47
*.CALIBRE ISOLATED NETS: VDDO
X2 VDD 5 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X3 5 6 VDD VSS subil_powerbasecon_ESD $T=3330 205880 0 0 $X=4240 $Y=126110
X4 VDD VSS 6 subil_ppbuffpower_0di_ESD22 $T=3500 203800 0 0 $X=-60 $Y=196810
X8 VSSO 5 VDD subil_pngate2buff_ESD122 $T=13340 151690 1 270 $X=2410 $Y=87580
X9 VSSO 5 VDD subil_pngate2buff_ESD122 $T=22780 151690 1 270 $X=11850 $Y=87580
X10 VSSO 5 VDD subil_pngate2buff_ESD122 $T=32220 151690 1 270 $X=21290 $Y=87580
X11 VSSO 5 VDD subil_pngate2buff_ESD122 $T=41660 151690 1 270 $X=30730 $Y=87580
X12 VSSO 5 VDD subil_pngate2buff_ESD122 $T=51100 151690 1 270 $X=40170 $Y=87580
X13 VSSO 5 VDD subil_pngate2buff_ESD122 $T=60540 151690 1 270 $X=49610 $Y=87580
.ENDS
***************************************
.SUBCKT ICV_9 13 14 15 16 21 40 52 75 84 102 108 138 148
** N=22199 EP=13 IP=682 FDC=655
X117 14 13 15 16 52 pc3o01 $T=1969920 1604160 0 90 $X=1719600 $Y=1603240
X133 14 13 15 16 21 pc3d01 $T=395840 1969920 0 180 $X=329920 $Y=1719600
X134 14 13 15 16 102 pc3d01 $T=511600 1969920 0 180 $X=445680 $Y=1719600
X135 14 13 15 16 108 pc3d01 $T=627360 1969920 0 180 $X=561440 $Y=1719600
X136 14 13 15 16 40 pc3d01 $T=743115 1969920 0 180 $X=677195 $Y=1719600
X137 14 13 15 16 138 pc3d01 $T=1321890 1969920 0 180 $X=1255970 $Y=1719600
X138 14 13 15 16 75 pc3d01 $T=1437645 1969920 0 180 $X=1371725 $Y=1719600
X139 14 13 15 16 148 pc3d01 $T=1553400 1969920 0 180 $X=1487480 $Y=1719600
X140 14 13 15 16 84 pc3d01 $T=1669160 1969920 0 180 $X=1603240 $Y=1719600
X143 14 13 16 pv0a $T=1206135 1969920 0 180 $X=1140265 $Y=1719600
X144 14 13 16 pvda $T=1090380 1969920 0 180 $X=1024510 $Y=1719600
X145 14 13 15 pv0i $T=974625 1969920 0 180 $X=908755 $Y=1719860
X146 14 13 15 pvdi $T=858870 1969920 0 180 $X=793000 $Y=1719860
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_782220710397
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7822207103922
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7822207103923
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7822207103924
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7822207103925
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_782220710399
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7822207103927
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103926
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7822207103929
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7822207103928
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_10
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7822207103930
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_11
** N=2 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT feedth
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT feedth3
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT ICV_12
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_13
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_S_CDNS_782220710394
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_14
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT dl04d1 I VSS VDD Z
** N=7 EP=4 IP=0 FDC=8
M0 VSS I 5 VSS N L=1.8e-07 W=4.2e-07 $X=630 $Y=1760 $D=26
M1 6 5 VSS VSS N L=2.54e-06 W=4.2e-07 $X=1290 $Y=1760 $D=26
M2 VSS 6 7 VSS N L=1.71e-06 W=4.5e-07 $X=4090 $Y=940 $D=26
M3 Z 7 VSS VSS N L=1.8e-07 W=4.2e-07 $X=6430 $Y=1450 $D=26
M4 VDD I 5 VDD P L=1.84827e-07 W=1.60042e-06 $X=460 $Y=3740 $D=38
M5 6 5 VDD VDD P L=2.1e-06 W=4.8e-07 $X=1310 $Y=3040 $D=38
M6 VDD 6 7 VDD P L=3.65e-06 W=4.2e-07 $X=2330 $Y=4230 $D=38
M7 Z 7 VDD VDD P L=1.84709e-07 W=1.64042e-06 $X=6410 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT feedth9
** N=2 EP=0 IP=0 FDC=0
*.CALIBRE ISOLATED NETS: VSS VDD
.ENDS
***************************************
.SUBCKT ICV_15
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_16
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_17
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_18
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_19
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_20
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_21
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_22
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_23
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_782220710398
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7822207103912
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7822207103911
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_24
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7822207103914
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7822207103913
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_25
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103910
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_26
** N=1 EP=0 IP=6 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103915
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7822207103919
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7822207103918
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M4_M3_LD_CDNS_7822207103917
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M5_M4_LD_CDNS_7822207103916
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_27
** N=2 EP=0 IP=8 FDC=0
.ENDS
***************************************
.SUBCKT ICV_28
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_29
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_30
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_31
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_32
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_33
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_34
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_35
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_36
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_37
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_38
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_39
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_40
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_41
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_42
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_43
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_44
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_45
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_46
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_47
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_48
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_49
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_50
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_51
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_52
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_53
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_54
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_55
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_56
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT an02d1 A1 A2 VDD VSS Z
** N=7 EP=5 IP=0 FDC=6
M0 7 A1 6 VSS N L=1.8e-07 W=8.8e-07 $X=630 $Y=1080 $D=26
M1 VSS A2 7 VSS N L=1.8e-07 W=8.8e-07 $X=1110 $Y=1080 $D=26
M2 Z 6 VSS VSS N L=1.8e-07 W=1e-06 $X=1910 $Y=960 $D=26
M3 6 A1 VDD VDD P L=1.8e-07 W=8.8e-07 $X=480 $Y=3040 $D=38
M4 VDD A2 6 VDD P L=1.8e-07 W=8.8e-07 $X=1220 $Y=3040 $D=38
M5 Z 6 VDD VDD P L=1.8e-07 W=1.48e-06 $X=1870 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT dfnrn1 CP D VSS VDD QN
** N=14 EP=5 IP=0 FDC=24
M0 VSS CP 6 VSS N L=1.8e-07 W=5.2e-07 $X=630 $Y=1420 $D=26
M1 7 6 VSS VSS N L=1.8e-07 W=5.2e-07 $X=1250 $Y=1420 $D=26
M2 8 D VSS VSS N L=1.8e-07 W=4.8e-07 $X=2690 $Y=1590 $D=26
M3 IPM 6 8 VSS N L=1.8e-07 W=4.8e-07 $X=3430 $Y=1590 $D=26
M4 9 7 IPM VSS N L=1.8e-07 W=4.8e-07 $X=4170 $Y=1590 $D=26
M5 VSS 11 9 VSS N L=1.8e-07 W=5.9e-07 $X=4910 $Y=1590 $D=26
M6 11 IPM VSS VSS N L=1.8e-07 W=5.9e-07 $X=5550 $Y=1590 $D=26
M7 IPS 7 11 VSS N L=1.8e-07 W=5.9e-07 $X=6290 $Y=1590 $D=26
M8 12 6 IPS VSS N L=1.8e-07 W=5.9e-07 $X=7030 $Y=1590 $D=26
M9 VSS 13 12 VSS N L=1.8e-07 W=4.3e-07 $X=7770 $Y=1590 $D=26
M10 VSS IPS 13 VSS N L=1.8e-07 W=4.8e-07 $X=9090 $Y=1540 $D=26
M11 QN IPS VSS VSS N L=1.8e-07 W=1e-06 $X=9710 $Y=1020 $D=26
M12 VDD CP 6 VDD P L=1.8e-07 W=6.8e-07 $X=630 $Y=3040 $D=38
M13 7 6 VDD VDD P L=1.8e-07 W=6.8e-07 $X=1250 $Y=3040 $D=38
M14 8 D VDD VDD P L=1.8e-07 W=5.2e-07 $X=2900 $Y=3310 $D=38
M15 IPM 7 8 VDD P L=1.8e-07 W=6e-07 $X=3640 $Y=3230 $D=38
M16 9 6 IPM VDD P L=1.8e-07 W=6e-07 $X=4380 $Y=3230 $D=38
M17 VDD 11 9 VDD P L=1.8e-07 W=5.1e-07 $X=5120 $Y=3320 $D=38
M18 11 IPM VDD VDD P L=1.8e-07 W=9.8e-07 $X=5970 $Y=3320 $D=38
M19 IPS 6 11 VDD P L=1.8e-07 W=9.8e-07 $X=6710 $Y=3320 $D=38
M20 12 7 IPS VDD P L=1.8e-07 W=6.8e-07 $X=7450 $Y=3920 $D=38
M21 VDD 13 12 VDD P L=1.8e-07 W=5.2e-07 $X=8190 $Y=4080 $D=38
M22 VDD IPS 13 VDD P L=1.8e-07 W=5.2e-07 $X=9090 $Y=3040 $D=38
M23 QN IPS VDD VDD P L=1.85115e-07 W=1.51042e-06 $X=9710 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT dfnrq1 CP D VSS VDD Q
** N=14 EP=5 IP=0 FDC=24
M0 VSS CP 6 VSS N L=1.8e-07 W=5.2e-07 $X=630 $Y=1420 $D=26
M1 7 6 VSS VSS N L=1.8e-07 W=5.2e-07 $X=1250 $Y=1420 $D=26
M2 8 D VSS VSS N L=1.8e-07 W=4.8e-07 $X=2690 $Y=1590 $D=26
M3 IPM 6 8 VSS N L=1.8e-07 W=4.8e-07 $X=3430 $Y=1590 $D=26
M4 9 7 IPM VSS N L=1.8e-07 W=4.8e-07 $X=4170 $Y=1590 $D=26
M5 VSS 11 9 VSS N L=1.8e-07 W=5.9e-07 $X=4910 $Y=1590 $D=26
M6 11 IPM VSS VSS N L=1.8e-07 W=5.9e-07 $X=5550 $Y=1590 $D=26
M7 IPS 7 11 VSS N L=1.8e-07 W=5.9e-07 $X=6290 $Y=1590 $D=26
M8 12 6 IPS VSS N L=1.8e-07 W=5.9e-07 $X=7030 $Y=1590 $D=26
M9 VSS 13 12 VSS N L=1.8e-07 W=4.3e-07 $X=7770 $Y=1590 $D=26
M10 VSS IPS 13 VSS N L=1.8e-07 W=4.8e-07 $X=9090 $Y=1540 $D=26
M11 Q 13 VSS VSS N L=1.8e-07 W=1e-06 $X=9830 $Y=1020 $D=26
M12 VDD CP 6 VDD P L=1.8e-07 W=6.8e-07 $X=630 $Y=3040 $D=38
M13 7 6 VDD VDD P L=1.8e-07 W=6.8e-07 $X=1250 $Y=3040 $D=38
M14 8 D VDD VDD P L=1.8e-07 W=5.2e-07 $X=2900 $Y=3310 $D=38
M15 IPM 7 8 VDD P L=1.8e-07 W=6e-07 $X=3640 $Y=3230 $D=38
M16 9 6 IPM VDD P L=1.8e-07 W=6e-07 $X=4380 $Y=3230 $D=38
M17 VDD 11 9 VDD P L=1.8e-07 W=5.1e-07 $X=5120 $Y=3320 $D=38
M18 11 IPM VDD VDD P L=1.8e-07 W=9.8e-07 $X=5970 $Y=3320 $D=38
M19 IPS 6 11 VDD P L=1.8e-07 W=9.8e-07 $X=6710 $Y=3320 $D=38
M20 12 7 IPS VDD P L=1.8e-07 W=6.8e-07 $X=7450 $Y=3920 $D=38
M21 VDD 13 12 VDD P L=1.8e-07 W=5.2e-07 $X=8190 $Y=4080 $D=38
M22 VDD IPS 13 VDD P L=1.8e-07 W=5.2e-07 $X=9090 $Y=3040 $D=38
M23 Q 13 VDD VDD P L=1.85115e-07 W=1.51042e-06 $X=9830 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT nd02d1 A2 VSS A1 ZN VDD
** N=6 EP=5 IP=0 FDC=4
M0 6 A2 VSS VSS N L=1.8e-07 W=8.2e-07 $X=660 $Y=1340 $D=26
M1 ZN A1 6 VSS N L=1.8e-07 W=8.2e-07 $X=1120 $Y=1340 $D=26
M2 ZN A2 VDD VDD P L=1.8e-07 W=1.34e-06 $X=660 $Y=3040 $D=38
M3 VDD A1 ZN VDD P L=1.8e-07 W=1.34e-06 $X=1400 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT nd12d1 A1 VSS A2 ZN VDD
** N=7 EP=5 IP=0 FDC=6
M0 VSS A1 6 VSS N L=1.8e-07 W=5.7e-07 $X=630 $Y=1440 $D=26
M1 7 6 VSS VSS N L=1.89162e-07 W=1.09113e-06 $X=1310 $Y=1550 $D=26
M2 ZN A2 7 VSS N L=1.8e-07 W=1e-06 $X=1990 $Y=1010 $D=26
M3 VDD A1 6 VDD P L=1.86572e-07 W=1.10627e-06 $X=560 $Y=3650 $D=38
M4 ZN 6 VDD VDD P L=1.84538e-07 W=1.50213e-06 $X=1280 $Y=3050 $D=38
M5 VDD A2 ZN VDD P L=1.84538e-07 W=1.50213e-06 $X=1990 $Y=3750 $D=38
.ENDS
***************************************
.SUBCKT dfnrb1 CP D Q VDD VSS QN
** N=15 EP=6 IP=0 FDC=26
M0 VSS CP 7 VSS N L=1.8e-07 W=5.2e-07 $X=630 $Y=1420 $D=26
M1 8 7 VSS VSS N L=1.8e-07 W=5.2e-07 $X=1250 $Y=1420 $D=26
M2 9 D VSS VSS N L=1.8e-07 W=4.8e-07 $X=2690 $Y=1590 $D=26
M3 IPM 7 9 VSS N L=1.8e-07 W=4.8e-07 $X=3430 $Y=1590 $D=26
M4 10 8 IPM VSS N L=1.8e-07 W=4.8e-07 $X=4170 $Y=1590 $D=26
M5 VSS 12 10 VSS N L=1.8e-07 W=5.9e-07 $X=4910 $Y=1590 $D=26
M6 12 IPM VSS VSS N L=1.8e-07 W=5.9e-07 $X=5550 $Y=1590 $D=26
M7 IPS 8 12 VSS N L=1.8e-07 W=5.9e-07 $X=6290 $Y=1590 $D=26
M8 13 7 IPS VSS N L=1.8e-07 W=5.9e-07 $X=7030 $Y=1590 $D=26
M9 VSS 15 13 VSS N L=1.8e-07 W=4.3e-07 $X=7770 $Y=1590 $D=26
M10 15 IPS VSS VSS N L=1.8e-07 W=4.6e-07 $X=8390 $Y=1560 $D=26
M11 VSS 15 Q VSS N L=1.8715e-07 W=1.08042e-06 $X=9660 $Y=1010 $D=26
M12 QN IPS VSS VSS N L=1.86834e-07 W=1.13042e-06 $X=10390 $Y=1450 $D=26
M13 VDD CP 7 VDD P L=1.8e-07 W=6.8e-07 $X=630 $Y=3040 $D=38
M14 8 7 VDD VDD P L=1.8e-07 W=6.8e-07 $X=1250 $Y=3040 $D=38
M15 9 D VDD VDD P L=1.8e-07 W=5.2e-07 $X=2900 $Y=3310 $D=38
M16 IPM 8 9 VDD P L=1.8e-07 W=6e-07 $X=3640 $Y=3230 $D=38
M17 10 7 IPM VDD P L=1.8e-07 W=6e-07 $X=4380 $Y=3230 $D=38
M18 VDD 12 10 VDD P L=1.8e-07 W=5.1e-07 $X=5120 $Y=3320 $D=38
M19 12 IPM VDD VDD P L=1.8e-07 W=1.01e-06 $X=5970 $Y=3320 $D=38
M20 IPS 7 12 VDD P L=1.8715e-07 W=1.08042e-06 $X=6540 $Y=3890 $D=38
M21 13 8 IPS VDD P L=1.8e-07 W=6.8e-07 $X=7310 $Y=4230 $D=38
M22 VDD 15 13 VDD P L=1.8e-07 W=4.4e-07 $X=8080 $Y=4370 $D=38
M23 VDD IPS 15 VDD P L=1.8e-07 W=4.9e-07 $X=8470 $Y=3530 $D=38
M24 VDD 15 Q VDD P L=1.84538e-07 W=1.50213e-06 $X=9680 $Y=3810 $D=38
M25 QN IPS VDD VDD P L=1.85115e-07 W=1.51042e-06 $X=10390 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT nr02d1 A2 A1 ZN VSS VDD
** N=6 EP=5 IP=0 FDC=4
M0 ZN A2 VSS VSS N L=1.8e-07 W=8.9e-07 $X=650 $Y=1010 $D=26
M1 VSS A1 ZN VSS N L=1.8e-07 W=8.9e-07 $X=1390 $Y=1010 $D=26
M2 6 A2 ZN VDD P L=1.86612e-07 W=1.64941e-06 $X=650 $Y=3040 $D=38
M3 VDD A1 6 VDD P L=1.86612e-07 W=1.64941e-06 $X=1350 $Y=4000 $D=38
.ENDS
***************************************
.SUBCKT ICV_57
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_58 14 15 26 27 46 47 53 54 55 56 57 59 60 61 63 64 65 68 69 70
+ 71 72 73 74 75 91 98 109 115 120 134 137 139 140 141
** N=8928 EP=35 IP=2349 FDC=512
M0 14 1575 73 14 N L=1.85718e-07 W=1.19213e-06 $X=661960 $Y=1380540 $D=26
M1 8928 69 14 14 N L=1.8e-07 W=9e-07 $X=663000 $Y=1379900 $D=26
M2 1575 1577 8928 14 N L=1.8e-07 W=9e-07 $X=663460 $Y=1379900 $D=26
M3 14 63 1577 14 N L=1.8e-07 W=4.8e-07 $X=664460 $Y=1379920 $D=26
M4 15 1575 73 15 P L=1.84888e-07 W=1.58042e-06 $X=661940 $Y=1376570 $D=38
M5 1575 69 15 15 P L=1.8e-07 W=8.7e-07 $X=662780 $Y=1377210 $D=38
M6 15 1577 1575 15 P L=1.8e-07 W=8.7e-07 $X=663520 $Y=1377210 $D=38
M7 1577 63 15 15 P L=1.8e-07 W=6.2e-07 $X=664320 $Y=1377460 $D=38
X27 26 14 15 27 91 pc3o01 $T=1969920 1372645 0 90 $X=1719600 $Y=1371725
X28 26 14 15 27 98 pc3o01 $T=1969920 1488400 0 90 $X=1719600 $Y=1487480
X279 46 14 15 1382 dl04d1 $T=480000 1504800 0 0 $X=479710 $Y=1504580
X280 47 14 15 1386 dl04d1 $T=482240 1516000 1 0 $X=481950 $Y=1510110
X281 1382 14 15 55 dl04d1 $T=599280 1381600 1 0 $X=598990 $Y=1375710
X282 1386 14 15 1512 dl04d1 $T=604880 1392800 1 0 $X=604590 $Y=1386910
X283 1513 14 15 1523 dl04d1 $T=613280 1392800 0 0 $X=612990 $Y=1392580
X284 57 14 15 1513 dl04d1 $T=613280 1460000 1 0 $X=612990 $Y=1454110
X285 1516 14 15 1518 dl04d1 $T=616080 1381600 0 0 $X=615790 $Y=1381380
X286 1518 14 15 59 dl04d1 $T=617200 1381600 1 0 $X=616910 $Y=1375710
X287 1514 14 15 1534 dl04d1 $T=623360 1381600 0 0 $X=623070 $Y=1381380
X288 1535 14 15 1545 dl04d1 $T=631200 1381600 1 0 $X=630910 $Y=1375710
X289 1551 14 15 70 dl04d1 $T=644080 1392800 0 0 $X=643790 $Y=1392580
X290 68 14 15 60 dl04d1 $T=648000 1381600 0 0 $X=647710 $Y=1381380
X291 1565 14 15 1573 dl04d1 $T=655280 1392800 1 0 $X=654990 $Y=1386910
X292 1569 14 15 1579 dl04d1 $T=659760 1392800 0 0 $X=659470 $Y=1392580
X293 1578 14 15 63 dl04d1 $T=664800 1392800 1 0 $X=664510 $Y=1386910
X294 1580 14 15 1582 dl04d1 $T=669280 1404000 1 0 $X=668990 $Y=1398110
X295 74 14 15 1580 dl04d1 $T=669280 1460000 1 0 $X=668990 $Y=1454110
X296 1584 14 15 1578 dl04d1 $T=672080 1392800 1 0 $X=671790 $Y=1386910
X297 1591 14 15 1599 dl04d1 $T=678240 1404000 1 0 $X=677950 $Y=1398110
X298 1581 14 15 1603 dl04d1 $T=680480 1381600 1 0 $X=680190 $Y=1375710
X299 1596 14 15 1606 dl04d1 $T=681600 1381600 0 0 $X=681310 $Y=1381380
X300 1604 14 15 1613 dl04d1 $T=687200 1392800 0 0 $X=686910 $Y=1392580
X301 109 14 15 1591 dl04d1 $T=1292560 1516000 1 0 $X=1292270 $Y=1510110
X302 115 14 15 1604 dl04d1 $T=1407920 1516000 1 0 $X=1407630 $Y=1510110
X303 120 14 15 1569 dl04d1 $T=1512640 1392800 0 0 $X=1512350 $Y=1392580
X1086 53 1512 15 14 54 an02d1 $T=602080 1392800 1 0 $X=601790 $Y=1386910
X1087 53 1523 15 14 1514 an02d1 $T=612160 1392800 1 0 $X=611870 $Y=1386910
X1088 53 1579 15 14 1565 an02d1 $T=659760 1392800 1 180 $X=656670 $Y=1392580
X1089 53 1582 15 14 1581 an02d1 $T=668160 1392800 0 0 $X=667870 $Y=1392580
X1090 53 1599 15 14 75 an02d1 $T=679920 1392800 1 180 $X=676830 $Y=1392580
X1091 53 1613 15 14 1596 an02d1 $T=684400 1392800 0 0 $X=684110 $Y=1392580
X1092 56 134 14 15 1516 dfnrn1 $T=606560 1381600 1 0 $X=606270 $Y=1375710
X1093 56 140 14 15 71 dfnrn1 $T=668720 1381600 1 180 $X=657790 $Y=1381380
X1094 56 1606 14 15 1584 dfnrn1 $T=681600 1381600 1 180 $X=670670 $Y=1381380
X1095 56 1603 14 15 141 dfnrq1 $T=680480 1381600 0 180 $X=669550 $Y=1375710
X1096 69 14 139 72 15 nd02d1 $T=654720 1381600 1 0 $X=654430 $Y=1375710
X1097 60 14 69 65 15 nd12d1 $T=648560 1381600 0 180 $X=645470 $Y=1375710
X1098 56 1534 137 15 14 1535 dfnrb1 $T=621120 1392800 1 0 $X=620830 $Y=1386910
X1099 56 1573 139 15 14 1551 dfnrb1 $T=655280 1392800 0 180 $X=643790 $Y=1386910
X1100 60 1545 61 14 15 nr02d1 $T=624480 1381600 1 0 $X=624190 $Y=1375710
X1101 63 1545 64 14 15 nr02d1 $T=636240 1381600 0 0 $X=635950 $Y=1381380
.ENDS
***************************************
.SUBCKT ICV_59
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_60
** N=2 EP=0 IP=6 FDC=0
.ENDS
***************************************
.SUBCKT ICV_61
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_62
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_63
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_64
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_65
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_66
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_67
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_68
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_69
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_70
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_71
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_72
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_73
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_74
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_75
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_76
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_77
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_78
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_79
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT buffd1 I VSS VDD Z
** N=5 EP=4 IP=0 FDC=4
M0 VSS I 5 VSS N L=1.8e-07 W=5.1e-07 $X=750 $Y=1450 $D=26
M1 Z 5 VSS VSS N L=1.86399e-07 W=1.13627e-06 $X=1410 $Y=1420 $D=26
M2 VDD I 5 VDD P L=1.8e-07 W=5.7e-07 $X=750 $Y=3040 $D=38
M3 Z 5 VDD VDD P L=1.84599e-07 W=1.48213e-06 $X=1420 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT ICV_80
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_81
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT buffd3 I Z VSS VDD
** N=5 EP=4 IP=0 FDC=6
M0 VSS I 5 VSS N L=1.8e-07 W=8e-07 $X=630 $Y=1380 $D=26
M1 Z 5 VSS VSS N L=1.8e-07 W=1.41e-06 $X=1420 $Y=770 $D=26
M2 VSS 5 Z VSS N L=1.8551e-07 W=1.48456e-06 $X=1980 $Y=770 $D=26
M3 VDD I 5 VDD P L=1.8e-07 W=1e-06 $X=630 $Y=3040 $D=38
M4 Z 5 VDD VDD P L=1.8e-07 W=1.99e-06 $X=1420 $Y=3040 $D=38
M5 VDD 5 Z VDD P L=1.83962e-07 W=2.06456e-06 $X=1980 $Y=3900 $D=38
.ENDS
***************************************
.SUBCKT ICV_82
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT aoi22d1 A2 ZN A1 B1 VDD B2 VSS
** N=10 EP=7 IP=0 FDC=8
M0 9 A2 VSS VSS N L=1.8e-07 W=1.04e-06 $X=680 $Y=1080 $D=26
M1 ZN A1 9 VSS N L=1.8e-07 W=1.04e-06 $X=1140 $Y=1080 $D=26
M2 10 B1 ZN VSS N L=1.8e-07 W=1.04e-06 $X=2040 $Y=810 $D=26
M3 VSS B2 10 VSS N L=1.88467e-07 W=1.12698e-06 $X=2500 $Y=810 $D=26
M4 ZN A2 8 VDD P L=1.86764e-07 W=1.54527e-06 $X=460 $Y=3040 $D=38
M5 8 A1 ZN VDD P L=1.8e-07 W=1.45e-06 $X=1250 $Y=3040 $D=38
M6 VDD B1 8 VDD P L=1.84508e-07 W=1.51213e-06 $X=1840 $Y=3930 $D=38
M7 8 B2 VDD VDD P L=1.85081e-07 W=1.52042e-06 $X=2550 $Y=3040 $D=38
.ENDS
***************************************
.SUBCKT ad01d1 B CI A S VSS VDD CO
** N=19 EP=7 IP=0 FDC=28
M0 VSS A 9 VSS N L=1.8594e-07 W=1.30042e-06 $X=480 $Y=830 $D=26
M1 9 B VSS VSS N L=1.8e-07 W=1.23e-06 $X=1220 $Y=830 $D=26
M2 13 CI 9 VSS N L=1.86847e-07 W=1.19456e-06 $X=1780 $Y=830 $D=26
M3 14 A 13 VSS N L=1.8e-07 W=1.12e-06 $X=2650 $Y=830 $D=26
M4 VSS B 14 VSS N L=1.8e-07 W=1.12e-06 $X=3110 $Y=830 $D=26
M5 10 B VSS VSS N L=1.86847e-07 W=1.19456e-06 $X=3670 $Y=1510 $D=26
M6 VSS A 10 VSS N L=1.8e-07 W=1.12e-06 $X=4530 $Y=830 $D=26
M7 10 CI VSS VSS N L=1.87203e-07 W=1.1987e-06 $X=5090 $Y=1460 $D=26
M8 12 13 10 VSS N L=1.85718e-07 W=1.19213e-06 $X=5840 $Y=830 $D=26
M9 15 CI 12 VSS N L=1.8e-07 W=1.12e-06 $X=6590 $Y=830 $D=26
M10 16 A 15 VSS N L=1.8e-07 W=1.12e-06 $X=7140 $Y=830 $D=26
M11 VSS B 16 VSS N L=1.86847e-07 W=1.19456e-06 $X=7670 $Y=830 $D=26
M12 VSS 12 S VSS N L=1.8e-07 W=1.02e-06 $X=9120 $Y=1010 $D=26
M13 CO 13 VSS VSS N L=1.87473e-07 W=1.09456e-06 $X=9680 $Y=1590 $D=26
M14 VDD A 8 VDD P L=1.85807e-07 W=1.33042e-06 $X=460 $Y=4080 $D=38
M15 8 B VDD VDD P L=1.8e-07 W=1.26e-06 $X=1250 $Y=3290 $D=38
M16 13 CI 8 VDD P L=1.86222e-07 W=1.31456e-06 $X=1810 $Y=4110 $D=38
M17 17 A 13 VDD P L=1.8e-07 W=1.24e-06 $X=2640 $Y=3310 $D=38
M18 VDD B 17 VDD P L=1.8e-07 W=1.24e-06 $X=3110 $Y=3310 $D=38
M19 11 A VDD VDD P L=1.8e-07 W=1.37e-06 $X=3850 $Y=3310 $D=38
M20 VDD CI 11 VDD P L=1.91419e-07 W=1.83054e-06 $X=4410 $Y=4230 $D=38
M21 11 B VDD VDD P L=1.8e-07 W=1.14e-06 $X=5430 $Y=3040 $D=38
M22 12 13 11 VDD P L=1.88461e-07 W=1.23527e-06 $X=5990 $Y=3040 $D=38
M23 18 CI 12 VDD P L=1.8e-07 W=1.44e-06 $X=6870 $Y=3240 $D=38
M24 19 A 18 VDD P L=1.8e-07 W=1.44e-06 $X=7330 $Y=3240 $D=38
M25 VDD B 19 VDD P L=1.8e-07 W=1.44e-06 $X=7850 $Y=3240 $D=38
M26 VDD 12 S VDD P L=1.8e-07 W=1.55e-06 $X=9150 $Y=3240 $D=38
M27 CO 13 VDD VDD P L=1.85035e-07 W=1.62456e-06 $X=9710 $Y=3240 $D=38
.ENDS
***************************************
.SUBCKT M5_M4_S_CDNS_782220710396
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_83
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT dl04d2 I Z VSS VDD
** N=9 EP=4 IP=0 FDC=14
M0 VSS I 5 VSS N L=1.8e-07 W=4.2e-07 $X=630 $Y=1050 $D=26
M1 6 5 VSS VSS N L=7.6e-07 W=2.4e-07 $X=1280 $Y=1230 $D=26
M2 VSS 6 7 VSS N L=2.15e-06 W=2.4e-07 $X=3180 $Y=570 $D=26
M3 VSS 7 8 VSS N L=1.26e-06 W=2.4e-07 $X=3990 $Y=1530 $D=26
M4 9 8 VSS VSS N L=1.8e-07 W=3.7e-07 $X=5730 $Y=1870 $D=26
M5 Z 9 VSS VSS N L=1.8e-07 W=8.3e-07 $X=7700 $Y=570 $D=26
M6 VSS 9 Z VSS N L=1.8e-07 W=8.3e-07 $X=8440 $Y=570 $D=26
M7 VDD I 5 VDD P L=1.8e-07 W=1.94e-06 $X=630 $Y=3090 $D=38
M8 VDD 5 6 VDD P L=1.11e-06 W=4.2e-07 $X=1510 $Y=3400 $D=38
M9 VDD 6 7 VDD P L=2.76e-06 W=4.2e-07 $X=2770 $Y=4610 $D=38
M10 8 7 VDD VDD P L=1.47e-06 W=4.2e-07 $X=3650 $Y=3470 $D=38
M11 VDD 8 9 VDD P L=1.8e-07 W=4.2e-07 $X=6380 $Y=3470 $D=38
M12 Z 9 VDD VDD P L=1.85704e-07 W=2.31012e-06 $X=7670 $Y=2300 $D=38
M13 VDD 9 Z VDD P L=1.88393e-07 W=1.57012e-06 $X=8520 $Y=4000 $D=38
.ENDS
***************************************
.SUBCKT or02d1 A1 A2 VSS VDD Z
** N=7 EP=5 IP=0 FDC=6
M0 6 A1 VSS VSS N L=1.8e-07 W=4.8e-07 $X=480 $Y=1620 $D=26
M1 VSS A2 6 VSS N L=1.8e-07 W=4.8e-07 $X=1260 $Y=1620 $D=26
M2 Z 6 VSS VSS N L=1.8e-07 W=1e-06 $X=1970 $Y=1180 $D=26
M3 7 A1 6 VDD P L=1.8e-07 W=8.9e-07 $X=630 $Y=3290 $D=38
M4 VDD A2 7 VDD P L=1.8e-07 W=8.9e-07 $X=1090 $Y=3290 $D=38
M5 Z 6 VDD VDD P L=1.8e-07 W=1.5e-06 $X=1890 $Y=3290 $D=38
.ENDS
***************************************
.SUBCKT an03d1 A1 A2 A3 VSS VDD Z
** N=9 EP=6 IP=0 FDC=8
M0 8 A1 7 VSS N L=1.8e-07 W=8e-07 $X=630 $Y=1010 $D=26
M1 9 A2 8 VSS N L=1.8e-07 W=8e-07 $X=1150 $Y=1010 $D=26
M2 VSS A3 9 VSS N L=1.8e-07 W=8e-07 $X=1670 $Y=1010 $D=26
M3 Z 7 VSS VSS N L=1.85401e-07 W=1.26213e-06 $X=2550 $Y=1180 $D=26
M4 VDD A1 7 VDD P L=1.8e-07 W=7.8e-07 $X=630 $Y=3340 $D=38
M5 7 A2 VDD VDD P L=1.8e-07 W=7.8e-07 $X=1250 $Y=3340 $D=38
M6 VDD A3 7 VDD P L=1.8e-07 W=7.8e-07 $X=1990 $Y=3340 $D=38
M7 Z 7 VDD VDD P L=1.85363e-07 W=1.44042e-06 $X=2550 $Y=3340 $D=38
.ENDS
***************************************
.SUBCKT oan211d1 C1 C2 VDD B ZN A VSS
** N=10 EP=7 IP=0 FDC=8
M0 VSS C1 8 VSS N L=1.86478e-07 W=1.05213e-06 $X=480 $Y=1010 $D=26
M1 8 C2 VSS VSS N L=1.86358e-07 W=1.07213e-06 $X=1210 $Y=1460 $D=26
M2 ZN B 8 VSS N L=1.8e-07 W=1.01e-06 $X=1950 $Y=990 $D=26
M3 VSS A ZN VSS N L=1.87542e-07 W=1.08456e-06 $X=2520 $Y=990 $D=26
M4 10 C1 9 VDD P L=1.8e-07 W=1.33e-06 $X=630 $Y=3060 $D=38
M5 VDD C2 10 VDD P L=1.8e-07 W=1.33e-06 $X=1090 $Y=3060 $D=38
M6 9 B VDD VDD P L=1.84896e-07 W=1.39213e-06 $X=1740 $Y=3060 $D=38
M7 ZN A 9 VDD P L=1.8e-07 W=1.33e-06 $X=2480 $Y=3060 $D=38
.ENDS
***************************************
.SUBCKT ICV_84
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ah01d1 B A S VSS VDD CO
** N=11 EP=6 IP=0 FDC=14
M0 9 A 7 VSS N L=1.8e-07 W=8.2e-07 $X=630 $Y=810 $D=26
M1 VSS B 9 VSS N L=1.8e-07 W=8.2e-07 $X=1090 $Y=810 $D=26
M2 10 B VSS VSS N L=1.8e-07 W=8.2e-07 $X=1830 $Y=810 $D=26
M3 8 7 10 VSS N L=1.8e-07 W=7.2e-07 $X=2430 $Y=1460 $D=26
M4 VSS A 10 VSS N L=1.8e-07 W=5.7e-07 $X=2870 $Y=570 $D=26
M5 VSS 8 S VSS N L=1.8e-07 W=9.5e-07 $X=4490 $Y=1010 $D=26
M6 CO 7 VSS VSS N L=1.8e-07 W=9.5e-07 $X=5230 $Y=1010 $D=26
M7 VDD A 7 VDD P L=1.8e-07 W=5.7e-07 $X=630 $Y=3200 $D=38
M8 7 B VDD VDD P L=1.8e-07 W=5.7e-07 $X=1350 $Y=3200 $D=38
M9 VDD 7 8 VDD P L=1.8e-07 W=5.7e-07 $X=2120 $Y=4050 $D=38
M10 11 B VDD VDD P L=1.8e-07 W=1.14e-06 $X=2890 $Y=3890 $D=38
M11 8 A 11 VDD P L=1.8e-07 W=1.14e-06 $X=3350 $Y=3890 $D=38
M12 VDD 8 S VDD P L=1.85149e-07 W=1.50042e-06 $X=4620 $Y=4210 $D=38
M13 CO 7 VDD VDD P L=1.84568e-07 W=1.49213e-06 $X=5350 $Y=3460 $D=38
.ENDS
***************************************
.SUBCKT ICV_85
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_86
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_87
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_88
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_89 16 17 30 31 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60
+ 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80
+ 81 82 93 94 95 96 97 98
** N=4699 EP=48 IP=5360 FDC=2212
M0 58 57 994 16 N L=1.85766e-07 W=1.18213e-06 $X=619940 $Y=1371990 $D=26
M1 994 59 58 16 N L=1.85766e-07 W=1.18213e-06 $X=620670 $Y=1371450 $D=26
M2 16 60 994 16 N L=1.8e-07 W=1.12e-06 $X=621420 $Y=1371450 $D=26
M3 994 61 16 16 N L=1.86489e-07 W=1.19042e-06 $X=621990 $Y=1372020 $D=26
M4 52 48 16 16 N L=1.8e-07 W=1.01e-06 $X=622530 $Y=1301090 $D=26
M5 1047 1045 1044 16 N L=1.8e-07 W=1.09e-06 $X=654810 $Y=1357100 $D=26
M6 16 70 1047 16 N L=1.86418e-07 W=1.06213e-06 $X=655430 $Y=1357660 $D=26
M7 1047 1043 16 16 N L=1.86418e-07 W=1.06213e-06 $X=656150 $Y=1357100 $D=26
M8 4695 1073 16 16 N L=1.88023e-07 W=1.13284e-06 $X=670860 $Y=1345940 $D=26
M9 1078 1063 4695 16 N L=1.8e-07 W=1.05e-06 $X=671560 $Y=1345940 $D=26
M10 16 1077 1078 16 N L=1.88023e-07 W=1.13284e-06 $X=672130 $Y=1346540 $D=26
M11 1078 48 16 16 N L=1.8e-07 W=9.9e-07 $X=672950 $Y=1345940 $D=26
M12 4696 57 17 17 P L=1.8e-07 W=1.38e-06 $X=620100 $Y=1373440 $D=38
M13 58 59 4696 17 P L=1.8e-07 W=1.38e-06 $X=620760 $Y=1373440 $D=38
M14 4697 60 58 17 P L=1.8e-07 W=1.38e-06 $X=621500 $Y=1373440 $D=38
M15 17 61 4697 17 P L=1.8e-07 W=1.38e-06 $X=621960 $Y=1373440 $D=38
M16 52 48 17 17 P L=1.8e-07 W=1.48e-06 $X=622530 $Y=1298680 $D=38
M17 1044 1045 17 17 P L=1.85195e-07 W=1.31213e-06 $X=654700 $Y=1355350 $D=38
M18 4698 70 1044 17 P L=1.8e-07 W=1.31e-06 $X=655660 $Y=1354720 $D=38
M19 17 1043 4698 17 P L=1.8e-07 W=1.31e-06 $X=656120 $Y=1354720 $D=38
M20 17 1073 1075 17 P L=1.86834e-07 W=1.13042e-06 $X=670860 $Y=1343210 $D=38
M21 1075 1063 17 17 P L=1.86074e-07 W=1.12213e-06 $X=671590 $Y=1343710 $D=38
M22 4699 1077 1075 17 P L=1.84733e-07 W=1.53627e-06 $X=672330 $Y=1344280 $D=38
M23 1078 48 4699 17 P L=1.84733e-07 W=1.53627e-06 $X=672950 $Y=1344210 $D=38
X42 30 16 17 31 1118 pc3o01 $T=1969920 1256890 0 90 $X=1719600 $Y=1255970
X591 30 16 31 pv0a $T=1969920 1141135 0 90 $X=1719600 $Y=1140265
X733 944 16 17 948 dl04d1 $T=579120 1336800 1 0 $X=578830 $Y=1330910
X734 943 16 17 950 dl04d1 $T=580240 1348000 1 0 $X=579950 $Y=1342110
X735 946 16 17 951 dl04d1 $T=581360 1303200 0 0 $X=581070 $Y=1302980
X736 947 16 17 952 dl04d1 $T=584160 1325600 1 0 $X=583870 $Y=1319710
X737 47 16 17 954 dl04d1 $T=586960 1314400 1 0 $X=586670 $Y=1308510
X738 46 16 17 953 dl04d1 $T=586960 1336800 0 0 $X=586670 $Y=1336580
X739 45 16 17 958 dl04d1 $T=589200 1325600 0 0 $X=588910 $Y=1325380
X740 956 16 17 962 dl04d1 $T=594240 1336800 0 0 $X=593950 $Y=1336580
X741 957 16 17 961 dl04d1 $T=594240 1348000 1 0 $X=593950 $Y=1342110
X742 958 16 17 955 dl04d1 $T=595920 1325600 1 0 $X=595630 $Y=1319710
X743 954 16 17 963 dl04d1 $T=596480 1314400 0 0 $X=596190 $Y=1314180
X744 959 16 17 966 dl04d1 $T=599280 1292000 1 0 $X=598990 $Y=1286110
X745 961 16 17 967 dl04d1 $T=599840 1336800 1 0 $X=599550 $Y=1330910
X746 960 16 17 970 dl04d1 $T=601520 1370400 1 0 $X=601230 $Y=1364510
X747 53 16 17 971 dl04d1 $T=602080 1280800 0 0 $X=601790 $Y=1280580
X748 965 16 17 974 dl04d1 $T=604320 1314400 1 0 $X=604030 $Y=1308510
X749 972 16 17 965 dl04d1 $T=608800 1303200 0 0 $X=608510 $Y=1302980
X750 973 16 17 982 dl04d1 $T=608800 1359200 1 0 $X=608510 $Y=1353310
X751 55 16 17 56 dl04d1 $T=608800 1370400 0 0 $X=608510 $Y=1370180
X752 975 16 17 986 dl04d1 $T=611600 1336800 1 0 $X=611310 $Y=1330910
X753 969 16 17 988 dl04d1 $T=612160 1292000 0 0 $X=611870 $Y=1291780
X754 977 16 17 989 dl04d1 $T=612160 1348000 1 0 $X=611870 $Y=1342110
X755 979 16 17 993 dl04d1 $T=613840 1325600 1 0 $X=613550 $Y=1319710
X756 981 16 17 60 dl04d1 $T=615520 1370400 1 0 $X=615230 $Y=1364510
X757 985 16 17 997 dl04d1 $T=617200 1280800 1 0 $X=616910 $Y=1274910
X758 980 16 17 977 dl04d1 $T=619440 1348000 1 0 $X=619150 $Y=1342110
X759 988 16 17 1002 dl04d1 $T=621680 1292000 0 0 $X=621390 $Y=1291780
X760 54 16 17 995 dl04d1 $T=621680 1314400 0 0 $X=621390 $Y=1314180
X761 990 16 17 991 dl04d1 $T=622800 1359200 0 0 $X=622510 $Y=1358980
X762 978 16 17 981 dl04d1 $T=622800 1370400 1 0 $X=622510 $Y=1364510
X763 998 16 17 1005 dl04d1 $T=624480 1325600 1 0 $X=624190 $Y=1319710
X764 1000 16 17 1013 dl04d1 $T=628960 1280800 0 0 $X=628670 $Y=1280580
X765 1003 16 17 1014 dl04d1 $T=630080 1303200 1 0 $X=629790 $Y=1297310
X766 1011 16 17 1020 dl04d1 $T=634560 1336800 1 0 $X=634270 $Y=1330910
X767 999 16 17 1012 dl04d1 $T=635120 1269600 0 0 $X=634830 $Y=1269380
X768 1012 16 17 51 dl04d1 $T=635120 1280800 1 0 $X=634830 $Y=1274910
X769 1013 16 17 50 dl04d1 $T=636240 1280800 0 0 $X=635950 $Y=1280580
X770 1015 16 17 1024 dl04d1 $T=636800 1314400 1 0 $X=636510 $Y=1308510
X771 1017 16 17 1025 dl04d1 $T=638480 1303200 1 0 $X=638190 $Y=1297310
X772 1010 16 17 1028 dl04d1 $T=639600 1325600 1 0 $X=639310 $Y=1319710
X773 1022 16 17 1017 dl04d1 $T=641840 1292000 0 0 $X=641550 $Y=1291780
X774 1023 16 17 1035 dl04d1 $T=643520 1258400 0 0 $X=643230 $Y=1258180
X775 1030 16 17 1039 dl04d1 $T=646880 1336800 1 0 $X=646590 $Y=1330910
X776 1029 16 17 1032 dl04d1 $T=647440 1269600 0 0 $X=647150 $Y=1269380
X777 1032 16 17 1041 dl04d1 $T=647440 1280800 1 0 $X=647150 $Y=1274910
X778 1037 16 17 1030 dl04d1 $T=650800 1336800 0 0 $X=650510 $Y=1336580
X779 69 16 17 71 dl04d1 $T=653600 1370400 0 0 $X=653310 $Y=1370180
X780 1031 16 17 1055 dl04d1 $T=655280 1303200 0 0 $X=654990 $Y=1302980
X781 1046 16 17 1057 dl04d1 $T=656960 1314400 0 0 $X=656670 $Y=1314180
X782 1049 16 17 1058 dl04d1 $T=656960 1325600 0 0 $X=656670 $Y=1325380
X783 1042 16 17 1049 dl04d1 $T=658080 1336800 0 0 $X=657790 $Y=1336580
X784 1052 16 17 1060 dl04d1 $T=658640 1336800 1 0 $X=658350 $Y=1330910
X785 1051 16 17 1074 dl04d1 $T=664800 1314400 1 0 $X=664510 $Y=1308510
X786 1061 16 17 1052 dl04d1 $T=665920 1336800 1 0 $X=665630 $Y=1330910
X787 72 16 17 77 dl04d1 $T=665920 1370400 0 0 $X=665630 $Y=1370180
X788 1065 16 17 1083 dl04d1 $T=668720 1303200 1 0 $X=668430 $Y=1297310
X789 1067 16 17 1084 dl04d1 $T=669280 1314400 0 0 $X=668990 $Y=1314180
X790 1070 16 17 1085 dl04d1 $T=669840 1269600 1 0 $X=669550 $Y=1263710
X791 1071 16 17 1065 dl04d1 $T=669840 1292000 0 0 $X=669550 $Y=1291780
X792 1072 16 17 1086 dl04d1 $T=670400 1224800 1 0 $X=670110 $Y=1218910
X793 1076 16 17 1067 dl04d1 $T=672080 1314400 1 0 $X=671790 $Y=1308510
X794 76 16 17 73 dl04d1 $T=672640 1370400 1 0 $X=672350 $Y=1364510
X795 78 16 17 1053 dl04d1 $T=673200 1370400 0 0 $X=672910 $Y=1370180
X796 1079 16 17 1094 dl04d1 $T=674320 1236000 0 0 $X=674030 $Y=1235780
X797 1080 16 17 1095 dl04d1 $T=674320 1269600 0 0 $X=674030 $Y=1269380
X798 1081 16 17 1079 dl04d1 $T=675440 1247200 1 0 $X=675150 $Y=1241310
X799 1082 16 17 1080 dl04d1 $T=675440 1280800 1 0 $X=675150 $Y=1274910
X800 1087 16 17 1071 dl04d1 $T=677120 1292000 0 0 $X=676830 $Y=1291780
X801 1078 16 17 1076 dl04d1 $T=679360 1314400 1 0 $X=679070 $Y=1308510
X802 1091 16 17 1098 dl04d1 $T=679920 1336800 1 0 $X=679630 $Y=1330910
X803 1096 16 17 1099 dl04d1 $T=681040 1359200 0 0 $X=680750 $Y=1358980
X804 1097 16 17 1106 dl04d1 $T=686640 1336800 0 0 $X=686350 $Y=1336580
X805 1101 16 17 1091 dl04d1 $T=687760 1336800 1 0 $X=687470 $Y=1330910
X806 1092 16 17 1107 dl04d1 $T=688320 1370400 1 0 $X=688030 $Y=1364510
X807 1103 16 17 1108 dl04d1 $T=689440 1314400 1 0 $X=689150 $Y=1308510
X808 1104 16 17 1097 dl04d1 $T=689440 1325600 0 0 $X=689150 $Y=1325380
X809 1093 16 17 1110 dl04d1 $T=690560 1348000 1 0 $X=690270 $Y=1342110
X810 1100 16 17 1111 dl04d1 $T=690560 1359200 1 0 $X=690270 $Y=1353310
X811 1105 16 17 1114 dl04d1 $T=692240 1303200 1 0 $X=691950 $Y=1297310
X812 1115 16 17 1105 dl04d1 $T=699520 1303200 1 0 $X=699230 $Y=1297310
X813 82 16 17 1096 dl04d1 $T=1512640 1359200 0 0 $X=1512350 $Y=1358980
X1869 52 971 17 16 959 an02d1 $T=602080 1280800 1 180 $X=598990 $Y=1280580
X1870 52 93 17 16 960 an02d1 $T=602080 1370400 1 180 $X=598990 $Y=1370180
X1871 52 1020 17 16 1010 an02d1 $T=631760 1336800 1 0 $X=631470 $Y=1330910
X1872 52 1039 17 16 1015 an02d1 $T=646880 1336800 0 180 $X=643790 $Y=1330910
X1873 52 1060 17 16 1051 an02d1 $T=655840 1336800 1 0 $X=655550 $Y=1330910
X1874 52 1099 17 16 1092 an02d1 $T=678240 1359200 0 0 $X=677950 $Y=1358980
X1875 49 966 16 17 969 dfnrn1 $T=597040 1292000 0 0 $X=596750 $Y=1291780
X1876 49 970 16 17 978 dfnrn1 $T=599280 1359200 0 0 $X=598990 $Y=1358980
X1877 49 950 16 17 46 dfnrq1 $T=580240 1348000 0 180 $X=569310 $Y=1342110
X1878 49 949 16 17 45 dfnrq1 $T=580800 1325600 1 180 $X=569870 $Y=1325380
X1879 49 945 16 17 47 dfnrq1 $T=585280 1314400 0 180 $X=574350 $Y=1308510
X1880 49 982 16 17 957 dfnrq1 $T=608800 1359200 0 180 $X=597870 $Y=1353310
X1881 49 989 16 17 956 dfnrq1 $T=612160 1348000 0 180 $X=601230 $Y=1342110
X1882 49 993 16 17 54 dfnrq1 $T=613840 1325600 0 180 $X=602910 $Y=1319710
X1883 49 992 16 17 972 dfnrq1 $T=622800 1314400 0 180 $X=611870 $Y=1308510
X1884 49 1024 16 17 1003 dfnrq1 $T=639600 1314400 1 180 $X=628670 $Y=1314180
X1885 49 1028 16 17 998 dfnrq1 $T=642400 1325600 1 180 $X=631470 $Y=1325380
X1886 49 1035 16 17 67 dfnrq1 $T=641280 1269600 1 0 $X=640990 $Y=1263710
X1887 49 1055 16 17 1056 dfnrq1 $T=653040 1303200 1 0 $X=652750 $Y=1297310
X1888 49 1074 16 17 1040 dfnrq1 $T=664800 1314400 0 180 $X=653870 $Y=1308510
X1889 49 1057 16 17 1059 dfnrq1 $T=654720 1325600 1 0 $X=654430 $Y=1319710
X1890 49 1083 16 17 1500 dfnrq1 $T=666480 1303200 0 0 $X=666190 $Y=1302980
X1891 49 1084 16 17 1088 dfnrq1 $T=667040 1325600 1 0 $X=666750 $Y=1319710
X1892 49 1085 16 17 74 dfnrq1 $T=667600 1258400 0 0 $X=667310 $Y=1258180
X1893 49 1086 16 17 75 dfnrq1 $T=668160 1224800 0 0 $X=667870 $Y=1224580
X1894 49 1107 16 17 78 dfnrq1 $T=686080 1370400 0 0 $X=685790 $Y=1370180
X1895 49 1108 16 17 1117 dfnrq1 $T=687200 1303200 0 0 $X=686910 $Y=1302980
X1896 49 1110 16 17 1112 dfnrq1 $T=688320 1348000 0 0 $X=688030 $Y=1347780
X1897 49 1111 16 17 1113 dfnrq1 $T=688320 1359200 0 0 $X=688030 $Y=1358980
X1898 984 16 987 983 17 nd02d1 $T=618880 1348000 1 180 $X=616350 $Y=1347780
X1899 66 16 1053 1033 17 nd02d1 $T=646880 1359200 0 0 $X=646590 $Y=1358980
X1900 66 16 68 1043 17 nd02d1 $T=651360 1370400 1 0 $X=651070 $Y=1364510
X1901 1043 16 70 1045 17 nd02d1 $T=664240 1359200 0 180 $X=661710 $Y=1353310
X1902 1069 16 1063 1064 17 nd02d1 $T=670400 1336800 1 180 $X=667870 $Y=1336580
X1903 991 16 1001 984 17 nd12d1 $T=620560 1359200 1 0 $X=620270 $Y=1353310
X1904 996 16 984 1007 17 nd12d1 $T=625040 1336800 1 0 $X=624750 $Y=1330910
X1905 60 16 1053 1021 17 nd12d1 $T=639600 1370400 1 0 $X=639310 $Y=1364510
X1906 59 16 1053 1034 17 nd12d1 $T=647440 1359200 1 0 $X=647150 $Y=1353310
X1907 1077 16 1073 1069 17 nd12d1 $T=672640 1359200 0 180 $X=669550 $Y=1353310
X1908 49 997 999 17 16 1000 dfnrb1 $T=614960 1280800 0 0 $X=614670 $Y=1280580
X1909 48 948 943 16 17 nr02d1 $T=579120 1336800 0 180 $X=576590 $Y=1330910
X1910 48 951 945 16 17 nr02d1 $T=581360 1303200 1 180 $X=578830 $Y=1302980
X1911 48 952 949 16 17 nr02d1 $T=585840 1325600 0 0 $X=585550 $Y=1325380
X1912 48 986 979 16 17 nr02d1 $T=615520 1325600 1 180 $X=612990 $Y=1325380
X1913 48 1002 985 16 17 nr02d1 $T=621680 1292000 1 180 $X=619150 $Y=1291780
X1914 48 991 992 16 17 nr02d1 $T=619440 1314400 0 0 $X=619150 $Y=1314180
X1915 61 59 1001 16 17 nr02d1 $T=627280 1359200 1 0 $X=626990 $Y=1353310
X1916 63 60 1009 16 17 nr02d1 $T=635120 1370400 0 180 $X=632590 $Y=1364510
X1917 63 59 65 16 17 nr02d1 $T=643520 1370400 0 0 $X=643230 $Y=1370180
X1918 48 1041 1023 16 17 nr02d1 $T=647440 1280800 0 180 $X=644910 $Y=1274910
X1919 48 1025 1031 16 17 nr02d1 $T=648000 1303200 0 180 $X=645470 $Y=1297310
X1920 48 1058 1046 16 17 nr02d1 $T=656960 1325600 1 180 $X=654430 $Y=1325380
X1921 48 1094 1072 16 17 nr02d1 $T=672080 1236000 0 0 $X=671790 $Y=1235780
X1922 48 1095 1070 16 17 nr02d1 $T=672080 1269600 0 0 $X=671790 $Y=1269380
X1923 48 1098 1093 16 17 nr02d1 $T=678800 1336800 0 0 $X=678510 $Y=1336580
X1924 48 1106 1100 16 17 nr02d1 $T=685520 1348000 1 0 $X=685230 $Y=1342110
X1925 48 1114 1103 16 17 nr02d1 $T=690000 1303200 1 0 $X=689710 $Y=1297310
X2248 1117 16 17 1118 buffd1 $T=992400 1292000 1 0 $X=992110 $Y=1286110
X2249 1112 16 17 80 buffd1 $T=992400 1348000 0 0 $X=992110 $Y=1347780
X2250 1113 16 17 81 buffd1 $T=1096000 1359200 0 0 $X=1095710 $Y=1358980
X2304 1056 64 16 17 buffd3 $T=664240 1292000 0 0 $X=663950 $Y=1291780
X2305 1059 97 16 17 buffd3 $T=942560 1325600 0 0 $X=942270 $Y=1325380
X2320 50 947 955 1491 17 51 16 aoi22d1 $T=591440 1325600 1 0 $X=591150 $Y=1319710
X2321 50 944 953 1492 17 51 16 aoi22d1 $T=592000 1336800 1 0 $X=591710 $Y=1330910
X2322 50 946 963 1493 17 51 16 aoi22d1 $T=599840 1303200 0 0 $X=599550 $Y=1302980
X2323 50 975 995 1494 17 51 16 aoi22d1 $T=618880 1336800 1 0 $X=618590 $Y=1330910
X2324 50 1042 1059 1027 17 51 16 aoi22d1 $T=648560 1325600 1 180 $X=644910 $Y=1325380
X2325 50 1022 64 1026 17 51 16 aoi22d1 $T=649120 1303200 1 180 $X=645470 $Y=1302980
X2326 50 1029 67 1048 17 51 16 aoi22d1 $T=646880 1280800 0 0 $X=646590 $Y=1280580
X2327 50 1081 75 1499 17 51 16 aoi22d1 $T=675440 1247200 0 180 $X=671790 $Y=1241310
X2328 50 1082 74 1066 17 51 16 aoi22d1 $T=675440 1280800 0 180 $X=671790 $Y=1274910
X2329 50 1104 1113 1501 17 51 16 aoi22d1 $T=686080 1325600 0 0 $X=685790 $Y=1325380
X2330 50 1115 1117 1109 17 51 16 aoi22d1 $T=694480 1280800 0 0 $X=694190 $Y=1280580
X2331 50 1101 1112 1502 17 51 16 aoi22d1 $T=695040 1336800 1 0 $X=694750 $Y=1330910
X2332 967 964 955 1491 16 17 968 ad01d1 $T=596480 1325600 0 0 $X=596190 $Y=1325380
X2333 962 968 953 1492 16 17 976 ad01d1 $T=601520 1336800 0 0 $X=601230 $Y=1336580
X2334 1005 976 995 1494 16 17 1006 ad01d1 $T=621120 1325600 0 0 $X=620830 $Y=1325380
X2335 1014 1006 64 1026 16 17 1016 ad01d1 $T=626720 1303200 0 0 $X=626430 $Y=1302980
X2336 1004 1496 1007 1011 16 17 1018 ad01d1 $T=628400 1348000 1 0 $X=628110 $Y=1342110
X2337 1021 1497 65 1496 16 17 1008 ad01d1 $T=644080 1359200 0 180 $X=633150 $Y=1353310
X2338 1008 1018 1498 1037 16 17 1036 ad01d1 $T=640160 1336800 0 0 $X=639870 $Y=1336580
X2339 1034 1044 1019 1498 16 17 1038 ad01d1 $T=641280 1348000 0 0 $X=640990 $Y=1347780
X2340 79 1089 1059 1027 16 17 62 ad01d1 $T=652480 1314400 1 180 $X=641550 $Y=1314180
X2341 1040 1016 67 1048 16 17 1054 ad01d1 $T=649120 1292000 0 0 $X=648830 $Y=1291780
X2342 1050 1036 1038 1061 16 17 1063 ad01d1 $T=654160 1348000 1 0 $X=653870 $Y=1342110
X2343 1033 1045 96 1050 16 17 1068 ad01d1 $T=654720 1370400 1 0 $X=654430 $Y=1364510
X2344 1500 1054 74 1066 16 17 1062 ad01d1 $T=677680 1292000 0 180 $X=666750 $Y=1286110
X2345 79 1062 75 1499 16 17 1090 ad01d1 $T=668720 1258400 1 0 $X=668430 $Y=1252510
X2346 79 1102 1113 1501 16 17 1089 ad01d1 $T=693360 1325600 0 180 $X=682430 $Y=1319710
X2347 79 1090 1117 1109 16 17 1116 ad01d1 $T=691120 1292000 0 0 $X=690830 $Y=1291780
X2348 79 1116 1112 1502 16 17 1102 ad01d1 $T=701760 1314400 1 180 $X=690830 $Y=1314180
X2368 1088 79 16 17 dl04d2 $T=676560 1314400 0 0 $X=676270 $Y=1314180
X2369 60 57 16 17 990 or02d1 $T=622800 1359200 1 180 $X=619710 $Y=1358980
X2370 1068 1053 16 17 1073 or02d1 $T=670400 1359200 0 0 $X=670110 $Y=1358980
X2371 52 984 58 16 17 973 an03d1 $T=616640 1359200 1 180 $X=612990 $Y=1358980
X2372 1068 73 1053 16 17 1077 an03d1 $T=669280 1370400 1 0 $X=668990 $Y=1364510
X2373 987 984 17 983 980 48 16 oan211d1 $T=618880 1336800 1 180 $X=615230 $Y=1336580
X2374 1063 1069 17 1064 1087 48 16 oan211d1 $T=668720 1325600 0 0 $X=668430 $Y=1325380
X2394 974 963 1493 16 17 964 ah01d1 $T=598160 1314400 1 0 $X=597870 $Y=1308510
X2395 1001 1495 987 16 17 996 ah01d1 $T=627840 1348000 1 180 $X=621390 $Y=1347780
X2396 1009 98 1495 16 17 1004 ah01d1 $T=636240 1348000 1 180 $X=629790 $Y=1347780
X2397 94 95 1497 16 17 1019 ah01d1 $T=632880 1370400 0 0 $X=632590 $Y=1370180
.ENDS
***************************************
.SUBCKT M3_M2_LD_CDNS_7822207103943
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103921
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_LD_CDNS_7822207103936
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_90
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_91
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_92
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_93
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_94
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_95
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_96
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_97
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_98
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_99
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_100
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_101
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_102
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_103
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_104
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_105 16 19 38 39 57 58 60 61 62 63 64 65 66 84 85
** N=6202 EP=15 IP=4518 FDC=513
M0 16 1320 1317 16 N L=1.8e-07 W=1e-06 $X=652550 $Y=1125020 $D=26
M1 1319 1321 16 16 N L=1.8627e-07 W=1.30456e-06 $X=653170 $Y=1125290 $D=26
M2 1320 1322 1319 16 N L=1.8e-07 W=1.23e-06 $X=653910 $Y=1124790 $D=26
M3 1321 1326 1320 16 N L=1.8e-07 W=1.23e-06 $X=654650 $Y=1124790 $D=26
M4 16 1316 1321 16 N L=1.8e-07 W=7.2e-07 $X=655390 $Y=1124790 $D=26
M5 16 1326 1322 16 N L=1.8e-07 W=5.4e-07 $X=656930 $Y=1125360 $D=26
M6 1325 1327 16 16 N L=1.8e-07 W=7.5e-07 $X=657670 $Y=1125150 $D=26
M7 1326 1328 1325 16 N L=1.8e-07 W=7.5e-07 $X=658410 $Y=1125150 $D=26
M8 1327 1330 1326 16 N L=1.8e-07 W=7.5e-07 $X=659150 $Y=1125150 $D=26
M9 16 65 1327 16 N L=1.8e-07 W=7.5e-07 $X=659890 $Y=1125150 $D=26
M10 1330 1328 16 16 N L=1.8e-07 W=7.5e-07 $X=660630 $Y=1125150 $D=26
M11 19 1320 1317 19 P L=1.84538e-07 W=1.50213e-06 $X=652550 $Y=1127840 $D=38
M12 1319 1321 19 19 P L=1.84254e-07 W=1.60213e-06 $X=653260 $Y=1127270 $D=38
M13 1320 1326 1319 19 P L=1.8e-07 W=1.54e-06 $X=654000 $Y=1127270 $D=38
M14 1321 1322 1320 19 P L=1.8e-07 W=1.54e-06 $X=654740 $Y=1127270 $D=38
M15 19 1316 1321 19 P L=1.84797e-07 W=1.61042e-06 $X=655310 $Y=1127950 $D=38
M16 19 1326 1322 19 P L=1.8e-07 W=6.4e-07 $X=656750 $Y=1127200 $D=38
M17 1325 1327 19 19 P L=1.8e-07 W=9.8e-07 $X=657550 $Y=1127200 $D=38
M18 1326 1330 1325 19 P L=1.8e-07 W=9.8e-07 $X=658290 $Y=1127200 $D=38
M19 1327 1328 1326 19 P L=1.8e-07 W=9.8e-07 $X=659030 $Y=1127200 $D=38
M20 19 65 1327 19 P L=1.86541e-07 W=1.04213e-06 $X=659630 $Y=1127740 $D=38
M21 1330 1328 19 19 P L=1.8e-07 W=9.8e-07 $X=660450 $Y=1127200 $D=38
X168 38 16 39 pvda $T=1969920 1025380 0 90 $X=1719600 $Y=1024510
X169 38 16 19 pv0i $T=1969920 909625 0 90 $X=1719860 $Y=908755
X170 38 16 19 pvdi $T=1969920 793870 0 90 $X=1719860 $Y=793000
X235 1297 16 19 1299 dl04d1 $T=602080 1090400 0 0 $X=601790 $Y=1090180
X236 1300 16 19 1301 dl04d1 $T=605440 1124000 1 0 $X=605150 $Y=1118110
X237 1302 16 19 1306 dl04d1 $T=613280 1112800 1 0 $X=612990 $Y=1106910
X238 1303 16 19 1307 dl04d1 $T=613280 1124000 0 0 $X=612990 $Y=1123780
X239 1304 16 19 1302 dl04d1 $T=618320 1101600 0 0 $X=618030 $Y=1101380
X240 1305 16 19 1303 dl04d1 $T=618320 1135200 1 0 $X=618030 $Y=1129310
X241 1311 16 19 1312 dl04d1 $T=634000 1090400 0 0 $X=633710 $Y=1090180
X242 1315 16 19 1314 dl04d1 $T=643520 1101600 1 0 $X=643230 $Y=1095710
X243 1313 16 19 1315 dl04d1 $T=643520 1101600 0 0 $X=643230 $Y=1101380
X244 1318 16 19 1329 dl04d1 $T=653600 1090400 0 0 $X=653310 $Y=1090180
X245 1323 16 19 1324 dl04d1 $T=657520 1101600 0 0 $X=657230 $Y=1101380
X246 1324 16 19 1331 dl04d1 $T=657520 1112800 1 0 $X=657230 $Y=1106910
X1744 60 1301 16 19 57 dfnrq1 $T=605440 1124000 0 180 $X=594510 $Y=1118110
X1745 60 1299 16 19 1298 dfnrq1 $T=599840 1101600 1 0 $X=599550 $Y=1095710
X1746 60 1312 16 19 1308 dfnrq1 $T=636800 1101600 0 180 $X=625870 $Y=1095710
X1747 60 1329 16 19 1328 dfnrq1 $T=651360 1101600 1 0 $X=651070 $Y=1095710
X1748 58 1306 1297 16 19 nr02d1 $T=611040 1112800 1 0 $X=610750 $Y=1106910
X1749 58 1307 1300 16 19 nr02d1 $T=611040 1124000 0 0 $X=610750 $Y=1123780
X1750 58 1314 1311 16 19 nr02d1 $T=641280 1101600 1 0 $X=640990 $Y=1095710
X1751 58 1331 1318 16 19 nr02d1 $T=655280 1112800 1 0 $X=654990 $Y=1106910
X1927 1298 16 19 61 buffd1 $T=604880 832800 1 180 $X=602350 $Y=832580
X1928 1308 16 19 64 buffd1 $T=626720 933600 0 0 $X=626430 $Y=933380
X1929 1328 16 19 66 buffd1 $T=660880 933600 0 0 $X=660590 $Y=933380
X1938 62 1305 57 1851 19 63 16 aoi22d1 $T=622240 1124000 0 0 $X=621950 $Y=1123780
X1939 62 1304 1298 1852 19 63 16 aoi22d1 $T=622800 1112800 1 0 $X=622510 $Y=1106910
X1940 62 1313 1308 1853 19 63 16 aoi22d1 $T=642960 1112800 1 180 $X=639310 $Y=1112580
X1941 62 1323 1328 1317 19 63 16 aoi22d1 $T=658080 1112800 1 180 $X=654430 $Y=1112580
X1942 65 85 57 1851 16 19 1309 ad01d1 $T=619440 1135200 0 0 $X=619150 $Y=1134980
X1943 65 1309 1298 1852 16 19 1310 ad01d1 $T=620000 1124000 1 0 $X=619710 $Y=1118110
X1944 65 1310 1308 1853 16 19 1316 ad01d1 $T=635120 1124000 1 0 $X=634830 $Y=1118110
X1955 84 58 16 19 dl04d2 $T=529840 1101600 1 0 $X=529550 $Y=1095710
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103938
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ML_M5_LD_CDNS_7822207103937
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_106
** N=2 EP=0 IP=6 FDC=0
.ENDS
***************************************
.SUBCKT ICV_107
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_108
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_109
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_110
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_111
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_112
** N=2 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_113 24 28 104 105 135 136 137 139 163 164 170 308
** N=18627 EP=12 IP=3477 FDC=228
X31 104 24 28 105 308 pc3o01 $T=1969920 330840 0 90 $X=1719600 $Y=329920
X32 104 24 28 105 4021 pc3o01 $T=1969920 446600 0 90 $X=1719600 $Y=445680
X33 104 24 28 105 4198 pc3o01 $T=1969920 562360 0 90 $X=1719600 $Y=561440
X34 104 24 28 105 4072 pc3o01 $T=1969920 678115 0 90 $X=1719600 $Y=677195
X193 137 24 28 139 dl04d1 $T=541600 597600 0 0 $X=541310 $Y=597380
X1479 136 24 28 135 buffd1 $T=482800 743200 0 180 $X=480270 $Y=737310
X1480 163 24 28 4021 buffd1 $T=957680 519200 1 0 $X=957390 $Y=513310
X1481 164 24 28 4072 buffd1 $T=984560 743200 0 0 $X=984270 $Y=742980
X1482 170 24 28 4198 buffd1 $T=1052320 698400 0 0 $X=1052030 $Y=698180
.ENDS
***************************************
.SUBCKT ICV_114 71 72 73 74 159 165 166 170
** N=16095 EP=8 IP=651 FDC=596
X117 72 71 73 74 159 pc3o01 $T=330840 30080 0 0 $X=329920 $Y=30080
X118 72 71 73 74 165 pc3o01 $T=446600 30080 0 0 $X=445680 $Y=30080
X119 72 71 73 74 166 pc3o01 $T=562360 30080 0 0 $X=561440 $Y=30080
X120 72 71 73 74 170 pc3o01 $T=678115 30080 0 0 $X=677195 $Y=30080
X121 72 71 73 74 6749 pc3o01 $T=1256890 30080 0 0 $X=1255970 $Y=30080
X122 72 71 73 74 6750 pc3o01 $T=1372645 30080 0 0 $X=1371725 $Y=30080
X123 72 71 73 74 6751 pc3o01 $T=1488400 30080 0 0 $X=1487480 $Y=30080
X124 72 71 73 74 6752 pc3o01 $T=1604160 30080 0 0 $X=1603240 $Y=30080
X129 72 71 74 pv0a $T=1141135 30080 0 0 $X=1140265 $Y=30080
X130 72 71 74 pvda $T=1025380 30080 0 0 $X=1024510 $Y=30080
X131 72 71 73 pv0i $T=909625 30080 0 0 $X=908755 $Y=30080
X132 72 71 73 pvdi $T=793870 30080 0 0 $X=793000 $Y=30080
.ENDS
***************************************
.SUBCKT char_l2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT char_l3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT C2S0233_S
** N=6 EP=0 IP=4 FDC=0
.ENDS
***************************************
.SUBCKT ICV_115 1 6 7 8 13
** N=5302 EP=5 IP=100 FDC=51
X18 6 1 7 8 13 pc3o01 $T=30080 1669160 0 270 $X=30080 $Y=1603240
.ENDS
***************************************
.SUBCKT ICV_116 1 11 12 13 14 34
** N=1977 EP=6 IP=106 FDC=102
X18 11 1 12 13 34 pc3o01 $T=30080 1437645 0 270 $X=30080 $Y=1371725
X19 11 1 12 13 14 pc3o01 $T=30080 1553400 0 270 $X=30080 $Y=1487480
.ENDS
***************************************
.SUBCKT ICV_117 1 15 16 17 42
** N=1844 EP=5 IP=111 FDC=98
X18 15 1 16 17 42 pc3o01 $T=30080 1321890 0 270 $X=30080 $Y=1255970
X21 15 1 17 pv0a $T=30080 1206135 0 270 $X=30080 $Y=1140265
.ENDS
***************************************
.SUBCKT ICV_118 1 28 29 30
** N=2852 EP=4 IP=184 FDC=141
X34 28 1 30 pvda $T=30080 1090380 0 270 $X=30080 $Y=1024510
X35 28 1 29 pv0i $T=30080 974625 0 270 $X=30080 $Y=908755
X36 28 1 29 pvdi $T=30080 858870 0 270 $X=30080 $Y=793000
.ENDS
***************************************
.SUBCKT subil_clkpngatering
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnclkbasebuff
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_119 1 9 35 36 77 104 105
** N=4516 EP=7 IP=184 FDC=156
X29 9 1 35 36 77 pc3d01 $T=30080 395840 0 270 $X=30080 $Y=329920
X30 9 1 35 36 104 pc3d01 $T=30080 627360 0 270 $X=30080 $Y=561440
X31 9 1 35 36 105 pc3d01 $T=30080 743115 0 270 $X=30080 $Y=677195
.ENDS
***************************************
.SUBCKT ICV_120
** N=5041 EP=0 IP=95 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1 2 3 4 5
** N=6 EP=4 IP=0 FDC=6
M0 4 3 2 2 NH L=3.6e-07 W=1e-05 $X=7660 $Y=43980 $D=22
M1 2 3 4 2 NH L=3.6e-07 W=1e-05 $X=8840 $Y=43980 $D=22
M2 5 4 2 2 N L=1.8e-07 W=1.39e-05 $X=6520 $Y=430 $D=26
M3 2 4 5 2 N L=1.8e-07 W=1.39e-05 $X=7700 $Y=430 $D=26
M4 5 4 2 2 N L=1.8e-07 W=1.39e-05 $X=8880 $Y=430 $D=26
M5 2 4 5 2 N L=1.8e-07 W=1.39e-05 $X=10060 $Y=430 $D=26
.ENDS
***************************************
.SUBCKT ICV_2
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_clkppbasebuff
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_3
** N=5 EP=0 IP=14 FDC=0
.ENDS
***************************************
.SUBCKT ICV_4
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_5
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT C2S0233 VDDO_CORE VDD_CORE VSSO_CORE VSS_CORE
** N=1471 EP=4 IP=3037 FDC=5277
M0 424 422 VDD_CORE VDD_CORE PH L=3.6e-07 W=2.35e-05 $X=201450 $Y=478330 $D=41
M1 VDD_CORE 422 424 VDD_CORE PH L=3.6e-07 W=2.35e-05 $X=201450 $Y=479510 $D=41
M2 423 424 VDD_CORE VDD_CORE P L=1.8e-07 W=3.234e-05 $X=238460 $Y=477240 $D=38
M3 VDD_CORE 424 423 VDD_CORE P L=1.8e-07 W=3.234e-05 $X=238460 $Y=478420 $D=38
M4 423 424 VDD_CORE VDD_CORE P L=1.8e-07 W=3.234e-05 $X=238460 $Y=479600 $D=38
M5 VDD_CORE 424 423 VDD_CORE P L=1.8e-07 W=3.234e-05 $X=238460 $Y=480780 $D=38
D6 VSS_CORE 422 DN AREA=4.624e-13 PJ=2.72e-06 $X=171650 $Y=497640 $D=94
X8 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 438 450 425 482 488 439 445 476 487 ICV_9 $T=0 0 0 0 $X=329920 $Y=1603240
X9 VSS_CORE VDD_CORE VSSO_CORE VDDO_CORE 438 439 508 509 507 423 445 512 511 514 513 515 516 281 521 713
+ 518 519 520 450 522 524 525 476 482 487 510 517 263 282 523
+ ICV_58 $T=0 0 0 0 $X=331900 $Y=1371725
X10 VSS_CORE VDD_CORE VSSO_CORE VDDO_CORE 727 676 726 548 423 547 545 508 543 674 509 510 511 260 512 261
+ 513 544 713 546 262 517 549 263 518 520 281 522 521 551 550 523 282 264 902 524
+ 525 488 507 516 515 519 425 514
+ ICV_89 $T=0 0 0 0 $X=331900 $Y=1140265
X11 VSS_CORE VDD_CORE VSSO_CORE VDDO_CORE 572 548 423 573 547 545 574 902 575 738 544 ICV_105 $T=0 0 0 0 $X=331900 $Y=782110
X12 VSS_CORE VDD_CORE VSSO_CORE VDDO_CORE 614 572 772 543 549 550 551 546 ICV_113 $T=0 0 0 0 $X=331900 $Y=329920
X13 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 614 573 574 575 ICV_114 $T=0 0 0 0 $X=329920 $Y=0
X14 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 674 ICV_115 $T=0 0 0 0 $X=0 $Y=1603240
X15 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 676 727 ICV_116 $T=0 0 0 0 $X=0 $Y=1371725
X16 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 726 ICV_117 $T=0 0 0 0 $X=0 $Y=1140265
X17 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE ICV_118 $T=0 0 0 0 $X=0 $Y=782685
X18 VSS_CORE VSSO_CORE VDD_CORE VDDO_CORE 422 772 738 ICV_119 $T=0 0 0 0 $X=0 $Y=329920
X20 VSS_CORE 422 424 423 ICV_1 $T=131480 487480 0 270 $X=125330 $Y=456580
.ENDS
***************************************
