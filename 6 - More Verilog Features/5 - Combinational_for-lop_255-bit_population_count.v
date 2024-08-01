module top_module( 
    input [254:0] in,
    output [7:0] out );
    
    reg [7:0] temp;
    
    always @(*) begin
        temp = 0;
        for(int i = 0; i<$bits(in); i++) begin
            if (in[i] == 1'b1)
                temp++;
        end
    end
    assign out = temp;
endmodule
