// Code does not work
module floating_pt_multiplier(input logic[31:0]a,b, output logic[31:0] y);
  
logic sign_a= a[31];
logic sign_b= b[31];
logic [7:0] exp_a = a[30:23];
logic [7:0] exp_b= b[30:23];
logic [22:0] mant_a= a[22:0];
logic [22:0] mant_b= b[22:0];
logic sign_out,
logic [7:0]exp_out;
logic [22:0]mant_out;
assign sign_out= sign_a ^ sign_b;
assign exp_out=exp_a+exp_b-127;
assign mant_out=(1+mant_a)*(1+mant_b);

endmodule
