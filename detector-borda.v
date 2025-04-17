module detector_borda (
    input clk,
    input rst,
    input [1:0] entrada,
    output reg [1:0] detector
);
    
    reg [1:0] valor_anterior;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            valor_anterior <= 2'b00;
            detector <= 2'b00;
        end else begin 
            detector <= (~valor_anterior) & entrada;
            valor_anterior <= entrada;
        end
    end

endmodule