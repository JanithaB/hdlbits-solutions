module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );

    wire [100:0] temp_sum;
    assign temp_sum = a + b + cin;
    assign sum = temp_sum[99:0];
    assign cout = temp_sum[100];
    
endmodule
