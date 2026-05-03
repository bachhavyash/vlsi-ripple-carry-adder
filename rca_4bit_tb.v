// ============================================================
// Testbench : 4-bit Ripple Carry Adder
// ============================================================

`timescale 1ns/1ps

module rca_4bit_tb;

    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    ripple_carry_adder_4bit uut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $display("================================================");
        $display(" 4-bit Ripple Carry Adder — Yashganesh Bachhav");
        $display("================================================");
        $display("  A    |  B   | Cin | Sum  | Cout | Decimal");
        $display("-------|------|-----|------|------|--------");

        A=4'd0;  B=4'd0;  Cin=0; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d = %0d", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        A=4'd5;  B=4'd3;  Cin=0; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d = %0d", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        A=4'd9;  B=4'd6;  Cin=0; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d = %0d", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        A=4'd15; B=4'd1;  Cin=0; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d = %0d (Overflow!)", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        A=4'd7;  B=4'd8;  Cin=1; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d + 1 = %0d", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        A=4'd15; B=4'd15; Cin=1; #10;
        $display("  %04b | %04b |  %b  | %04b |  %b   | %0d + %0d + 1 = %0d (Max)", A,B,Cin,Sum,Cout,A,B,{Cout,Sum});

        $display("================================================");
        $display(" Simulation Complete!");
        $display("================================================");
        $finish;
    end

endmodule
