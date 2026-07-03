-------------------------------------WILDCARD BINS--------------------------------------------------


module ei_sample;
  
reg [0:3] y;
reg [0:3] values[$]= '{ 4'b1100,4'b1101,4'b1110,4'b1111};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
wildcard bins g12_15 = { 4'b11?? } ;
}

endgroup

cg cg_inst = new();
initial
foreach(values[i])
begin
y = values[i];
cg_inst.sample();
end

endmodule

------------------------------------------------------------------------------------------------
(0,1=>2,3)


--------------------------------------------IGNORE BINS-----------------------------------------

module ei_sample;
 
bit [0:2] y;
bit [0:2] values[$]= '{1,6,3,7,3,4,3,5};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
ignore_bins ig = {1,2,3,4,5};
}

endgroup

cg cg_inst = new();
initial
foreach(values[i])
begin
y = values[i];
cg_inst.sample();
end

endmodule
---------------------------------------------------ILLEGAL BINS------------------------------------------------------
module ei_sample;
 
bit [0:2] y;
bit [0:2] values[$]= '{1,6,3,7,3,4,3,5};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
illegal_bins ig = {1,2,3,4,5};
}

endgroup

cg cg_inst = new();
initial
foreach(values[i])
begin
y = values[i];
cg_inst.sample();
end

endmodule