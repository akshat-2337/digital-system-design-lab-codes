`timescale 1ns/1ns

module Lab_2_Q4(a1, a2, a3, b1, b2, b3, l5P1S, l5P2S, l5P3S, l5P4S, l5P5S, l5P6S);
input a1, a2, a3, b1, b2, b3;
output l5P1S, l5P2S, l5P3S, l5P4S, l5P5S, l5P6S;

assign l1P1 = (a3 & b3);
assign l1P2 = (a2 & b3);
assign l1P3 = (a1 & b3);

assign l2P2 = (a3 & b2);
assign l2P3 = (a2 & b2);
assign l2P4 = (a1 & b2);

assign l3P1S = ((l1P1) ^ (0) ^ (0));
assign l3P1C = (0);

assign l3P2S = ((l1P2) ^ (l2P2) ^ (l3P1C));
assign l3P2C = ((l1P2) & (l2P2)) | ((l1P2) & (l3P1C)) | ((l2P2) & (l3P1C));

assign l3P3S = ((l1P3) ^ (l2P3) ^ (l3P2C));
assign l3P3C = ((l1P3) & (l2P3)) | ((l1P3) & (l3P2C)) | ((l2P3) & (l3P2C));

assign l3P4S = ((0) ^ (l2P4) ^ (l3P3C));
assign l3P4C = ((0) & (l2P4)) | ((0) & (l3P3C)) | ((l2P4) & (l3P3C));

assign l3P5S = ((0) ^ (0) ^ (l3P4C));
assign l3P5C = (0);

assign l4P3 = (a3 & b1);
assign l4P4 = (a2 & b1);
assign l4P5 = (a1 & b1);

assign l5P1S = ((l3P1S) ^ (0) ^ (0));
assign l5P1C = (((l3P1S) & (0)) | ((l3P1S) & (0)));

assign l5P2S = ((l3P2S) ^ (0) ^ (l5P1C));
assign l5P2C = ((l3P2S) & (0)) | ((l3P2S) & (l5P1C)) | ((0) & (l5P1C));

assign l5P3S = ((l3P3S) ^ (l4P3) ^ (l5P2C));
assign l5P3C = ((l3P3S) & (l4P3)) | ((l3P3S) & (l5P2C)) | ((l4P3) & (l5P2C));

assign l5P4S = ((l3P4S) ^ (l4P4) ^ (l5P3C));
assign l5P4C = ((l3P4S) & (l4P4)) | ((l3P4S) & (l5P3C)) | ((l4P4) & (l5P3C));

assign l5P5S = ((l3P5S) ^ (l4P5) ^ (l5P4C));
assign l5P5C = ((l3P5S) & (l4P5)) | ((l3P5S) & (l5P4C)) | ((l4P5) & (l5P4C));

assign l5P6S = ((0) ^ (0) ^ (l5P5C));
assign l5P6C = (0);

endmodule
