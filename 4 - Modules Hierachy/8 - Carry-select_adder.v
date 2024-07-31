module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	wire w;
    wire [15:0] o1, o2;
    
    add16 low (a[15:0], b[15:0], 1'b0, sum[15:0], w);
    add16 high1 (a[31:16], b[31:16], 1'b0, o1[15:0]);
    add16 high2 (a[31:16], b[31:16], 1'b1, o2[15:0]);
    
    always @(*) begin
        case(w)
            1'b0: sum[31:16] = o1;
            1'b1: sum[31:16] = o2;
        endcase
    end
endmodule
