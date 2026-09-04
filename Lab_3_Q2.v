`timescale 1ns/1ns

module Lab_3_Q2_MUX_8_1 (
    input [7:0] W, 
    input [2:0] S, 
    output reg f);

    always @(*) begin
        case (S)
            3'b000: f = W[0];
            3'b001: f = W[1];
            3'b010: f = W[2];
            3'b011: f = W[3];
            3'b100: f = W[4];
            3'b101: f = W[5];
            3'b110: f = W[6];
            3'b111: f = W[7];
            default: f = 1'b0;
        endcase
    end
endmodule


module Lab_3_Q2_MUX_2_1 (
    input w0, w1, 
    input s, 
    output reg f
	);
    always @(*) begin
        case (s)
            1'b0: f = w0;
            1'b1: f = w1;
            default: f = 1'b0;
        endcase
    end
endmodule


module Lab_3_Q2_MUX_16_1 (
    input [7:0] W1, W2,
    input [2:0] S_low,
    input S_high,
    output f);
    wire f1, f2;

    Lab_3_Q2_MUX_8_1 M1 (.W(W1), .S(S_low), .f(f1));
    Lab_3_Q2_MUX_8_1 M2 (.W(W2), .S(S_low), .f(f2));

    Lab_3_Q2_MUX_2_1 M3 (.w0(f1), .w1(f2), .s(S_high), .f(f));
endmodule