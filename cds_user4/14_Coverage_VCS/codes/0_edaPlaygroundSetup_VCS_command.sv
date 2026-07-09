EDA setup

Sample code:

https://www.edaplayground.com/x/q4mf

/////////////////////////////run.do

vsim +access+r;
run -all;
acdb save;
acdb report -db  fcover.acdb -txt -o cov.txt -verbose  
exec cat cov.txt;
exit

Note: This link will help you to learn coverage session codes. You need to paste code in testbench.sv file 
only. There is no need to create run.do file each time.


===vcs SV commands======
vcs -full64 -sverilog -debug_access+all hello_sv.sv -o simv
./simv


===vcs uvm commands======
vcs -full64 -sverilog -ntb_opts uvm hello_uvm.sv
./simv


===================== VCS coverage commands =====================

vcs -full64 -sverilog -cm line+cond+tgl+branch+fsm <file_name.sv> -o simv
 
./simv -cm line+cond+tgl+branch+fsm
 
urg -dir simv.vdb
 
cd urgReport/
 
firefox dashboard.html &
