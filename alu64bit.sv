// 64-bit ALU template
module alu64bit (
    input logic [63:0] a,    // Input bit a
    input logic [63:0] b,    // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic [63:0] s,   // Output S
    output logic cout        // Carry out
);

logic [63:0] all_couts;

alu1bit inst0(.a(a[0]), .b(b[0]), .cin(cin), .op(op), .s(s[0]), .cout(all_couts[0]));


genvar i;
generate
	for (i=1; i<64; i++)
	begin
		alu1bit inst(.a(a[i]), .b(b[i]), .cin(all_couts[i-1]), .op(op), .s(s[i]), .cout(all_couts[i]));
	end
endgenerate

assign cout = all_couts[63];

endmodule
