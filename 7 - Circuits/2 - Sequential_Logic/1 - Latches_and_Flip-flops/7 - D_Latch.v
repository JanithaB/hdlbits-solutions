module top_module (
    input d, 
    input ena,
    output q);
    
    always @(*) begin
        if (ena) q <= d;
        else q <= q;
    end

endmodule

// Latches are level-sensitive (not edge-sensitive) circuits, so they use level-sensitive sensitivity lists in an always block.
// However, they are still sequential elements, so they should use non-blocking assignments.
// A D-latch acts like a wire (or non-inverting buffer) when enabled, and preserves the current value when disabled.
