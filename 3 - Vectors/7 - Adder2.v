module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
	wire w;
    
    add16 low (a[15:0], b[15:0], 1'b0, sum[15:0], w);
    add16 high (a[31:16], b[31:16], w, sum[31:16]);
    
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );
	
// Full adder module here
	wire w1, w2;
    assign w1 = a ^ b ^ cin;
    assign w2 = (a&b) | (a&cin) | (b&cin);
    
    assign sum = w1;
    assign cout = w2;

endmodule
