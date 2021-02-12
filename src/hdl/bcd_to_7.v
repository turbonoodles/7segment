`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2021 12:02:52 PM
// Design Name: 
// Module Name: bcd_to_7
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


module bcd_to_7(
    input wire [3:0] x, // a BCD number
    output reg [6:0] seg, // output segments
    output [7:0] an // anode
    );

assign an = ~0'b1; // active low anode enable

// behavioural 7-segment decoder
always @ ( x )
begin
    case ( x )
        0: seg <= 0'b0000001;
        1: seg <= 0'b1001111;
        2: seg <= 0'b0010010;
        3: seg <= 0'b0000110;
        4: seg <= 0'b1001100;
        5: seg <= 0'b0100100;
        6: seg <= 0'b0100000;
        7: seg <= 0'b0001111;
        8: seg <= 0'b0000000;
        9: seg <= 0'b0000100;
        default: seg <= 0'b1001111; // E for error
    endcase
end

endmodule
