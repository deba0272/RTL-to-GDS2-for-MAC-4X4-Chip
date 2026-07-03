
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_18 
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_hv
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" diodes
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" res2t_typ
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" acc_typ

.include "./mac_4x4_wrapper_chip.pex.netlist"

X_CC VSSO_CORE VSS_CORE VDD_CORE VDDO_CORE \
 mac_out\[0\] mac_out\[1\] mac_out\[2\] mac_out\[3\] mac_out\[12\] \
 mac_out\[13\] mac_out\[14\] mac_out\[15\] mac_out\[4\] mac_out\[5\] \
 mac_out\[6\] mac_out\[7\] mac_out\[8\] mac_out\[9\] mac_out\[10\] \
 mac_out\[11\] clk enable rst a0 a1 a2 a3 b0 b1 b2 \
 b3  mac_4x4_wrapper_chip


*C115 mac_out\[15\] VSS_CORE 0.01P ic=0
*C114 mac_out\[14\] VSS_CORE 0.01P ic=0
*C113 mac_out\[13\] VSS_CORE 0.01P ic=0
*C112 mac_out\[12\] VSS_CORE 0.01P ic=0
*C111 mac_out\[11\] VSS_CORE 0.01P ic=0
*C110 mac_out\[10\] VSS_CORE 0.01P ic=0
*C19 mac_out\[9\] VSS_CORE 0.01P ic=0
*C18 mac_out\[8\] VSS_CORE 0.01P ic=0

*C10 mac_out\[7\] VSS_CORE 0.01P ic=0
*C11 mac_out\[6\] VSS_CORE 0.01P ic=0
*C12 mac_out\[5\] VSS_CORE 0.01P ic=0
*C13 mac_out\[4\] VSS_CORE 0.01P ic=0
*C14 mac_out\[3\] VSS_CORE 0.01P ic=0
*C15 mac_out\[2\] VSS_CORE 0.01P ic=0
*C16 mac_out\[1\] VSS_CORE 0.01P ic=0
*C17 mac_out\[0\] VSS_CORE 0.01P ic=0

Vvdd VDD_CORE 0 1.8
Vvddo VDDO_CORE 0 1.8
Vvss VSS_CORE 0 0
Vvsso VSSO_CORE 0 0

.tran 500p 4us errpreset=liberal method=trap

.probe v(*)

simulator lang=spectre

vcd_include "./macchip_chip.vcd" \ 
"./vcd.info"



