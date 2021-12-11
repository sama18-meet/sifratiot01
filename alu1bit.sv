// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

logic d0, d1, d2, d3;
logic or1Out, not2Out;

assign d2 = d3;


OR2  #(.Tpdhl(10), .Tpdlh(1)) gOr1 (.A(a), .B(b), .Z(or1Out));
NOT  #(.Tpdhl(1),  .Tpdlh(2)) gNot1 (.A(or1Out), .Z(d0));

XOR2 #(.Tpdhl(5),  .Tpdlh(10)) gXor (.A(a), .B(b), .Z(d1));

NOT  #(.Tpdhl(1),  .Tpdlh(2)) gNot2 (.A(op[0]), .Z(not2Out));
fas (.a(a), .b(b), .cin(cin), .a_ns(not2Out), .s(d2), .cout(cout));

mux4(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(op), .z(s));



endmodule
