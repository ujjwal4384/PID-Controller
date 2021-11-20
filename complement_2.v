`timescale 1ns / 1ps
// 2's complement of 16 bit number
module complement_2(a,complement);
input [15:0] a;
output [15:0] complement;
wire cout;
wire [15:0] ct;
not(ct[0],a[0]);
not(ct[1],a[1]);
not(ct[2],a[2]);
not(ct[3],a[3]);
not(ct[4],a[4]);
not(ct[5],a[5]);
not(ct[6],a[6]);
not(ct[7],a[7]);
not(ct[8],a[8]);
not(ct[9],a[9]);
not(ct[10],a[10]);
not(ct[11],a[11]);
not(ct[12],a[12]);
not(ct[13],a[13]);
not(ct[14],a[14]);
not(ct[15],a[15]);
_16BitAdder add (ct[15:0],16'b0000000000000001,1'b0,complement[15:0],cout);
endmodule
