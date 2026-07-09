`timescale 1ns / 1ps

module mac_4x4_wrapper_chip(

    input        clk,
    input        rst,
    input        enable,

    input  [3:0] a,
    input  [3:0] b,

    output [15:0] mac_out
);

    //--------------------------------------------------
    // Internal PAD Signals
    //--------------------------------------------------

    wire clk_pad;
    wire clk_buf;

    wire rst_pad;
    wire enable_pad;

    wire [3:0] a_pad;
    wire [3:0] b_pad;

    wire [15:0] mac_out_pad;

    //--------------------------------------------------
    // DUT
    //--------------------------------------------------

    mac_4x4 dut (
        .clk     (clk_buf),
        .rst     (rst_pad),
        .enable  (enable_pad),
        .a       (a_pad),
        .b       (b_pad),
        .mac_out (mac_out_pad)
    );

    //--------------------------------------------------
    // Clock
    //--------------------------------------------------

    pc3d01 pc3d01_clk(
        .PAD(clk),
        .CIN(clk_pad)
    );

    pc3c01 pc3c01_clk_buf(
        .CCLK(clk_pad),
        .CP(clk_buf)
    );

    //--------------------------------------------------
    // Control Inputs
    //--------------------------------------------------

    pc3d01 pc3d01_rst(
        .PAD(rst),
        .CIN(rst_pad)
    );

    pc3d01 pc3d01_enable(
        .PAD(enable),
        .CIN(enable_pad)
    );

    //--------------------------------------------------
    // A INPUT PADS
    //--------------------------------------------------

    pc3d01 pc3d01_a0 (.PAD(a[0]), .CIN(a_pad[0]));
    pc3d01 pc3d01_a1 (.PAD(a[1]), .CIN(a_pad[1]));
    pc3d01 pc3d01_a2 (.PAD(a[2]), .CIN(a_pad[2]));
    pc3d01 pc3d01_a3 (.PAD(a[3]), .CIN(a_pad[3]));

    //--------------------------------------------------
    // B INPUT PADS
    //--------------------------------------------------

    pc3d01 pc3d01_b0 (.PAD(b[0]), .CIN(b_pad[0]));
    pc3d01 pc3d01_b1 (.PAD(b[1]), .CIN(b_pad[1]));
    pc3d01 pc3d01_b2 (.PAD(b[2]), .CIN(b_pad[2]));
    pc3d01 pc3d01_b3 (.PAD(b[3]), .CIN(b_pad[3]));

    //--------------------------------------------------
    // OUTPUT PADS
    //--------------------------------------------------

    pc3o01 pc3o01_mac_out0  (.PAD(mac_out[0]),  .I(mac_out_pad[0]));
    pc3o01 pc3o01_mac_out1  (.PAD(mac_out[1]),  .I(mac_out_pad[1]));
    pc3o01 pc3o01_mac_out2  (.PAD(mac_out[2]),  .I(mac_out_pad[2]));
    pc3o01 pc3o01_mac_out3  (.PAD(mac_out[3]),  .I(mac_out_pad[3]));
    pc3o01 pc3o01_mac_out4  (.PAD(mac_out[4]),  .I(mac_out_pad[4]));
    pc3o01 pc3o01_mac_out5  (.PAD(mac_out[5]),  .I(mac_out_pad[5]));
    pc3o01 pc3o01_mac_out6  (.PAD(mac_out[6]),  .I(mac_out_pad[6]));
    pc3o01 pc3o01_mac_out7  (.PAD(mac_out[7]),  .I(mac_out_pad[7]));
    pc3o01 pc3o01_mac_out8  (.PAD(mac_out[8]),  .I(mac_out_pad[8]));
    pc3o01 pc3o01_mac_out9  (.PAD(mac_out[9]),  .I(mac_out_pad[9]));
    pc3o01 pc3o01_mac_out10 (.PAD(mac_out[10]), .I(mac_out_pad[10]));
    pc3o01 pc3o01_mac_out11 (.PAD(mac_out[11]), .I(mac_out_pad[11]));
    pc3o01 pc3o01_mac_out12 (.PAD(mac_out[12]), .I(mac_out_pad[12]));
    pc3o01 pc3o01_mac_out13 (.PAD(mac_out[13]), .I(mac_out_pad[13]));
    pc3o01 pc3o01_mac_out14 (.PAD(mac_out[14]), .I(mac_out_pad[14]));
    pc3o01 pc3o01_mac_out15 (.PAD(mac_out[15]), .I(mac_out_pad[15]));

endmodule
