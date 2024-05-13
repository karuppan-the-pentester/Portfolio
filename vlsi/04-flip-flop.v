module D_flip_flop(
    input clk,        // Clock input
    input rst,        // Reset input
    input D,          // D input
    output reg Q_D    // Output Q
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        Q_D <= 1'b0;
    else        // Synchronous operation
        Q_D <= D;
end

endmodule





module T_flip_flop(
    input clk,        // Clock input
    input rst,        // Reset input
    input T,          // T input
    output reg Q_T    // Output Q
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        Q_T <= 1'b0;
    else        // Synchronous operation
        Q_T <= T ^ Q_T;  // Toggle Q_T if T=1
end

endmodule





module SR_flip_flop(
    input clk,        // Clock input
    input rst,        // Reset input
    input S, R,       // S (Set) and R (Reset) inputs
    output reg Q_SR   // Output Q
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        Q_SR <= 1'b0;
    else        // Synchronous operation
        Q_SR <= (S & ~Q_SR) | (~R & Q_SR);  // S-R latch behavior
end

endmodule





module JK_flip_flop(
    input clk,        // Clock input
    input rst,        // Reset input
    input J, K,       // J and K inputs
    output reg Q_JK   // Output Q
);

always @(posedge clk, negedge rst)
begin
    if (!rst)  // Asynchronous reset
        Q_JK <= 1'b0;
    else        // Synchronous operation
        case ({J, K})
            2'b00: Q_JK <= Q_JK;   // Hold state
            2'b01: Q_JK <= 1'b0;   // Reset state
            2'b10: Q_JK <= 1'b1;   // Set state
            2'b11: Q_JK <= ~Q_JK;  // Toggle state
        endcase
end

endmodule
