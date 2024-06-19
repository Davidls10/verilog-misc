module decoder(output reg [8-1:0] y,
               input e,
               input [3-1:0] x);

    always @* begin
        y = 0;
        if (e == 1) begin
            case(x)
                3'b000 : y = 8'b00000001;
                3'b001 : y = 8'b00000010;
                3'b010 : y = 8'b00000100;
                3'b011 : y = 8'b00001000;
                3'b100 : y = 8'b00010000;
                3'b101 : y = 8'b00100000;
                3'b110 : y = 8'b01000000;
                3'b111 : y = 8'b10000000;
            endcase
        end 
    end
endmodule