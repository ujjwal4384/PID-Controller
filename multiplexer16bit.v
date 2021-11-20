`timescale 1ns / 1ps
//16 2*1 multiplexers to be used to reset a 16 bit register

module multiplexer16bit(in,reset,out);
input [15:0] in;
input reset;
output [15:0] out;
multiplexer m1(in[0],1'b0,reset,out[0]);
multiplexer m2(in[1],1'b0,reset,out[1]);
multiplexer m3(in[2],1'b0,reset,out[2]);
multiplexer m4(in[3],1'b0,reset,out[3]);
multiplexer m5(in[4],1'b0,reset,out[4]);
multiplexer m6(in[5],1'b0,reset,out[5]);
multiplexer m7(in[6],1'b0,reset,out[6]);
multiplexer m8(in[7],1'b0,reset,out[7]);
multiplexer m9(in[8],1'b0,reset,out[8]);
multiplexer m10(in[9],1'b0,reset,out[9]);
multiplexer m11(in[10],1'b0,reset,out[10]);
multiplexer m12(in[11],1'b0,reset,out[11]);
multiplexer m13(in[12],1'b0,reset,out[12]);
multiplexer m14(in[13],1'b0,reset,out[13]);
multiplexer m15(in[14],1'b0,reset,out[14]);
multiplexer m16(in[15],1'b0,reset,out[15]);
endmodule
