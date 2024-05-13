module magnitude_comparator(
    input [3:0] A, B,  // 4-bit inputs to be compared
    output equal,      // Output indicating equality
    output A_greater,  // Output indicating A is greater than B
    output B_greater   // Output indicating B is greater than A
);

assign equal = (A == B);
assign A_greater = (A > B);
assign B_greater = (B > A);

endmodule
