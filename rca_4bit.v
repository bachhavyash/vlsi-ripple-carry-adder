// ============================================================
// Project   : 4-bit Ripple Carry Adder (RCA)
// Author    : Yashganesh Bachhav
// College   : LGNSCOE, Nashik (SPPU)
// Domain    : VLSI Design | Verilog HDL
// ============================================================

// Full Adder - basic building block
module full_adder (
    input  A, B, Cin,
    output Sum, Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

// 4-bit Ripple Carry Adder using 4 Full Adders
module ripple_carry_adder_4bit (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);
    wire c1, c2, c3; // Intermediate carries

    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin),  .Sum(Sum[0]), .Cout(c1));
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(c1),   .Sum(Sum[1]), .Cout(c2));
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(c2),   .Sum(Sum[2]), .Cout(c3));
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(c3),   .Sum(Sum[3]), .Cout(Cout));

endmodule
