module carry_propagate_adder(a,b,sum);
input logic[3:0] a,b;
output logic[3:0] sum;
logic[3:0] p,g,c;
logic[4:0] temp;
assign p=a^b; 
assign g=a&b;
assign c[0]=1'b0;
assign c[1]=g[0]|(p[0]&c[0]);
assign c[2]=g[1]|(p[1]&c[1]);
assign c[3]=g[2]|(p[2]&c[2]);
assign temp=p^c;
assign sum=temp[3:0];
endmodule
