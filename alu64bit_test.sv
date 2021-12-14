// 64-bit ALU test bench template
module alu64bit_test;

logic [63:0] a = {64{1'b1}};
logic [63:0] b = {64{1'b0}};
logic cin = 1'b0;
logic [1:0] op = {1'b1, 1'b0};
logic [63:0] s;
logic cout;


alu64bit inst(
	.a(a),
	.b(b),
	.cin(cin),
	.op(op),
	.s(s),
	.cout(cout)
);

initial begin

#2190
cin = 1'b1;
#2190;
end

endmodule
