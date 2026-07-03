//////////////////////Design Code

module top
  (
    input  [1:0]  a,
    output [1:0]  b  
  );
  
assign b = a;
  
  
endmodule
//////////////Testbench Code



module tb;
 
  reg  [1:0]  a;
  wire [1:0]  b;
  integer i = 0;
  
  top dut (.a(a), .b(b));
  
  
  covergroup cvr_a ; ///// manual sample method
    
    coverpoint a; //// automaitc bins  
    
    coverpoint b;
  
  endgroup 
  
 
  cvr_a ci = new();
 
  
  initial begin
    
    
    for (i = 0; i <10; i++) begin
      a = $urandom();  
      ci.sample();
      
      #10;
    end
    
    
  end
  
  
  
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    #500;
    $finish();
  end
 
endmodule


/* ======= vcs commands ==========

vcs -full64 -sverilog -cm line+cond+tgl+branch+fsm 1_CovergroupWithoutEvent.sv -o simv
 
./simv -cm line+cond+tgl+branch+fsm
 
urg -dir simv.vdb
 
cd urgReport/
 
firefox urgReport/dashboard.html &


*/