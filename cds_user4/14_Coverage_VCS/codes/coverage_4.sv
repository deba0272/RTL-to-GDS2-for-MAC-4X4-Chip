module func_coverage;
  bit [1:0] addr, data;
  covergroup c_group;
    option.per_instance = 1;
    option.comment = "This is the comment";
   
    cp1: coverpoint addr
    {
      option.weight = 2;
      option.goal=50;
    }
    
    cp2: coverpoint data;
    
    cp1_X_cp2: cross cp1, cp2
    
    { option.weight = 3;}
     
    
  endgroup : c_group

  c_group cg1,cg2;
 
  
  initial begin
    cg1=new();
    cg2=new();
   
    repeat(5) begin
      addr = $urandom;
      data = $urandom;
      #5;
      cg1.sample();
      addr = $urandom;
      data = $urandom;
      cg2.sample();
      #5;
       $monitor("At time = %0t: addr = %0d, data = %0d", $time, addr, data);
    end
    $display("Coverage cg1= %f", cg1.get_inst_coverage());
    $display("Coverage cg2 = %f", cg2.get_inst_coverage());
    
  end
  
endmodule