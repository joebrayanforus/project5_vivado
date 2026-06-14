`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 23:01:47
// Design Name: 
// Module Name: mux
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


module mux(
    input [3:0] sw, sw1, 
    input btn,
    output reg [3:0] Y
);



always @(sw,sw1,btn) begin
    case (btn)
    1'b0:   Y <= sw;
    1'b1:   Y <= sw1;
    default: Y <= 1'b0;
    endcase
end


endmodule