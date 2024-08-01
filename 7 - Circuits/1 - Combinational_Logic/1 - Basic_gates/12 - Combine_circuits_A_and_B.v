module top_module (input x, input y, output z);

    wire w1, w2, w3,w4, w5, w6;
    
    q4a uut1 (x, y, w1);
    q4b uut2 (x, y, w2);
    q4a uut3(x, y, w3);
    q4b uut4(x, y, w4);
    
    assign w5 = w1 | w2;
    assign w6 = w3 & w4;
    
    assign z = w5 ^ w6;
    
endmodule

module q4a (input x, input y, output z);

    wire w;
    assign w = x ^ y;
    assign z = w & x;
    
endmodule

module q4b ( input x, input y, output z );
	
    assign z = ~(x ^ y);
    
endmodule
