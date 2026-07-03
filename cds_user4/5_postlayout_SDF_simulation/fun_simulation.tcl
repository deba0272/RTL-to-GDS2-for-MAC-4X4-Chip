-gui
../testbench/tb_sliding_4x4_post_layout_SDF_simulation.v
-v ../4_Physical_Design_Flow3_6M1L_16/5_Routing/Routing/mac_4x4_wrapper_chip_postRoute_withoutPG.v
-v /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/verilog/vcs_sim_model/tsl18fs120_scl.v
-v /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3c01.v 
-v /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3d01.v 
-v /tools/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3o01.v
-relax
-timescale 1ns/1ps
+sdf_verbose 
+maxdelays
-mess
-access +rwc
