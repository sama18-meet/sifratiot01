// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

logic g1, g2, g3, g4, g5, g6, g7, g8;

or(z, g2, g3);
not(g2, g4);
or(g4, sel, g6);
not(g6, d0);
not(g3, g5);
or(g5, g7, g8);
not(g7, sel);
not(g7, sel);


endmodule
