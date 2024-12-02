module top_module( 
    input a, 
    input b, 
    output out );
	
    assign out = a & b;

    //assign out = (a && b) ? 1'b1 : 1'b0; this is also working
    
endmodule
