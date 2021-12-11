// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------

logic a = 1'b0;
logic b = 1'b1;
logic cin = 1'b0;
logic a_ns = 1'b0; //to toggle
logic s;
logic cout;

fas fas_t(
    .a(a),           // Input bit a
    .b(b),           // Input bit b
    .cin(cin),       // Carry in
    .a_ns(a_ns),     // A_nS (add/not subtract) control
    .s(s),           // Output S
    .cout(cout)      // Carry out
);

initial begin

#36
a_ns = 1'b1;

end

// End of your code

endmodule
