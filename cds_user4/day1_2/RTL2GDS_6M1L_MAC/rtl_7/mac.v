`timescale 1ns / 1ps

module mac_4x4
(
    input  wire              clk,
    input  wire              rst,
    input  wire              enable,

    input  wire signed [3:0] a,
    input  wire signed [3:0] b,

    output reg  signed [15:0] mac_out
);

    //=========================================================
    // Stage-1 Input Registers
    //=========================================================

    reg signed [3:0] a_reg;
    reg signed [3:0] b_reg;

    reg enable_s1;

    always @(posedge clk)
    begin
        if (rst)
        begin
            a_reg     <= 4'sd0;
            b_reg     <= 4'sd0;
            enable_s1 <= 1'b0;
        end
        else
        begin
            a_reg     <= a;
            b_reg     <= b;
            enable_s1 <= enable;
        end
    end

    //=========================================================
    // Multiplier
    //=========================================================

    wire signed [7:0] mult_wire;

    assign mult_wire = a_reg * b_reg;

    //=========================================================
    // Stage-2 Multiplier Register
    //=========================================================

    reg signed [7:0] mult_reg;

    reg enable_s2;

    always @(posedge clk)
    begin
        if (rst)
        begin
            mult_reg  <= 8'sd0;
            enable_s2 <= 1'b0;
        end
        else
        begin
            mult_reg  <= mult_wire;
            enable_s2 <= enable_s1;
        end
    end

    //=========================================================
    // Sign Extension to 16 bits
    //=========================================================

    wire signed [15:0] mult_ext;

    assign mult_ext = {{8{mult_reg[7]}}, mult_reg};

    //=========================================================
    // Accumulator Register
    //=========================================================

    reg signed [15:0] acc_reg;

    always @(posedge clk)
    begin
        if (rst)
            acc_reg <= 16'sd0;
        else if (enable_s2)
            acc_reg <= acc_reg + mult_ext;
    end

    //=========================================================
    // Registered Output
    //=========================================================

    always @(posedge clk)
    begin
        if (rst)
            mac_out <= 16'sd0;
        else if (enable_s2)
            mac_out <= acc_reg + mult_ext;
    end

endmodule
