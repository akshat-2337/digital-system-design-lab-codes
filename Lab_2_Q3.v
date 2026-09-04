`timescale 1ns/1ns

module Lab_2_Q3 (x1, x2, x3, x4, y1, y2, y3, y4, z1, z2, z3, z4, cin, c4);
input x1, x2, x3, x4, y1, y2, y3, y4, cin;
output z1, z2, z3, z4, c4;

assign z1 = (y1 ^ cin) ^ (x1) ^ (cin);
assign c1 = ((y1 ^ cin) & (x1)) | ((y1 ^ cin) & (cin)) | ((x1) & (cin));
assign z2 = (y2 ^ cin) ^ (x2) ^ (c1);
assign c2 = ((y2 ^ cin) & (x2)) | ((y2 ^ cin) & (c1)) | ((x2) & (c1));
assign z3 = (y3 ^ cin) ^ (x3) ^ (c2);
assign c3 = ((y3 ^ cin) & (x3)) | ((y3 ^ cin) & (c2)) | ((x3) & (c2));
assign z4 = (y4 ^ cin) ^ (x4) ^ (c3);
assign c4 = ((y4 ^ cin) & (x4)) | ((y4 ^ cin) & (c3)) | ((x4) & (c3));

endmodule