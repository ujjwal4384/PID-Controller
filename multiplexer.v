`timescale 1ns / 1ps
//2*1 multiplexer to be used for reset function
module multiplexer(d0,d1,s,out);
input d0,d1,s;
output out;
wire s_complement;
not(s_complement,s);
wire line1,line2;
and(line1,s,d1);
and(line2,s_complement,d0);
or(out,line1,line2);
endmodule
