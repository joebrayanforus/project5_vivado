`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 21:40:59
// Design Name: 
// Module Name: demux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux(
    input EN,
    input [2:0] I,
    output reg [7:0] led
);


always @ (I)begin
    if (EN) begin
    case (I)
        3'd0:    led <= 8'd1;
        3'd1:    led <= 8'd2;
        3'd2:    led <= 8'd4;
        3'd3:    led <= 8'd8;
        3'd4:    led <= 8'd16;
        3'd5:    led <= 8'd32;
        3'd6:    led <= 8'd64;
        3'd7:    led <= 8'd128;
        default: led <= 8'd0;
    endcase
    end
    else begin
        led <= 8'd0;
    end
end


endmodule
