module ripple_carry_adder(
    input [3:0] A, B,  // 4-bit inputs
    input cin,         // Carry-in
    output [3:0] sum,  // 4-bit sum output
    output cout        // Carry-out
);

wire [3:0] c;  // Internal carry wires

// Full adder instances for each bit
full_adder fa0(.A(A[0]), .B(B[0]), .cin(cin), .sum(sum[0]), .cout(c[0]));
full_adder fa1(.A(A[1]), .B(B[1]), .cin(c[0]), .sum(sum[1]), .cout(c[1]));
full_adder fa2(.A(A[2]), .B(B[2]), .cin(c[1]), .sum(sum[2]), .cout(c[2]));
full_adder fa3(.A(A[3]), .B(B[3]), .cin(c[2]), .sum(sum[3]), .cout(cout));

endmodule

module full_adder(
    input A, B, cin,  // Inputs
    output sum,       // Sum output
    output cout       // Carry-out
);

assign {cout, sum} = A + B + cin;

endmodule
