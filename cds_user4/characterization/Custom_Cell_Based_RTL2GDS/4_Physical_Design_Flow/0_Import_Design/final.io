(globals
   version = 3
   io_order=default
)
(iopad
 (top
	(inst name = "pvdi_VDD_1" place_status=fixed)     
	(inst name = "pv0i_VSS_1" place_status=fixed)
	(inst name = "pc3d01_2" place_status=fixed)
	(inst name = "pvda_VDDO_1" place_status=fixed)
	(inst name = "pv0a_VSSO_1" place_status=fixed)
	(inst name = "pc3o01_dummy1" place_status=fixed)

  )
 (left    
	(inst name = "pvda_VDDO_2" place_status=fixed)
	(inst name = "pv0a_VSSO_2" place_status=fixed)
	(inst name = "pc3o01_dummy2" place_status=fixed)
	(inst name = "pc3d01_1" place_status=fixed)
	(inst name = "pc3o01_dummy3" place_status=fixed)
	(inst name = "pc3o01_dummy4" place_status=fixed)
  )
 (right 
	(inst name = "pc3o01_1" place_status=fixed)
	(inst name = "pc3o01_2" place_status=fixed) 
	(inst name = "pc3o01_3" place_status=fixed) 
	(inst name = "pc3o01_4" place_status=fixed) 
	(inst name = "pc3o01_5" place_status=fixed) 
	(inst name = "pc3o01_6" place_status=fixed) 
     
  )
 (bottom
	(inst name = "pvdi_VDD_2" place_status=fixed)     
	(inst name = "pv0i_VSS_2" place_status=fixed)
	(inst name = "pc3c01_clk_buffer" place_status=fixed)
	(inst name = "pc3d01_0" place_status=fixed)
     	(inst name = "pc3o01_7" place_status=fixed) 
	(inst name = "pc3o01_8" place_status=fixed) 

  )

(topright 
      (inst name="corner_1"
       cell=pfrelr
       place_status=fixed
       orientation=R90
       )
 )
 (topleft
      (inst name="corner_3"
       cell=pfrelr
       place_status=fixed
       orientation=R180
       ) 
 )
 (bottomleft
      (inst name="corner_2"
       cell=pfrelr
       place_status=fixed
       orientation=R270
       )
 )
 (bottomright
      (inst name="corner_4"
       cell=pfrelr
       place_status=fixed
       orientation=R0
       )
 )

)

