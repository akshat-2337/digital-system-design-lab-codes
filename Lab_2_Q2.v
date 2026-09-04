`timescale 1ns/1ns

module Lab_2_Q2 (sum, carry, a, b, c);
output sum, carry;
input a, b, c;

assign sum = a ^ b ^ c;
assign carry = (a & b) | (a & c) | (b & c);

endmodule