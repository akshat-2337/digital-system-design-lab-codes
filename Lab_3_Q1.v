`timescale 1ns/1ns

module Lab_3_Q1(w1,w2,w3,w4,s1,s2,f);
    input w1, w2, w3, w4, s1, s2;
    output reg f;
    always @(w1, w2, w3, w4, s1, s2) begin
        if (s1 == 0 && s2 == 0) begin
            f = w1;
        end

        else if (s1 == 0 && s2 == 1) begin
            f = w2;
        end

        else if (s1 == 1 && s2 == 0) begin
            f = w3;
        end

        else if (s1 == 1 && s2 == 1) begin
            f = w4;
        end
    end
endmodule