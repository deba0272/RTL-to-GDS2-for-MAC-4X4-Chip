
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point enable enable -type PI PI
add mapped point a[3] a[3] -type PI PI
add mapped point a[2] a[2] -type PI PI
add mapped point a[1] a[1] -type PI PI
add mapped point a[0] a[0] -type PI PI
add mapped point b[3] b[3] -type PI PI
add mapped point b[2] b[2] -type PI PI
add mapped point b[1] b[1] -type PI PI
add mapped point b[0] b[0] -type PI PI

//output ports
add mapped point mac_out[15] mac_out[15] -type PO PO
add mapped point mac_out[14] mac_out[14] -type PO PO
add mapped point mac_out[13] mac_out[13] -type PO PO
add mapped point mac_out[12] mac_out[12] -type PO PO
add mapped point mac_out[11] mac_out[11] -type PO PO
add mapped point mac_out[10] mac_out[10] -type PO PO
add mapped point mac_out[9] mac_out[9] -type PO PO
add mapped point mac_out[8] mac_out[8] -type PO PO
add mapped point mac_out[7] mac_out[7] -type PO PO
add mapped point mac_out[6] mac_out[6] -type PO PO
add mapped point mac_out[5] mac_out[5] -type PO PO
add mapped point mac_out[4] mac_out[4] -type PO PO
add mapped point mac_out[3] mac_out[3] -type PO PO
add mapped point mac_out[2] mac_out[2] -type PO PO
add mapped point mac_out[1] mac_out[1] -type PO PO
add mapped point mac_out[0] mac_out[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point dut/mult_reg[7]/q dut/mult_reg_reg[7]/Q -type DFF DFF
add mapped point dut/mult_reg[6]/q dut/mult_reg_reg[6]/Q -type DFF DFF
add mapped point dut/mult_reg[5]/q dut/mult_reg_reg[5]/Q -type DFF DFF
add mapped point dut/mult_reg[4]/q dut/mult_reg_reg[4]/Q -type DFF DFF
add mapped point dut/mult_reg[3]/q dut/mult_reg_reg[3]/Q -type DFF DFF
add mapped point dut/mult_reg[2]/q dut/mult_reg_reg[2]/Q -type DFF DFF
add mapped point dut/mult_reg[1]/q dut/mult_reg_reg[1]/Q -type DFF DFF
add mapped point dut/mult_reg[0]/q dut/mult_reg_reg[0]/Q -type DFF DFF
add mapped point dut/enable_s2/q dut/enable_s2_reg/Q -type DFF DFF
add mapped point dut/enable_s1/q dut/enable_s1_reg/QN -type DFF DFF
add mapped point dut/b_reg[1]/q dut/b_reg_reg[1]/QN -type DFF DFF
add mapped point dut/a_reg[1]/q dut/a_reg_reg[1]/QN -type DFF DFF
add mapped point dut/b_reg[3]/q dut/b_reg_reg[3]/Q -type DFF DFF
add mapped point dut/a_reg[0]/q dut/a_reg_reg[0]/QN -type DFF DFF
add mapped point dut/b_reg[2]/q dut/b_reg_reg[2]/QN -type DFF DFF
add mapped point dut/a_reg[3]/q dut/a_reg_reg[3]/Q -type DFF DFF
add mapped point dut/a_reg[2]/q dut/a_reg_reg[2]/QN -type DFF DFF
add mapped point dut/b_reg[0]/q dut/b_reg_reg[0]/QN -type DFF DFF
add mapped point dut/acc_reg[7]/q dut/acc_reg_reg[7]/Q -type DFF DFF
add mapped point dut/acc_reg[1]/q dut/acc_reg_reg[1]/Q -type DFF DFF
add mapped point dut/acc_reg[5]/q dut/acc_reg_reg[5]/Q -type DFF DFF
add mapped point dut/acc_reg[6]/q dut/acc_reg_reg[6]/Q -type DFF DFF
add mapped point dut/acc_reg[0]/q dut/acc_reg_reg[0]/Q -type DFF DFF
add mapped point dut/acc_reg[8]/q dut/acc_reg_reg[8]/Q -type DFF DFF
add mapped point dut/acc_reg[9]/q dut/acc_reg_reg[9]/Q -type DFF DFF
add mapped point dut/acc_reg[10]/q dut/acc_reg_reg[10]/Q -type DFF DFF
add mapped point dut/acc_reg[14]/q dut/acc_reg_reg[14]/Q -type DFF DFF
add mapped point dut/acc_reg[11]/q dut/acc_reg_reg[11]/Q -type DFF DFF
add mapped point dut/acc_reg[12]/q dut/acc_reg_reg[12]/Q -type DFF DFF
add mapped point dut/acc_reg[13]/q dut/acc_reg_reg[13]/Q -type DFF DFF
add mapped point dut/acc_reg[2]/q dut/acc_reg_reg[2]/Q -type DFF DFF
add mapped point dut/acc_reg[3]/q dut/acc_reg_reg[3]/Q -type DFF DFF
add mapped point dut/acc_reg[15]/q dut/acc_reg_reg[15]/Q -type DFF DFF
add mapped point dut/acc_reg[4]/q dut/acc_reg_reg[4]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
