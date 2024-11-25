module orange1(a,b,c,d,y);
input logic a,b,c,d;
output logic y;
assign y=(~a)|((~b)&(~d))|((~c)&d)|(b&d);
endmodule
