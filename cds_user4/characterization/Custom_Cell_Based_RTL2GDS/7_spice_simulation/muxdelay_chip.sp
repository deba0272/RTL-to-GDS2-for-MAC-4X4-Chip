
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_18 
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" tt_hv
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" diodes
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" res2t_typ
.lib "/tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/pdk/cdns/sclpdk_v3/HOTCODE/models/ts18scl/default/hspice/ts18sl_scl.lib" acc_typ

.include "muxdelay.pex.netlist"

X_CC VSS_CORE VDD_CORE C clk rst Y B S A muxdelay

C110 Y VSS_CORE 0.01P ic=1.8

C111 A VSS_CORE 0.01P ic=0
C211 B VSS_CORE 0.01P ic=0
C311 C VSS_CORE 0.01P ic=0
C411 S VSS_CORE 0.01P ic=0

C511 clk VSS_CORE 0.01P ic=0
C611 rst VSS_CORE 0.01P ic=1.8

Vvdd VDD_CORE 0 1.8
*Vvddo VDDO_CORE 0 1.8
Vvss VSS_CORE 0 0
*Vvsso VSSO_CORE 0 0

*.tran 5p 660n errpreset=liberal method=trap
.tran 5p 660n 
*errpreset=liberal 
.probe v(*) v(Y)

simulator lang=spectre

vcd_include "muxdelay_chip.vcd" \ 
"./vcd.info"



