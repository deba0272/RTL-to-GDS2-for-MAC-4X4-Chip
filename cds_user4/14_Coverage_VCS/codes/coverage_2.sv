-------------------------------------TRANSITION BINS--------------------------------------------------


module ei_sample;
  bit [0:7] y;
  bit [0:4] val[$]= '{7,8,9,5,6};

covergroup cg;
cover_point_y : coverpoint y {
bins tran_78 = (7=>8);//(7=>8=>9)
bins tran_56 = (5=>6);
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

------------------------------------------------------------------------------------------------
module ei_sample;
bit [0:3] y;
bit [0:7] values[$]= '{10,10,10,4,4};

covergroup cg;
cover_point_y : coverpoint y {
bins trans_10 = (10[*5]);
bins trans_4 = (4[*2]);
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
--------------------------------------------------------------------------------------------------

bins trans[] = (3,4=>5,6); //3=>5,4=>5,3=>6 and 4=>6.
bins trans_3 = (3[*5]);
bins trans_4 = (4[*2]);
bins trans_3[] = (3[*3:5]);//3=>3=>3, 3=>3=>3=>3, 3=>3=>3=>3=>3
bins trans    =  1 => 3[->3] => 9;//{1,8,3,7,3,6,3,9};
-------------------------------------------------------------------------------------

