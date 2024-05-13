module siso_shift_register(
    input clk,        // Clock input
    input rst,        // Reset input
    input si,         // Serial input
    output reg so     // Serial output
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        so <= 1'b0;  // Reset to 0
    else
        so <= si;  // Output si on each clock cycle
end

endmodule




module pipo_shift_register(
    input clk,        // Clock input
    input rst,        // Reset input
    input [3:0] pi,   // Parallel input
    output reg [3:0] po  // Parallel output
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        po <= 4'b0000;  // Reset to 0
    else
        po <= pi;  // Output pi on each clock cycle
end

endmodule




module sipo_shift_register(
    input clk,        // Clock input
    input rst,        // Reset input
    input si,         // Serial input
    output reg [3:0] po  // Parallel output
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        po <= 4'b0000;  // Reset to 0
    else
        po <= {po[2:0], si};  // Shift si into po on each clock cycle
end

endmodule






module piso_shift_register(
    input clk,        // Clock input
    input rst,        // Reset input
    input [3:0] pi,   // Parallel input
    output reg so     // Serial output
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        so <= 1'b0;  // Reset to 0
    else
        so <= pi[3];  // Output the MSB of pi on each clock cycle
end

endmodule
