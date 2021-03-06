// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

parameter TpdOr = 1;
parameter TpdXor = 1;
parameter TpdNot = 1;

logic w2, w3, w4, w5, w6, w7, w8;


OR2 #(.Tpdhl(TpdOr), .Tpdlh(TpdOr)) g1 (.A(w2), .B(w3), .Z(z));
NOT #(.Tpdhl(TpdNot),  .Tpdlh(TpdNot)) g2 (.A(w4), .Z(w2));
OR2 #(.Tpdhl(TpdOr), .Tpdlh(TpdOr)) g4 (.A(w6), .B(sel), .Z(w4));
NOT #(.Tpdhl(TpdNot),  .Tpdlh(TpdNot)) g6 (.A(d0), .Z(w6));

NOT #(.Tpdhl(TpdNot),  .Tpdlh(TpdNot)) g3 (.A(w5), .Z(w3));
OR2 #(.Tpdhl(TpdOr), .Tpdlh(TpdOr)) g5 (.A(w7), .B(w8), .Z(w5));
NOT #(.Tpdhl(TpdNot),  .Tpdlh(TpdNot)) g7 (.A(sel), .Z(w7));
NOT #(.Tpdhl(TpdNot),  .Tpdlh(TpdNot)) g8 (.A(d1), .Z(w8));



endmodule
