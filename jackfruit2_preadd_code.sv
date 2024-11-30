module prefix_adder32(a,b,sum,cout);
input logic [31:0]a,b;
output logic [31:0] sum;
output logic cout;
wire p,g;
 assign[31:0] p=a^b;
assign g=a&b;
wire[31:0] c;
assign c[0]=g[0];

genvar i;
 generate
  for (i = 1; i < 32; i = i + 1) begin : carry_compute
    assign c[i] = g[i] | (p[i] & c[i-1]);
    end
  endgenerate

assign sum=p^c;
  assign cout=c[31];
endmodule
