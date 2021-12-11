// 4->1 multiplexer test bench template
module mux4_test;

// Put your code here
// ------------------
logic d0 = 0;
logic d1 = 0;
logic d2 = 0;
logic d3 = 0;
logic [1:0] sel = {2{0}};
logic z;

mux4 (
    .d0(d0),       // Data input 0
    .d1(d1),       // Data input 1
    .d2(d2),       // Data input 2
    .d3(d3),       // Data input 3
    .sel(sel),     // Select input
    .z(z)          // Output
);

initial begin

d0 = 1; // d0 changes from 0 to 1
#28
d1 = 0; // d0 changes from 1 to 0

end

// End of your code

endmodule
