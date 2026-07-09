* SPICE NETLIST
***************************************

.SUBCKT pfeed30000
** N=5 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT subil_nwellres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 4891.48 L=8.65e-06 W=2.1e-06 $[RW] $X=2060 $Y=720 $D=79
.ENDS
***************************************
.SUBCKT subil_pngatering_440
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pngatebuffsing_503 2 3 4
** N=5 EP=3 IP=0 FDC=1
M0 2 3 4 2 NH L=5e-07 W=3e-05 $X=26020 $Y=5150 $D=22
.ENDS
***************************************
.SUBCKT subil_pngate2buffsing 2 3 4
** N=5 EP=3 IP=10 FDC=2
X0 2 3 4 subil_pngatebuffsing_503 $T=0 6220 1 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngatebuffsing_503 $T=0 2640 0 0 $X=16000 $Y=1080
.ENDS
***************************************
.SUBCKT ICV_2 2 3 4
** N=5 EP=3 IP=10 FDC=4
X0 2 3 4 subil_pngate2buffsing $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 2 3 4 subil_pngate2buffsing $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT subil_ppolyres 1 2
** N=3 EP=2 IP=0 FDC=1
R0 2 1 302.279 L=2.5e-06 W=4e-06 $[RE] $X=140 $Y=5120 $D=70
.ENDS
***************************************
.SUBCKT asubil_pdiodepower
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_dio2
** N=2 EP=0 IP=6 FDC=0
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
.SUBCKT subil_ppbuff3d00_ESD 1 2 3
** N=4 EP=3 IP=16 FDC=12
M0 3 1 2 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=-460 $D=41
M1 2 1 3 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=4580 $D=41
M2 3 1 2 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=35840 $D=41
M3 2 1 3 2 PH L=4e-07 W=5.2e-05 $X=10500 $Y=40880 $D=41
X4 2 1 3 subil_ppgate2buff $T=-1070 8290 0 0 $X=3680 $Y=3740
X5 2 1 3 subil_ppgate2buff $T=-1070 15550 0 0 $X=3680 $Y=11000
X6 2 1 3 subil_ppgate2buff $T=-1070 22810 0 0 $X=3680 $Y=18260
X7 2 1 3 subil_ppgate2buff $T=-1070 30070 0 0 $X=3680 $Y=25520
.ENDS
***************************************
.SUBCKT subil_preside
** N=4 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_pnesd3d00
** N=3 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M2_M1_CDNS_782371441770
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M3_M2_CDNS_782371441771
** N=2 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT subil_ppdrive3d00_ESD 2 4 5
** N=9 EP=3 IP=22 FDC=1
M0 2 4 5 2 NH L=4e-07 W=3e-05 $X=31540 $Y=92610 $D=22
.ENDS
***************************************
.SUBCKT pc3d00 VSSO VSS VDDO
** N=10 EP=3 IP=50 FDC=44
*.CALIBRE ISOLATED NETS: VDD
D0 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=4765 $Y=140450 $D=99
D1 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=7565 $Y=140450 $D=99
D2 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=10365 $Y=140450 $D=99
D3 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=13165 $Y=140450 $D=99
D4 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=15965 $Y=140450 $D=99
D5 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=18765 $Y=140450 $D=99
D6 VSS VSSO P3 AREA=1.331e-11 PJ=2.862e-05 $X=21565 $Y=140450 $D=99
D7 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=29765 $Y=140450 $D=99
D8 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=32565 $Y=140450 $D=99
D9 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=35365 $Y=140450 $D=99
D10 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=38165 $Y=140450 $D=99
D11 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=40965 $Y=140450 $D=99
D12 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=43765 $Y=140450 $D=99
D13 VSSO VSS P3 AREA=1.331e-11 PJ=2.862e-05 $X=46565 $Y=140450 $D=99
R14 VSS 8 1190.92 L=2.1e-06 W=2.1e-06 $[RW] $X=52650 $Y=141995 $D=79
X15 10 VSSO subil_nwellres $T=59235 139640 0 90 $X=56235 $Y=140800
X16 7 VDDO subil_nwellres $T=63600 139690 0 90 $X=60600 $Y=140850
X19 VSSO 10 PAD ICV_2 $T=13400 151690 1 270 $X=2470 $Y=87580
X20 VSSO 10 PAD ICV_2 $T=32280 151690 1 270 $X=21350 $Y=87580
X21 VSSO 10 PAD ICV_2 $T=51160 151690 1 270 $X=40230 $Y=87580
X22 9 PADR subil_ppolyres $T=18015 135660 0 270 $X=21585 $Y=131300
X23 PAD 9 subil_ppolyres $T=34830 135670 0 270 $X=38400 $Y=131310
X26 7 VDDO PAD subil_ppbuff3d00_ESD $T=-4000 203800 0 0 $X=-350 $Y=196990
X27 VSS 8 PADR subil_ppdrive3d00_ESD $T=-15160 89730 0 0 $X=-920 $Y=92510
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
.SUBCKT ICV_3
** N=5 EP=0 IP=10 FDC=0
.ENDS
***************************************
.SUBCKT subil_presistorpower 1 2
** N=3 EP=2 IP=0 FDC=1
R0 1 2 8253.06 L=1.46e-05 W=2.1e-06 $[RW] $X=-20 $Y=10560 $D=79
.ENDS
***************************************
.SUBCKT subil_pngatering22
** N=4 EP=0 IP=0 FDC=0
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
.SUBCKT ICV_4 2 3 4
** N=4 EP=3 IP=8 FDC=4
X0 2 3 4 subil_pngate2buff_ESD22 $T=0 -9440 0 0 $X=16000 $Y=-11510
X1 2 3 4 subil_pngate2buff_ESD22 $T=0 0 0 0 $X=16000 $Y=-2070
.ENDS
***************************************
.SUBCKT ICV_5 2 3 4
** N=5 EP=3 IP=10 FDC=4
X0 2 3 4 subil_pngate2buff_ESD122 $T=0 0 0 0 $X=16000 $Y=-2070
X1 2 3 4 subil_pngate2buff_ESD122 $T=0 9440 0 0 $X=16000 $Y=7370
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
.SUBCKT subil_pv0icon_ESD
** N=5 EP=0 IP=12 FDC=0
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
.SUBCKT subil_pvdicon_ESD
** N=5 EP=0 IP=0 FDC=0
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
.SUBCKT subil_pngatering
** N=4 EP=0 IP=0 FDC=0
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
.SUBCKT ICV_6 1 2 3
** N=4 EP=3 IP=8 FDC=4
X0 1 2 3 subil_pngate2buff_ESD1 $T=0 0 0 0 $X=16000 $Y=-2070
X1 1 2 3 subil_pngate2buff_ESD1 $T=0 9440 0 0 $X=16000 $Y=7370
.ENDS
***************************************
.SUBCKT subil_pvdacon_ESD
** N=4 EP=0 IP=0 FDC=0
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
.SUBCKT subil_pv0acon_ESD
** N=4 EP=0 IP=12 FDC=0
.ENDS
***************************************
.SUBCKT pv0a VSSO VSS VDDO
** N=8 EP=3 IP=59 FDC=47
*.CALIBRE ISOLATED NETS: VDD
X1 VDDO 5 subil_presistorpower $T=3010 196210 0 0 $X=2810 $Y=205700
X2 5 7 subil_presistorpower $T=3010 216270 0 0 $X=2810 $Y=225760
X3 6 8 subil_presistorpower $T=60150 196210 0 0 $X=59950 $Y=205700
X4 8 VSSO subil_presistorpower $T=60150 216270 0 0 $X=59950 $Y=225760
X6 VDDO 6 VSS VSSO subil_powerbase_1 $T=-8490 129540 0 0 $X=-325 $Y=129540
X9 VDDO 7 VSSO subil_ppbuffpower $T=3500 203800 0 0 $X=-370 $Y=196810
X10 VDDO VSSO 6 subil_pngate2buff_ESD $T=13340 151690 1 270 $X=2410 $Y=87580
X11 VDDO VSSO 6 subil_pngate2buff_ESD $T=60540 151690 1 270 $X=49610 $Y=87580
X12 VDDO VSSO 6 ICV_7 $T=22780 151690 1 270 $X=11850 $Y=87580
X13 VDDO VSSO 6 ICV_7 $T=41660 151690 1 270 $X=30730 $Y=87580
.ENDS
***************************************
.SUBCKT invpad1 VSSO VSS
** N=17 EP=2 IP=297 FDC=276
X16 VSSO VSS 1 pc3d00 $T=-28065 411435 0 270 $X=-28065 $Y=345515
X17 VSSO VSS 1 pc3d00 $T=871935 346435 0 90 $X=621615 $Y=345515
X29 2 5 subil_presistorpower $T=469945 172645 0 0 $X=469745 $Y=182135
X30 5 7 subil_presistorpower $T=469945 192705 0 0 $X=469745 $Y=202195
X31 6 8 subil_presistorpower $T=527085 172645 0 0 $X=526885 $Y=182135
X32 8 VSS subil_presistorpower $T=527085 192705 0 0 $X=526885 $Y=202195
X37 VSS 6 2 subil_pngate2buff_ESD22 $T=480275 128125 1 270 $X=469345 $Y=64015
X38 VSS 6 2 subil_pngate2buff_ESD22 $T=527475 128125 1 270 $X=516545 $Y=64015
X39 VSSO 11 2 subil_pngate2buff_ESD122 $T=471395 629745 1 90 $X=469325 $Y=645745
X40 VSSO 11 2 subil_pngate2buff_ESD122 $T=518595 629745 1 90 $X=516525 $Y=645745
X41 VSS 6 2 ICV_4 $T=489715 128125 1 270 $X=478785 $Y=64015
X42 VSS 6 2 ICV_4 $T=508595 128125 1 270 $X=497665 $Y=64015
X43 VSSO 11 2 ICV_5 $T=480835 629745 1 90 $X=478765 $Y=645745
X44 VSSO 11 2 ICV_5 $T=499715 629745 1 90 $X=497645 $Y=645745
X49 12 13 1 VSSO subil_powerbasecon_ESD $T=373605 575555 0 180 $X=312395 $Y=536495
X50 11 14 2 VSS subil_powerbasecon_ESD $T=528605 575555 0 180 $X=467395 $Y=536495
X52 2 VSS 7 subil_ppbuffpower_0di_ESD22 $T=470435 180235 0 0 $X=466875 $Y=173245
X53 2 VSS 14 subil_ppbuffpower_0di_ESD22 $T=528435 577635 0 180 $X=466875 $Y=531375
X54 1 12 VSS VSSO subil_powerbase_1 $T=385425 651895 0 180 $X=311615 $Y=582135
X55 2 6 VSS VSSO subil_powerbase_1 $T=458445 105975 0 0 $X=466610 $Y=105975
X56 2 11 VSS VSSO subil_powerbase_1 $T=540425 651895 0 180 $X=466615 $Y=582135
X59 1 VSSO 12 subil_pngate2buff_ESD1 $T=316395 629745 1 90 $X=314325 $Y=645745
X60 1 VSSO 12 subil_pngate2buff_ESD1 $T=363595 629745 1 90 $X=361525 $Y=645745
X61 1 VSSO 12 ICV_6 $T=325835 629745 1 90 $X=323765 $Y=645745
X62 1 VSSO 12 ICV_6 $T=344715 629745 1 90 $X=342645 $Y=645745
X64 1 13 VSSO subil_ppbuffpower $T=373435 577635 0 180 $X=311565 $Y=531115
X65 VSSO VSS 1 pv0a $T=311935 -23565 0 0 $X=311065 $Y=-23565
.ENDS
***************************************
