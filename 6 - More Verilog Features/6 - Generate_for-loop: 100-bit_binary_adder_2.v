module fullAdder(
    input a, b,
    input cin,
    output sum, cout);
    
    assign sum = a ^ b ^ cin;
    assign cout = (a&b) | (a&cin) | (b&cin);
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

  	genvar i;
      
    fullAdder fa0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));

    //this is a generte block
    //The loop generate construct provides an easy and concise method to create multiple instances 
    //of module items such as module instances, assign statements, assertions, interface instances 
    //In essence generate block is a special type of for loop with the loop index variable of datatype genvar.
  
    generate
      for(i = 1; i<100; i++) begin : Full_adder_block // Not naming the generate block will raise errors
              fullAdder fa1(.a(a[i]), .b(b[i]), .cin(cout[i-1]), .sum(sum[i]), .cout(cout[i]));
      	end
    endgenerate
endmodule


            

    
