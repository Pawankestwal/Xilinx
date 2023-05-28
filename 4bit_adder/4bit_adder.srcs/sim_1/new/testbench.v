`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2023 22:46:47
// Design Name: 
// Module Name: testbench
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


`timescale 1ns / 1ps
module adder_4bit_test;
reg [3:0] a;
reg [3:0] b;

wire [3:0] s;
wire cout;

adder_four_bit testadd(.sum(s),.cout(cout),.a(a),.b(b));
initial 
begin
a=4'b0000;
b=4'b0001;

#30 
a=4'b0001;
b=4'b0001;

#30
a=4'b0010;
b=4'b0001;

#30;
a=4'b0100;
b=4'b0101;
#30;
a=4'b1100;
b=4'b1101;
#30;
$finish;

end
endmodule
