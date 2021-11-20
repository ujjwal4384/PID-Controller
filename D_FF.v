`timescale 1ns / 1ps
//positive edge triggered D flip flop
module D_FF(q,qbar,d,clk);
input d,clk;
output q,qbar;
wire w1,w2,w3,w5;
nand a(w1,d,w5);
nand b(w5,w2,w1,clk);
nand c(w2,clk,w3);
nand l(w3,w1,w2);
nand f(q,qbar,w2);
nand e(qbar,w5,q);
endmodule  