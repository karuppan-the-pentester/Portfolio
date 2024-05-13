module up_down_counter(
    input clk,         // Clock input
    input rst,         // Reset input
    input up_down,     // Up/Down control input
    output reg [3:0] count  // 4-bit counter output
);

// Internal signal for counting direction
reg direction;

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
    begin
        count <= 4'b0000;  // Reset counter to 0
        direction <= 1'b0; // Default direction is up
    end
    else
    begin
        if (up_down)  // Up/Down control
            direction <= 1'b1; // Up
        else
            direction <= 1'b0; // Down
        
        if (direction)  // Count up
            count <= count + 1;
        else  // Count down
            count <= count - 1;
    end
end

endmodule
