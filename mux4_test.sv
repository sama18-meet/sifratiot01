// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
logic d0 = 1'b0;
logic d1 = 1'b0;
logic d2 = 1'b0;
logic d3 = 1'b0;
logic [1:0] sel = {2{1'b0}};
logic z;

mux4 m1(
    .d0(d0),       // Data input 0
    .d1(d1),       // Data input 1
    .d2(d2),       // Data input 2
    .d3(d3),       // Data input 3
    .sel(sel),     // Select input
    .z(z)          // Output
);

initial begin

#28
d0 = 1'b1; // d0 changes from 0 to 1
#28
d0 = 1'b0; // d0 changes from 1 to 0
#28;

end

// End of your code

endmodule
