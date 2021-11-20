`timescale 1ns / 1ps
// main pid code which uses all other modules

module pid(in,clk,out,reset);
input [15:0] in;
input clk,reset;
output [15:0] out;
wire [15:0] out_temp;
wire [15:0] u_prev;
wire [15:0] e_prev_1;
wire [15:0] e_prev_2;
wire [15:0] e_prev_1_temp;
wire [15:0] e_current_temp;
wire [15:0] e_current;
wire [15:0] complement1;
wire [15:0] y;
wire cout1;
complement_2 comp1(y,complement1);
_16BitAdder add1(16'b0000000010100101,complement1,1'b0,e_current_temp,cout1);  //setPoint = 165
wire [15:0] multiply1,multiply2,multiply3;
multiplier m1(e_current_temp,16'b0000000000000010,multiply1); //k1=2
multiplier m2(e_prev_1_temp,16'b1111111111111110,multiply2);  //k2=(-2)
multiplier m3(e_prev_2,16'b0000000000000001,multiply3);  //k3=1

wire [15:0] tadd2,tadd3; 
wire cout2;
_16BitAdder add2(multiply1,multiply2,1'b0,tadd2,cout2);
wire cout3;
_16BitAdder add3(tadd2,multiply3,1'b0,tadd3,cout3);
wire cout4;
_16BitAdder add4(u_prev,tadd3,1'b0,out_temp,cout4);
// Multiplexers are used to reset the registers
multiplexer16bit ui(e_current_temp,reset,e_current);
multiplexer16bit up(out_temp,reset,out);
multiplexer16bit ux(e_prev_1_temp,reset,e_prev_1);

register16bit Z(e_prev_2,e_prev_1,clk);
register16bit X(e_prev_1_temp,e_current,clk);
register16bit Y(u_prev,out,clk);
register16bit V(y,in,clk);
endmodule