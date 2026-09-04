`timescale 1ns/1ns

module Lab_2_Q1 (x1, x2, x3, x4, f);
input x1, x2, x3, x4;
output f;

assign a = (~x1) & (~x3) & (~x4);
assign b = (~x2) & (~x3) & (~x4);
assign c = (x1) & (x2) & (~x4);
assign d = (x1) & (x2) & (x3);
assign f = a | b | c | d;
endmodule