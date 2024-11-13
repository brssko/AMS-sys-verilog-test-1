module df2 (input wire A, B, SEL, CLK, RST, 
            output reg Q);

    wire and_out;
    wire or_out;
    wire mux_out;

    assign and_out = A & B;	//3.1.3

    assign or_out = A | B;

    assign mux_out = (SEL) ? or_out : and_out;	//3.3.3

    always @(posedge CLK or posedge RST) begin
        if (RST)
            Q <= 1'b0;
        else
            Q <= mux_out;
    end

endmodule
