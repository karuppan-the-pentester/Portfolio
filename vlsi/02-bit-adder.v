module fast_adder(
    input [3:0] A, B,  // 4-bit inputs
    input cin,         // Carry-in
    output [3:0] sum,  // 4-bit sum output
    output cout        // Carry-out
);

// Generate and propagate signals
wire [3:0] generate, propagate;
assign generate = A & B;             // Generate signal
assign propagate = A | B;            // Propagate signal

// Calculate carry-out using generate and propagate signals
assign cout = (generate[0] | (propagate[0] & cin)) |
             (generate[1] | (propagate[1] & generate[0])) |
             (generate[2] | (propagate[2] & generate[1])) |
             (generate[3] | (propagate[3] & generate[2]));

// Calculate sum using XOR gates
assign sum = A ^ B ^ {cin, cout};

endmodule
