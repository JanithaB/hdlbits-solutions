module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire w;
    
    add16 low1 (a[15:0], b[15:0], 1'b0, sum[15:0], w);
    add16 high1 (a[31:16], b[31:16], w, sum[31:16]);
    
endmodule
