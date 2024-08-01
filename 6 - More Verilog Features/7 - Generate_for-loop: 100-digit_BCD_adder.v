module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [99:0] w;
    genvar i;
    
    bcd_fadd fa0(a[3:0], b[3:0], cin, w[0], sum[3:0]);
    generate
        for(i = 1; i<100; i++) begin : full_adder_block
          bcd_fadd fa1(a[(((i+1)*4)-1)-:4],b[(((i+1)*4)-1)-:4], w[i-1], w[i], sum[(((i+1)*4)-1)-:4]);
        end
      //  for(i = 4; i<400; i+=4) begin : full_adder_block                                    
      //    bcd_fadd fa1(a[i+3:i],b[i+3:i], w[i/4-1], w[i/4], sum[i+3:i]);  // this is more simplified
      //  end
      
    endgenerate
    assign cout = w[99];
endmodule
