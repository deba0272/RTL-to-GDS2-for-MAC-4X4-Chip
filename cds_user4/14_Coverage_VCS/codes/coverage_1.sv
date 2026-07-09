--------------------------------------------------Implicit bins  1 -----------------------------------------------------
module ei_sample;
  bit [0:2] y;
  bit [0:2] val[$]= '{3,5,6};

covergroup cg;
 option.per_instance = 1;
  cover_point_y : coverpoint y;
endgroup

cg cg_inst = new();

initial
foreach(val[i])
begin
y = val[i];
cg_inst.sample();
end

endmodule


--------------------------------------------------------------2 ---------------------------------------
module ei_sample;
  bit [0:7] y;
  bit [0:2] val[$]= '{3,5,6};

covergroup cg;
  option.per_instance = 1;
  cover_point_y : coverpoint y{ option.auto_bin_max = 6;}
endgroup

cg cg_inst = new();

initial
foreach(val[i])
begin
y = val[i];
cg_inst.sample();
end

endmodule

--------------------------------------------------------------EXPLICIT BIN- 1----------------------------------
module ei_sample;
bit [0:2] y;
bit [0:2] val[$]= '{3,5,6};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
bins a = {0,1};
bins b = {2,3};
bins c = {4,5};

}

endgroup

cg cg_inst = new();
initial
foreach(val[i])
begin
y = val[i];
cg_inst.sample();
end

endmodule

-----------------------------------------------------------------------------------------------------------

module ei_sample;
bit [0:2] y;
bit [0:2] val[$]= '{3,5,6};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
bins a = {0,1};
bins b = {2,3};
bins c = {4,5};
bins d = default;
}

endgroup

cg cg_inst = new();
initial
foreach(val[i])
begin
y = val[i];
cg_inst.sample();
end

endmodule

-----------------------------------------------------array-------------------------------------------
module ei_sample;
bit [0:7] y;
  bit [0:7] val[$]= '{1,34,3,5,6,45};

covergroup cg;
	option.per_instance = 1;
cover_point_y : coverpoint y {
  bins a[5] = {[0:50]};
}

endgroup

cg cg_inst = new();
initial
foreach(val[i])
begin
y = val[i];
cg_inst.sample();
end

endmodule