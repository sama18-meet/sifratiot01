// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------

// Calculate sum function
logic w1;
XOR2 #(.Tpdhl(10), .Tpdlh(10)) g1 (.A(cin), .B(a), .Z(w1));
XOR2 #(.Tpdhl(10), .Tpdlh(10)) g2 (.A(w1), .B(b), .Z(s));

// Calculate Carry function

//=== cin & b ===
logic w3;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g3 (.A(cin), .Z(w3));
logic w4;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g4 (.A(b), .Z(w4));
logic w5;
OR2 #(.Tpdhl(10), .Tpdlh(10)) g5 (.A(w3), .B(w4), .Z(w5));
logic w6;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g6 (.A(w5), .Z(w6));
//=== end of cin & b ===

logic w7;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g7 (.A(a_ns), .Z(w7));
logic w9;
XOR2 #(.Tpdhl(10), .Tpdlh(10)) g9 (.A(a), .B(w7), .Z(w9));
logic w8;
OR2 #(.Tpdhl(10), .Tpdlh(10)) g8 (.A(b), .B(cin), .Z(w8));

//=== w9 & w8 ===
logic w10;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g10 (.A(w9), .Z(w10));
logic w11;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g11 (.A(w9), .Z(w11));
logic w12;
OR2 #(.Tpdhl(10), .Tpdlh(10)) g12 (.A(w10), .B(w11), .Z(w12));
logic w13;
NOT #(.Tpdhl(2),  .Tpdlh(2)) g13 (.A(w12), .Z(w13));
//=== end of w9 & w8 ===

// assign cout
OR2 #(.Tpdhl(10), .Tpdlh(10)) g14 (.A(w13), .B(w6), .Z(cout));

// End of your code

endmodule
